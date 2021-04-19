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
	ul1.UL(Me, "body", "ul1").Space("y", 2).Pop
	
	Dim li1 As TWElement
	li1.LI(Me, ul1.id, "li1").Pop
	'
	Dim ul2 As TWElement
	ul2.UL(Me, li1.ID, "ul2").Grid.GridCols(10).H(7).Pop
	'
	Dim wSizes As List
	wSizes.Initialize
	wSizes.Add(50)
	wSizes.Add(100)
	wSizes.Add(200)
	wSizes.Add(300)
	wSizes.Add(400)
	wSizes.Add(500)
	wSizes.Add(600)
	wSizes.Add(700)
	wSizes.Add(800)
	wSizes.Add(900)
	'
	For Each size As String In wSizes
		AddLIColor("ul2", "red", size)
	Next
	'
	Dim ul3 As TWElement
	ul3.UL(Me, li1.ID, "ul3").Grid.GridCols(10).H(7).Pop
	For Each size As String In wSizes
		AddLIColor("ul3", "yellow", size)
	Next
	'
	Dim ul4 As TWElement
	ul4.UL(Me, li1.ID, "ul4").Grid.GridCols(10).H(7).Pop
	For Each size As String In wSizes
		AddLIColor("ul4", "green", size)
	Next
	'
	Dim ul5 As TWElement
	ul5.UL(Me, li1.ID, "ul5").Grid.GridCols(10).H(7).Pop
	For Each size As String In wSizes
		AddLIColor("ul5", "blue", size)
	Next
	'
	Dim ul6 As TWElement
	ul6.UL(Me, li1.ID, "ul6").Grid.GridCols(10).H(7).Pop
	For Each size As String In wSizes
		AddLIColor("ul6", "purple", size)
	Next
End Sub

Sub AddLIColor(pID As String, color As String, wsize As Int)
	Dim li As TWElement
	li.LI(Me, pID, $"${pID}li${wsize}"$)
	li.BackGroundIntensity(color, wsize)
	li.SetText($"${color}-${wsize}"$)
	li.TextCenter
	li.Pop
End Sub