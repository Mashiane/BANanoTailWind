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
	'get the body and apply
	Dim body As TWElement
	body.Div(Me, "", "body").Empty.TextColorIntensity("gray", 700).Antialiased.Pop
	'
	BuildNavBar
	
	BuildMain
End Sub

Sub BuildMain
	Dim main1 As TWElement
	main1.Main1(Me, "body", "main1").Pop
	'
	Dim section1 As TWElement
	section1.Section(Me, main1.ID, "section1")
	section1.Absolute
	section1.W("full")
	section1.H("full").Pop
	'
	Dim sdiv As TWElement
	sdiv.Div(Me, section1.ID, "sdiv1")
	sdiv.Absolute
	sdiv.Top(0)
	sdiv.W("full")
	sdiv.H("full")
	sdiv.BackGroundIntensity("gray", 900)
	sdiv.BackGroundImage("./assets/register_bg_2.png")
	sdiv.BackgroundSize("100%")
	sdiv.BackgroundRepeat("no-repeat").Pop
End Sub

Sub BuildNavBar
	Dim nav As TWElement
	nav.Nav(Me, "body", "nav")
	nav.Top(0)
	nav.Absolute
	nav.Z(50)
	nav.W("full")
	nav.Flex("")
	nav.Flex("wrap")
	nav.ItemsCenter
	nav.Justify("between")
	nav.PX(2)
	nav.PY(3).Pop
	'
	Dim div1 As TWElement
	div1.Div(Me, nav.ID, "div1")
	div1.Container
	div1.PX(4)
	div1.MX("auto")
	div1.Flex("")
	div1.Flex("wrap")
	div1.ItemsCenter
	div1.Justify("between").Pop
	'
	Dim div2 As TWElement
	div2.Div(Me, div1.ID, "div2")
	div2.W("full")
	div2.Relative
	div2.Flex("")
	div2.Justify("between")
	div2.WBP(div2.BP_LG, "auto")
	div2.StaticBP(div2.BP_LG)
	div2.BlockBP(div2.BP_LG)
	div2.JustifyBP(div2.BP_LG, "start").Pop
	
	Dim a1 As TWElement
	a1.Anchor(Me, div2.ID, "a1", "TailWind Starter Kit", "https://www.creative-tim.com/learning-lab/tailwind-starter-kit#/presentation")
	a1.TextBP(a1.BP_SM)
	a1.Font("bold")
	a1.Leading("relaxed")
	a1.Inline("block")
	a1.MR(4)
	a1.PY(2)
	a1.WhiteSpace("nowrap")
	a1.UpperCase
	a1.TextColor("white").Pop
	
	'add a button
	Dim btn1 As TWElement
	btn1.Button(Me, div2.ID, "btn1")
	btn1.Cursor("pointer")
	btn1.TextBP(btn1.BP_XL)
	btn1.Leading("none")
	btn1.PX(3)
	btn1.PY(1)
	btn1.Border("")
	btn1.Border("solid")
	btn1.Border("transparent")
	btn1.Rounded("")
	btn1.BackGround("transparent")
	btn1.Block
	btn1.HiddenBP(btn1.BP_LG)
	btn1.Outline("none")
	btn1.FocusOutlineNone.Pop
	'
	Dim icon1 As TWElement
	icon1.Icon(Me, btn1.ID, "icon1", "fas fa-bars")
	icon1.TextColor("white").Pop
	
	Dim div3 As TWElement
	div3.Div(Me, div1.ID, "example-collapse-navbar")
	div3.FlexBP(div3.BP_LG, "")
	div3.Flex("grow")
	div3.ItemsCenter
	div3.BackGround("white")
	div3.BackGroundBP(div3.BP_LG, "transparent")
	div3.ShadowBP(div3.BP_LG, "none")
	div3.Hidden.Pop
	'
	Dim ul1 As TWElement
	ul1.UL(Me, div3.ID, "ul1")
	ul1.Flex("")
	ul1.Flex("col")
	ul1.FlexBP(ul1.BP_LG, "row")
	ul1.ListType("none")
	ul1.MR("auto").Pop
	'
	'****
	Dim ul2 As TWElement
	ul2.UL(Me, div3.ID, "ul2")
	ul2.Flex("")
	ul2.Flex("col")
	ul2.FlexBP(ul2.BP_LG, "row")
	ul2.ListType("none")
	ul2.MLBP(ul2.BP_LG, "auto").Pop
	'
	Dim ul1li0 As TWElement
	ul1li0.LI(Me, ul2.ID, "ul1li0")
	ul1li0.Flex("")
	ul1li0.ItemsCenter.Pop
	'
	AnchorIconSpan(ul1li0.ID, $"${ul1li0.id}item"$, _
	"https://www.creative-tim.com/learning-lab/tailwind-starter-kit#/login", "far fa-file-alt", "Docs")
	
	'
	Dim ul2li1 As TWElement
	ul2li1.LI(Me, ul2.id, "ul2li1")
	ul2li1.Flex("")
	ul2li1.ItemsCenter.Pop
	'
	AnchorIconSpan(ul2li1.ID, $"${ul2li1.id}item"$, "#pablo", "fab fa-facebook", "Share")
	'
	Dim ul2li2 As TWElement
	ul2li2.LI(Me, ul2.id, "ul2li2")
	ul2li2.Flex("")
	ul2li2.ItemsCenter.Pop
	'
	AnchorIconSpan(ul2li2.ID, $"${ul2li2.id}item"$, "#pablo", "fab fa-twitter", "Tweet")
	'
	Dim ul2li3 As TWElement
	ul2li3.LI(Me, ul2.id, "ul2li3")
	ul2li3.Flex("")
	ul2li3.ItemsCenter.Pop
	'
	AnchorIconSpan(ul2li3.ID, $"${ul2li3.id}item"$, "#pablo", "fab fa-github", "Star")
	'
	Dim ul2li4 As TWElement
	ul2li4.LI(Me, ul2.id, "ul2li4")
	ul2li4.Flex("")
	ul2li4.ItemsCenter.Pop
	'
	Dim btndownload As TWElement
	btndownload.Button(Me, ul2li4.ID, "btndownload")
	btndownload.BackGround("white")
	btndownload.TextColorIntensity("gray", 800)
	btndownload.ActiveBackgroundIntensity("gray", 100)
	btndownload.TextBP(btndownload.BP_XS)
	btndownload.Font("bold")
	btndownload.UpperCase
	btndownload.PX(4)
	btndownload.PY(2)
	btndownload.Rounded("")
	btndownload.Shadow("")
	btndownload.HoverShadowBP(btndownload.BP_MD)
	btndownload.OutlineNone
	btndownload.FocusOutlineNone
	btndownload.MRBP(btndownload.bp_lg, 1)
	btndownload.MBBP(btndownload.BP_LG, 0)
	btndownload.ML(3)
	btndownload.MB(3)
	btndownload.SetTransition(Array("all", "0.15s", "ease", "0s")).Pop
	'
	Dim di As TWElement
	di.Icon(Me, btndownload.ID, "di", "fas fa-arrow-alt-circle-down").Pop
	'
	Dim ds As TWElement
	ds.Span(Me, btndownload.ID, "ds", " Download").Pop
End Sub


Sub AnchorIconSpan(parentID As String, elID As String, href As String, iconName As String, spanText As String)
	Dim a As TWElement
	a.Anchor(Me, parentID, elID, "", href)
	a.TextColorBP("lg", "white")
	a.HoverTextColorIntensityBP("lg", "gray", 300)
	a.TextColorIntensity("gray", 800)
	a.PX(3)
	a.PY(4)
	a.PYBP("lg", 2)
	a.Flex("")
	a.ItemsCenter
	a.TextBP("xs")
	a.UpperCase
	a.Font("bold")
	a.pop
	'
	Dim i As TWElement
	i.Icon(Me, elID, $"${elID}icon"$, iconName)
	i.TextColorIntensityBP("lg", "gray", 300)
	i.TextColorIntensity("gray", 500)
	i.TextBP("lg")
	i.Leading("lg")
	i.pop
	'
	Dim s As TWElement
	s.Span(Me, elID, $"${elID}span"$, spanText)
	s.HiddenBP("lg")
	s.Inline("block")
	s.ML(2)
	s.pop
End Sub

Sub btndownload_click(e As BANanoEvent)
	Log("btndownload_click")
End Sub

Sub btn1_click(e As BANanoEvent)
	Log("btn1_click")
	toggleNavbar("example-collapse-navbar")
End Sub

Sub toggleNavbar(collapseID As String)
	collapseID = collapseID.tolowercase
	Dim el As BANanoElement = BANano.GetElement($"#${collapseID}"$)
	el.ToggleClass("hidden")
	el.ToggleClass("block")
End Sub