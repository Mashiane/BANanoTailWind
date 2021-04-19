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
	body.Div(Me, "", "body")
	body.Empty
	'
	Dim a1 As TWElement
	a1.Alert(Me, "body", "a1", "fas fa-bell", "Mashy Alert 1", a1.COLOR_INDIGO, a1.INTENSITY_500)
	'
	
End Sub


Sub a1close_click(e As BANanoEvent)
	Log("a1close_click")
End Sub
