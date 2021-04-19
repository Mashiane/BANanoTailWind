B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.9
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private BANano As BANano
End Sub


Sub Initialize
	Dim body As TWElement
	body.Div(Me, "", "body").Empty
	
	Dim ul1 As TWElement
	ul1.UL(Me, "body", "ul1").Space("y", 4).Pop
	'
	Dim wSizes As List
	wSizes.Initialize 
	wSizes.Add(64)
	wSizes.Add(56)
	wSizes.Add(48)
	wSizes.Add(40)
	wSizes.Add(32)
	wSizes.Add(24)
	wSizes.Add(20)
	wSizes.Add(16)
	wSizes.Add(12)
	wSizes.Add(10)
	'
	For Each size As String In wSizes
		AddLI(size)
	Next
End Sub

Sub AddLI(wsize As Int)
	Dim li As TWElement
	li.LI(Me, "ul1", $"li${wsize}"$).Pop
	'
	Dim divx As TWElement
	divx.Div(Me, li.ID, $"div${wsize}"$)
	divx.W(wsize)
	divx.H(3)
	divx.BGGradientToBR("fuchsia-500", "purple-600")
	divx.SetText($"w-${wsize}"$).Pop
End Sub