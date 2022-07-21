
Sub CATMain()

Dim editor1 As Editor
Set editor1 = CATIA.ActiveEditor

Dim part As Part
Set part = editor1.ActiveObject

Dim hhd1 As HybridBody
Set hhd1 = part.FindObjectByName("ptsets")

Dim bdt As Body
Set bdt = part.FindObjectByName("bodyt")

Dim factory As InstanceFactory
Set factory = part.GetCustomerFactory("InstanceFactory")

Dim pt1 As Object
Dim Instance As ShapeInstance
Dim param1 As Parameter

If hhd1.HybridShapes.Count > 0 Then
	For i = 1 To hhd1.HybridShapes.Count

		part.InWorkObject = bdt
		factory.BeginInstanceFactory "udfc1", "3sh-44525640-00009194", "A"
		factory.BeginInstantiate

		Set pt1 = hhd1.HybridShapes.Item(i)

		factory.PutInputData "pt1", pt1
		Set param1 = factory.GetParameter("R")
		param1.ValuateFromString ("2000mm")

		Set Instance = factory.Instantiate
		factory.EndInstantiate
		factory.EndInstanceFactory
	Next
End If
part.InWorkObject = hhd1
part.Update

End Sub
