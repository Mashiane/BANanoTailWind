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
'	Dim ba1 As TWElement
'	ba1.Button(Me, "body", "ba1")
'	ba1.BackGroundIntensity(ba1.COLOR_EMERALD, 500).TextColor("white")
'	ba1.ActiveBackGroundIntensity("emerald", 600).FontBold.UpperCase
'	ba1.TextSM.PX(6).PY(3).Rounded("").Shadow("").HoverShadowBP("lg")
'	ba1.OutlineNone.FocusOutlineNone.MR(1).MB(1).EaseLinear.TransitionAll.Duration(150)
'	ba1.SetText("Regular")
'	'
'	Dim ba2 As TWElement
'	ba2.ButtonIconText(Me, "body", "ba2", "fas fa-heart", "Small")
'	ba2.BackGroundIntensity(ba2.COLOR_PINK, 500).TextColor("white").ActiveBackGroundIntensity("pink", 600)
'	ba2.FontBold.UpperCase.TextSM.PX(6).PY(3).Rounded("").Shadow("").HoverShadowBP("lg")
'	ba2.OutlineNone.FocusOutlineNone.MR(1).MB(1).EaseLinear.TransitionAll.Duration(150)
'	ba2.SetText(" Regular")
	
	
End Sub	

Sub ba1_click(e As BANanoEvent)
	Log("ba1_click")
End Sub