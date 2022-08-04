import quaternion
import math
import numpy as np
import vtk
from vtk.qt.QVTKRenderWindowInteractor import QVTKRenderWindowInteractor


def normalize(p):
    return p / np.linalg.norm(p)


class FDAI(QVTKRenderWindowInteractor):
    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        self.size = 400
        self.setMinimumSize(self.size, self.size)

        self.ren = vtk.vtkRenderer()
        self.renwin = self.GetRenderWindow()
        self.renwin.AddRenderer(self.ren)

        self.cam = self.ren.GetActiveCamera()
        self.cam.ParallelProjectionOn()
        self.cam.SetPosition((-1, 0, 0))
        self.cam.SetViewUp((0, -1, 0))

        self.build_scene()
        self.Initialize()
        self.Start()

    def build_scene(self):
        # Generate a sphere polydata
        sphere = vtk.vtkSphereSource()
        sphere.SetThetaResolution(720)
        sphere.SetPhiResolution(90)

        # Read the image data from a file
        reader = vtk.vtkJPEGReader()
        reader.SetFileName("fdai_texture.jpg")

        # Create texture object
        texture = vtk.vtkTexture()
        texture.SetInputConnection(reader.GetOutputPort())

        # Map texture coordinates
        map_to_sphere = vtk.vtkTextureMapToSphere()
        map_to_sphere.SetInputConnection(sphere.GetOutputPort())
        map_to_sphere.PreventSeamOff()

        # Create mapper and set the mapped texture as input
        mapper = vtk.vtkPolyDataMapper()
        mapper.SetInputConnection(map_to_sphere.GetOutputPort())

        # Create actor and set the mapper and the texture
        self.actor = vtk.vtkActor()
        self.actor.SetMapper(mapper)
        self.actor.SetTexture(texture)
        #self.ren.AddActor(self.actor)

        # Create front cover
        #
        # front = vtk.vtkPlaneSource()
        # front.SetCenter(-0.35, 0, 0)
        # front.SetNormal(-1, 0, 0)
        # front_mapper = vtk.vtkPolyDataMapper()
        # front_mapper.SetInputConnection(front.GetOutputPort())
        # front_actor = vtk.vtkActor()
        # front_actor.SetMapper(front_mapper)
        # self.ren.AddActor(front_actor)

        self.create_plane()

    def create_plane(self):
        # Setup points
        pts = [
            (-0.5, -0.5),
            (-0.5, 0.5),
            (0.5, 0.5),
            (0.5, 0),
            (0, 0),
            (0, -0.5)
        ]
        pts = [
            [-0.5, -0.5],
            [-0.1, 0.5],
            [0.1, 0.5],
            [0.5, -0.5],
            [0, -0.4],
            [-0.5, -0.5]

        ]

        offset = -0.5
        points = vtk.vtkPoints()
        for p in pts:
            points.InsertNextPoint(offset, p[0], p[1])

        # Create the polygon
        polygon = vtk.vtkPolygon()
        #polygon.GetPointIds().SetNumberOfIds(len(pts))
        #for i in range(len(pts)):
        #    polygon.GetPointIds().SetId(i, i)

        # Add the polygon to a list of polygons
        polygons = vtk.vtkCellArray()
        polygons.InsertNextCell(polygon)

        # Create a PolyData
        polygonPolyData = vtk.vtkPolyData()
        polygonPolyData.SetPoints(points)
        #polygonPolyData.SetPolys(polygons)

        delaunay = vtk.vtkDelaunay2D()
        delaunay.SetInputData(polygonPolyData)

        # Set up texture coordinates
        textureCoordinates = vtk.vtkFloatArray()
        textureCoordinates.SetNumberOfComponents(2)
        textureCoordinates.SetName("TextureCoordinates")

        for p in pts:
            textureCoordinates.InsertNextTuple((p[0]+0.5, p[1]+0.5))

        #polygonPolyData.GetPointData().SetTCoords(textureCoordinates)

        # Read the image data from a file
        reader = vtk.vtkJPEGReader()
        reader.SetFileName("fdai_scale1.jpg")

        texture = vtk.vtkTexture()
        texture.SetInputConnection(reader.GetOutputPort())

        # Create a mapper and actor
        mapper = vtk.vtkPolyDataMapper()
        mapper.SetInputConnection(delaunay.GetOutputPort())

        actor = vtk.vtkActor()
        actor.SetMapper(mapper)
        actor.GetProperty().EdgeVisibilityOn()
        #actor.GetProperty().SetEdgeColor(colors.GetColor3d("Peacock"))
        actor.GetProperty().SetInterpolationToFlat()
        #actor.SetTexture(texture)

        self.ren.AddActor(actor)

    def setOrientation(self, roll, yaw, pitch):
        """Should take IMU X, Y and Z angles"""
        print(f"Roll: {roll}; Yaw: {yaw}; Pitch: {pitch}")

        q = gimbal(roll, yaw, pitch)
        v = quaternion.as_rotation_vector(q)
        angle = math.degrees(np.linalg.norm(v))

        self.actor.SetOrientation(0, 0, 0)
        self.actor.RotateWXYZ(angle, v[0], v[1], v[2])

        self.renwin.Render()


def gimbal(oga, mga, iga):
    oga = math.radians(oga)
    mga = math.radians(mga)
    iga = math.radians(iga)

    # Start with navigational base axes
    nbx = -1, 0, 0
    nby = 0, 1, 0
    nbz = 0, 0, -1
    nb_axes = np.array([nbx, nby, nbz])

    # Indicate the gimbal axes by index into the navigational base axes
    igi = 0
    mgi = 1
    ogi = 2

    current_axes = nb_axes
    # Rotate around outer gimbal axis (=nbx)
    q1 = quaternion.from_rotation_vector(oga * current_axes[igi, :])
    current_axes = quaternion.rotate_vectors(q1, current_axes)

    # Rotate around middle gimbal axis (rotated nbz = og_axes[2])
    q2 = quaternion.from_rotation_vector(mga * current_axes[mgi, :])
    current_axes = quaternion.rotate_vectors(q2, current_axes)

    # Rotate around inner gimbal axis (twice rotated nby mg_axes[1])
    q3 = quaternion.from_rotation_vector(iga * current_axes[ogi, :])
    current_axes = quaternion.rotate_vectors(q3, current_axes)

    print("Current axes:")
    print(current_axes[0, :])
    print(current_axes[1, :])
    print(current_axes[2, :])

    total_q = q3 * q2 * q1
    return total_q



