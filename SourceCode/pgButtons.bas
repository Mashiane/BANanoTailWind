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
	Dim b1 As TWElement
	b1 = b1.Button(Me, "body", "b1")
	b1.BackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_500)
	b1.TextColor(b1.COLOR_WHITE)
	b1.ActiveBackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_600)
	b1.Font("bold")
	b1.UpperCase
	b1.TextBP("xs")
	b1.PX(4)
	b1.PY(2)
	b1.Rounded("")
	b1.Shadow("")
	b1.HoverShadowBP("md")
	b1.OutlineNone
	b1.FocusOutlineNone
	b1.MR(1)
	b1.MB(1)
	b1.EaseLinear
	b1.TransitionAll
	b1.Duration(150)
	b1.SetText("Small")
	
	Dim bitxt As TWElement
	bitxt = bitxt.ButtonIconText(Me, "body", "bitxt", "fas fa-heart", " Small")
	bitxt.BackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_500)
	bitxt.TextColor(b1.COLOR_WHITE)
	bitxt.ActiveBackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_600)
	bitxt.Font("bold")
	bitxt.UpperCase
	bitxt.TextBP("xs")
	bitxt.PX(4)
	bitxt.PY(2)
	bitxt.Rounded("")
	bitxt.Shadow("")
	bitxt.HoverShadowBP("md")
	bitxt.OutlineNone
	bitxt.FocusOutlineNone
	bitxt.MR(1)
	bitxt.MB(1)
	bitxt.EaseLinear
	bitxt.TransitionAll
	bitxt.Duration(150).Pop
	'
	Dim bi As TWElement
	bi = bi.ButtonIcon(Me, "body", "bi", "fas fa-heart")
	bi.BackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_500)
	bi.TextColor(b1.COLOR_WHITE)
	bi.ActiveBackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_600)
	bi.Font("bold")
	bi.UpperCase
	bi.TextBP("xs")
	bi.PX(4)
	bi.PY(2)
	bi.Rounded("")
	bi.Shadow("")
	bi.HoverShadowBP("md")
	bi.OutlineNone
	bi.FocusOutlineNone
	bi.MR(1)
	bi.MB(1)
	bi.EaseLinear
	bi.TransitionAll
	bi.Duration(150).Pop
	'
	Dim br As TWElement
	br = br.Button(Me, "body", "br")
	br.SetText("Rounded")
	br.BackGroundIntensity("purple",500)
	br.TextColor("white")
	br.ActiveBackGroundIntensity("purple", 600)
	br.Font("bold")
	br.uppercase
	br.TextBP("xs")
	br.PX(4)
	br.PY(2)
	br.Rounded("full")
	br.Shadow("")
	br.HoverShadowBP("md")
	br.outlinenone
	br.FocusOutlineNone
	br.MR(1)
	br.MB(1)
	br.EaseLinear
	br.TransitionAll
	br.Duration(150).Pop
	'
	Dim bic As TWElement
	bic = bic.ButtonIconText(Me, "body", "bic", "fas fa-heart", " Small")
	bic.BackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_500)
	bic.TextColor(b1.COLOR_WHITE)
	bic.ActiveBackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_600)
	bic.Font("bold")
	bic.UpperCase
	bic.TextBP("xs")
	bic.PX(4)
	bic.PY(2)
	bic.Rounded("full")
	bic.Shadow("")
	bic.HoverShadowBP("md")
	bic.OutlineNone
	bic.FocusOutlineNone
	bic.MR(1)
	bic.MB(1)
	bic.EaseLinear
	bic.TransitionAll
	bic.Duration(150).Pop
	'
	Dim bix As TWElement
	bix = bix.ButtonIcon(Me, "body", "bix", "fas fa-heart")
	bix.BackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_500)
	bix.TextColor(b1.COLOR_WHITE)
	bix.ActiveBackGroundIntensity(b1.COLOR_PINK, b1.INTENSITY_600)
	bix.Font("bold")
	bix.UpperCase
	bix.TextBP("xs")
	bix.PX(4)
	bix.PY(2)
	bix.Rounded("full")
	bix.Shadow("")
	bix.HoverShadowBP("md")
	bix.OutlineNone
	bix.FocusOutlineNone
	bix.MR(1)
	bix.MB(1)
	bix.EaseLinear
	bix.TransitionAll
	bix.Duration(150).Pop
	
End Sub	


Sub bitxt_click(e As BANanoEvent)
	Log("bitxt_click")
End Sub


Sub b1_click(e As BANanoEvent)
	Log("b1_click")
End Sub