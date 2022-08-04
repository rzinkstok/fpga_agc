import vtk

colors = vtk.vtkNamedColors()
sphereSource1 = vtk.vtkSphereSource()
sphereSource1.SetCenter(0.25, 0, 0)
sphereSource1.SetPhiResolution(21)
sphereSource1.SetThetaResolution(21)
sphereSource1.Update()
input1 = sphereSource1.GetOutput()

sphereSource2 = vtk.vtkSphereSource()
sphereSource2.Update()
input2 = sphereSource2.GetOutput()

input1Mapper = vtk.vtkPolyDataMapper()
input1Mapper.SetInputData(input1)
input1Mapper.ScalarVisibilityOff()
input1Actor = vtk.vtkActor()
input1Actor.SetMapper(input1Mapper)
input1Actor.GetProperty().SetDiffuseColor(colors.GetColor3d('Tomato'))
input1Actor.GetProperty().SetSpecular(0.6)
input1Actor.GetProperty().SetSpecularPower(20)
input1Actor.SetPosition(input1.GetBounds()[1] - input1.GetBounds()[0], 0, 0)

input2Mapper = vtk.vtkPolyDataMapper()
input2Mapper.SetInputData(input2)
input2Mapper.ScalarVisibilityOff()
input2Actor = vtk.vtkActor()
input2Actor.SetMapper(input2Mapper)
input2Actor.GetProperty().SetDiffuseColor(colors.GetColor3d('Mint'))
input2Actor.GetProperty().SetSpecular(0.6)
input2Actor.GetProperty().SetSpecularPower(20)
input2Actor.SetPosition(-(input1.GetBounds()[1] - input1.GetBounds()[0]), 0, 0)

booleanOperation = vtk.vtkBooleanOperationPolyDataFilter()
booleanOperation.SetOperationToDifference()

booleanOperation.SetInputData(0, input1)
booleanOperation.SetInputData(1, input2)

booleanOperationMapper = vtk.vtkPolyDataMapper()
booleanOperationMapper.SetInputConnection(booleanOperation.GetOutputPort())
booleanOperationMapper.ScalarVisibilityOff()

booleanOperationActor = vtk.vtkActor()
booleanOperationActor.SetMapper(booleanOperationMapper)
booleanOperationActor.GetProperty().SetDiffuseColor(colors.GetColor3d('Banana'))
booleanOperationActor.GetProperty().SetSpecular(0.6)
booleanOperationActor.GetProperty().SetSpecularPower(20)

renderer = vtk.vtkRenderer()
renderer.AddViewProp(input1Actor)
renderer.AddViewProp(input2Actor)
renderer.AddViewProp(booleanOperationActor)
renderer.SetBackground(colors.GetColor3d('Silver'))
renderWindow = vtk.vtkRenderWindow()
renderWindow.AddRenderer(renderer)
renderWindow.SetSize(640, 480)
renderWindow.SetWindowName('BooleanOperationPolyDataFilter')

viewUp = [0.0, 0.0, 1.0]
position = [0.0, -1.0, 0.0]
renderer.GetActiveCamera().SetViewUp(viewUp)
renderer.GetActiveCamera().SetPosition(position)
renderer.ResetCamera()
renderer.GetActiveCamera().Dolly(1.4)
renderer.ResetCameraClippingRange()

renWinInteractor = vtk.vtkRenderWindowInteractor()
renWinInteractor.SetRenderWindow(renderWindow)

renderWindow.Render()
renWinInteractor.Start()
