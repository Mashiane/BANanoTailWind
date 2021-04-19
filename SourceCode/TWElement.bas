B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Private BANano As BANano
	Private mElement As BANanoElement
	Private mCallBack As Object
	'break-points
	Public const BP_XS As String = "xs"
	Public const BP_MD As String = "md"
	Public const BP_LG As String = "lg"
	Public const BP_SM As String = "sm"
	Public const BP_XL As String = "xl"
	'
	Public const COLOR_BLUEGRAY As String = "blueGray"
	Public const COLOR_RED As String = "red"
	Public const COLOR_ORANGE As String = "orange"
	Public const COLOR_AMBER As String = "amber"
	Public const COLOR_EMERALD As String = "emerald"
	Public const COLOR_TEAL As String = "teal"
	Public const COLOR_LIGHTBLUE As String = "lightBlue"
	Public const COLOR_INDIGO As String = "indigo"
	Public const COLOR_PURPLE As String = "purple"
	Public const COLOR_PINK As String = "pink"
	Public const COLOR_WHITE As String = "white"
	Public const COLOR_TRANSPARENT As String = "transparent"
	Public const COLOR_GRAY As String = "gray"
	Public const COLOR_FUCHSIA As String = "fuchsia"
	'
	Public const INTENSITY_100 As Int = 100
	Public const INTENSITY_200 As Int = 200
	Public const INTENSITY_300 As Int = 300
	Public const INTENSITY_400 As Int = 400
	Public const INTENSITY_500 As Int = 500
	Public const INTENSITY_600 As Int = 600
	Public const INTENSITY_700 As Int = 700
	Public const INTENSITY_800 As Int = 800
	Public const INTENSITY_900 As Int = 900
	Private sID As String
	Private pID As String
	Private Exists As Boolean
End Sub

Sub Empty As TWElement
	mElement.Empty
	Return Me
End Sub

Public Sub Initialize(Module As Object, parentID As String, elID As String, eTag As String) As TWElement
	mCallBack = Module
	parentID = parentID.tolowercase
	eTag = eTag.tolowercase
	elID = elID.tolowercase
	sID = elID
	pID = CleanID(parentID)
	'does the element exist, if so get it
	Exists = BANano.Exists(CleanID(elID))
	If Exists Then
		mElement = BANano.GetElement(CleanID(elID))
	Else
		'create a non-attached element
		mElement = BANano.CreateElement(eTag)
		mElement.SetAttr("id", elID)
	End If
	Return Me
End Sub

Sub Get(elID As String) As TWElement
	elID = elID.tolowercase
	sID = elID
	Exists = BANano.Exists(CleanID(elID))
	'does the element exist, if so get it
	If Exists Then
		mElement = BANano.GetElement(CleanID(elID))
	Else
		mElement = Null
	End If
	Return Me
End Sub

private Sub CreateElement(Module As Object, parentID As String, elID As String, eTag As String) As TWElement
	mCallBack = Module
	parentID = parentID.tolowercase
	eTag = eTag.tolowercase
	elID = elID.tolowercase
	sID = elID
	pID = CleanID(parentID)
	Exists = BANano.Exists(CleanID(elID))
	'does the element exist, if so get it
	If Exists Then
		mElement.Initialize($"#${elID}"$)
	Else
		'create a non-attached element
		'mElement = BANano.CreateElement(eTag)
		'mElement.SetAttr("id", elID)
		BANano.GetElement(CleanID(pID)).Append($"<${eTag} id="${elID}"></${eTag}>"$)
		mElement.Initialize($"#${elID}"$)
	End If
	OnClick
	Return Me
End Sub

Sub Pop
'	Exists = BANano.Exists(CleanID(sID))
'	If Exists = False Then
'		Dim pE As BANanoElement = BANano.GetElement(CleanID(pID))
'		pE.Append(mElement)
'	End If
'	OnClick
End Sub

Sub Alert(Module As Object, parentID As String, elID As String, elIcon As String, elText As Int, elBGColor As String, elBGIntensity As Int) As TWElement
	Dim elx As TWElement = Div(Module, parentID, elID)
	elx.TextColor(COLOR_WHITE)
	elx.PX(6).PY(6)
	elx.Border("0")
	elx.Rounded("")
	elx.Relative
	elx.MB(4)
	elx.BackGroundIntensity(elBGColor, elBGIntensity)
	elx.pop
	'add the icon
	Dim aSpan As TWElement = Span(Module, elID, $"${elID}span"$, "")
	aSpan.TextBP("xl")
	aSpan.Inline("block")
	aSpan.MR(5)
	aSpan.Align("middle")
	aSpan.pop
	'
	Dim icn As TWElement = Icon(Module, $"${elID}span"$, $"${elID}icon"$, elIcon)
	icn.pop
	'add text message
	Dim bSpan As TWElement = Span(Module, elID, $"${elID}span1"$, elText)
	bSpan.pop
	'add the closing button
	Dim btnClose As TWElement = Button(Module, elID, $"${elID}close"$)
	btnClose.Absolute
	btnClose.BackGround(COLOR_TRANSPARENT)
	btnClose.TextBP("2xl")
	btnClose.Font("semibold")
	btnClose.Leading("none")
	btnClose.Right("0")
	btnClose.Top("0")
	btnClose.MT(4)
	btnClose.MR(6)
	btnClose.OutlineNone
	btnClose.FocusOutlineNone
	btnClose.Pop
	'add the x
	Dim btnX As TWElement = Span(Module, btnClose.ID, $"${elID}closex"$, "×")
	btnX.Pop
	Return elx
End Sub

Sub ButtonIconText(Module As Object, parentID As String, elID As String, elIcon As String, elText As String) As TWElement
	Button(Module, parentID, elID)
	Icon(Module, elID, $"${elID}icon"$, elIcon)
	Span(Module, elID, $"${elID}span"$, elText)
	Dim btn As TWElement = Get(elID)
	Return btn
End Sub

Sub ButtonIcon(Module As Object, parentID As String, elID As String, elIcon As String) As TWElement
	Button(Module, parentID, elID)
	Icon(Module, elID, $"${elID}icon"$, elIcon)
	Dim btn As TWElement = Get(elID)
	Return btn
End Sub

Sub Image(Module As Object, parentID As String, elID As String, elSrc As String, elAlt As String, elHeight As String, elWidth As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "img")
	elx.SetAttr("src", elSrc)
	elx.SetAttr("alt", elAlt)
	elx.SetAttr("width", elWidth)
	elx.SetAttr("height", elHeight)
	Return elx
End Sub


Sub Section(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "section")
	Return elx
End Sub

Sub Main1(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "main")
	Return elx
End Sub


Sub Div(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "div")
	Return elx
End Sub

Sub BlockQuote(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "blockquote")
	Return elx
End Sub

Sub FigCaption(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "figcaption")
	Return elx
End Sub


Sub Span(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "span")
	If eText <> "" Then
		elx.SetText(eText)
	End If
	Return elx
End Sub

Sub Paragraph(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "p")
	If eText <> "" Then
		elx.SetText(eText)
	End If
	Return elx
End Sub

Sub H1(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "h1")
	If eText <> "" Then
		elx.SetText(eText)
	End If
	Return elx
End Sub

Sub H2(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "h2")
	If eText <> "" Then
		elx.SetText(eText)
	End If
	Return elx
End Sub

Sub H3(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "h3")
	If eText <> "" Then
		elx.SetText(eText)
	End If
	Return elx
End Sub


Sub H4(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "h4")
	If eText <> "" Then
		elx.SetText(eText)
	End If
	Return elx
End Sub


Sub H5(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "h5")
	If eText <> "" Then
		elx.SetText(eText)
	End If
	Return elx
End Sub


Sub H6(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "h6")
	If eText <> "" Then
		elx.SetText(eText)
	End If
	Return elx
End Sub

Sub Anchor(Module As Object, parentID As String, elID As String, eText As String, eHref As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "a")
	If eHref <> "" Then 
		elx.SetHREF(eHref)
	End If
	If eText <> "" Then 
		elx.SetText(eText)
	End If
	Return elx
End Sub

Sub LI(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "li")
	Return elx
End Sub

Sub Small(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "small")
	elx.SetText(eText)
	Return elx
End Sub


Sub Footer(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "footer")
	Return elx
End Sub

Sub Button(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "button")
	elx.SetType("button")
	elx.Pop
	Return elx
End Sub

Sub UL(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "ul")
	Return elx
End Sub

Sub Icon(Module As Object, parentID As String, elID As String, eIconName As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "i")
	elx.IconName(eIconName)
	elx.Pop
	Return elx
End Sub

Sub AddIcon(eIconName As String) As TWElement
	Dim elx As TWElement = CreateElement(mCallBack, sID, $"${sID}icon"$, "i")
	elx.IconName(eIconName)
	elx.Pop
	Return Me
End Sub

Sub AddText(eText As String) As TWElement
	Dim elx As TWElement = CreateElement(mCallBack, sID, $"${sID}span"$, "span")
	elx.SetText(eText)
	elx.Pop
	Return Me
End Sub


Sub Nav(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "nav")
	Return elx
End Sub

Sub Figure(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "figure")
	Return elx
End Sub

private Sub OnClick
	Dim s As String = $"${sID}_click"$
	If SubExists(mCallBack, s) Then
		mElement.On("click", mCallBack, s)
	End If
End Sub

Sub Toggle(className As String)
	mElement.ToggleClass(className)
End Sub

Sub TextColorBP(bp As String, color As String) As TWElement
	Dim s As String = $"${bp}:text-${color}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub TextColorIntensityBP(bp As String, color As String, intensity As Int) As TWElement
	Dim s As String = $"${bp}:text-${color}-${intensity}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub getID As String
	Return sID
End Sub

Sub UpperCase As TWElement
	mElement.AddClass("uppercase")
	Return Me
End Sub

Sub Align(s As String) As TWElement
	mElement.AddClass($"align-${s}"$)
	Return Me
End Sub

Sub WhiteSpace(s As String) As TWElement
	mElement.AddClass($"whitespace-${s}"$)
	Return Me
End Sub

Sub MR(smx As String) As TWElement
	Dim xmx As String = $"mr-${smx}"$
	mElement.AddClass(xmx)
	Return Me
End Sub

Sub MX(smx As String) As TWElement
	Dim xmx As String = $"mx-${smx}"$
	mElement.AddClass(xmx)
	Return Me
End Sub

Sub Container As TWElement
	mElement.AddClass("container")
	Return Me
End Sub

Sub Antialiased As TWElement
	mElement.AddClass("antialiased")
	Return Me
End Sub

Sub TextColorIntensity(color As String, intensity As Int) As TWElement
	Dim tc As String = $"text-${color}-${intensity}"$
	mElement.AddClass(tc)
	Return Me
End Sub

Sub TextColor(color As String) As TWElement
	Dim tc As String = $"text-${color}"$
	mElement.AddClass(tc)
	Return Me
End Sub

Sub SetText(eLabel As String) As TWElement
	mElement.SetHTML(eLabel)
	Return Me
End Sub

Sub SetHREF(href As String) As TWElement
	mElement.SetAttr("href", href)
	Return Me
End Sub

private Sub CleanID(v As String) As String
	v = v.tolowercase
	v = v.Replace("#","")
	v = $"#${v}"$
	Return v
End Sub

Sub BackGroundImage(imgURL As String) As TWElement
	Dim s As String = $"url(${imgURL})"$
	Dim m As Map = CreateMap()
	m.Put("background-image", s)
	AddStyle(m)
	Return Me
End Sub

Sub BackgroundSize(s As String) As TWElement
	Dim m As Map = CreateMap()
	m.Put("background-size", s)
	AddStyle(m)
	Return Me
End Sub

Sub BackgroundRepeat(rpt As String) As TWElement
	Dim m As Map = CreateMap()
	m.Put("background-repeat", rpt)
	AddStyle(m)
	Return Me
End Sub

'add multiple styles to an element
Sub AddStyle(amap As Map) As TWElement
	For Each k As String In amap.Keys
		Dim v As String = amap.Get(k)
		Dim astyle As Map = CreateMap()
		astyle.Put(k, v)
		Dim jsonStyle As String = BANano.ToJson(astyle)
		mElement.SetStyle(jsonStyle)
	Next
	Return Me
End Sub

Sub JustifyBP(bp As String, j As String) As TWElement
	Dim s As String = $"${bp}:justify-${j}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub BlockBP(bp As String) As TWElement
	Dim s As String = $"${bp}:block"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub StaticBP(bp As String) As TWElement
	Dim s As String = $"${bp}:static"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub SetTransition(items As List) As TWElement
	Dim s As String = Join(" ", items)
	Dim m As Map = CreateMap()
	m.Put("transition", s)
	Return Me
End Sub

Sub Join(delimiter As String, lst As List) As String
	Dim i As Int
	Dim sb As StringBuilder
	Dim fld As String
	sb.Initialize
	fld = lst.Get(0)
	sb.Append(fld)
	For i = 1 To lst.size - 1
		Dim fld As String = lst.Get(i)
		sb.Append(delimiter).Append(fld)
	Next
	Return sb.ToString
End Sub

Sub WBP(bp As String, wx As String) As TWElement
	Dim s As String = $"${bp}:w-${wx}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub HBP(bp As String, wx As String) As TWElement
	Dim s As String = $"${bp}:h-${wx}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub ML(ipx As Int) As TWElement
	Dim spx As String = $"ml-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub Duration(ipx As Int) As TWElement
	Dim spx As String = $"duration-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub EaseLinear As TWElement
	mElement.AddClass("ease-linear")
	Return Me
End Sub

Sub MB(ipx As Int) As TWElement
	Dim spx As String = $"mb-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub MT(ipx As Int) As TWElement
	Dim spx As String = $"mt-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub


Sub MY(ipx As Int) As TWElement
	Dim spx As String = $"my-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub PY(ipx As Int) As TWElement
	Dim spx As String = $"py-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub PYBP(bp As String, ipx As Int) As TWElement
	Dim spx As String = $"${bp}:py-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub P(ipx As Int) As TWElement
	Dim spx As String = $"p-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub


Sub PB(ipx As Int) As TWElement
	Dim spx As String = $"pb-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub PR(ipx As Int) As TWElement
	Dim spx As String = $"pr-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub PL(ipx As Int) As TWElement
	Dim spx As String = $"pl-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub PT(ipx As Int) As TWElement
	Dim spx As String = $"pt-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub PBP(bp As String, ipx As Int) As TWElement
	Dim spx As String = $"${bp}:p-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub PX(ipx As Int) As TWElement
	Dim spx As String = $"px-${ipx}"$
	mElement.AddClass(spx)
	Return Me
End Sub

Sub Justify(j As String) As TWElement
	mElement.AddClass($"justify-${j}"$)
	Return Me
End Sub

Sub ItemsCenter As TWElement
	mElement.AddClass("items-center")
	Return Me
End Sub

Sub W(sw As String) As TWElement
	mElement.AddClass($"w-${sw}"$)
	Return Me
End Sub

Sub H(sw As String) As TWElement
	mElement.AddClass($"h-${sw}"$)
	Return Me
End Sub

Sub Block As TWElement
	mElement.AddClass("block")
	Return Me
End Sub

Sub Static As TWElement
	mElement.AddClass("static")
	Return Me
End Sub

Sub Z(iz As Int) As TWElement
	Dim xtop As String = $"z-${iz}"$
	mElement.AddClass(xtop)
	Return Me
End Sub

Sub MXBP(bp As String, margin As Int) As TWElement
	Dim s As String = $"${bp}:mx-${margin}"$
	mElement.AddClass(s)
	Return Me
End Sub


Sub MBBP(bp As String, margin As Int) As TWElement
	Dim s As String = $"${bp}:mb-${margin}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub MTBP(bp As String, margin As Int) As TWElement
	Dim s As String = $"${bp}:mt-${margin}"$
	mElement.AddClass(s)
	Return Me
End Sub


Sub MYBP(bp As String, margin As Int) As TWElement
	Dim s As String = $"${bp}:my-${margin}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub MLBP(bp As String, margin As Int) As TWElement
	Dim s As String = $"${bp}:ml-${margin}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub MRBP(bp As String, margin As Int) As TWElement
	Dim s As String = $"${bp}:mr-${margin}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub Right(itop As Int) As TWElement
	Dim xtop As String = $"right-${itop}"$
	mElement.AddClass(xtop)
	Return Me
End Sub


Sub Top(itop As Int) As TWElement
	Dim xtop As String = $"top-${itop}"$
	mElement.AddClass(xtop)
	Return Me
End Sub

Sub ListType(s As String) As TWElement
	Dim s As String = $"list-${s}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub FlexBP(bp As String, sflex As String) As TWElement
	Dim s As String
	If sflex = "" Then
		s = $"${bp}:flex"$
	Else
		s = $"${bp}:flex-${sflex}"$
	End If
	mElement.AddClass(s)
	Return Me
End Sub

Sub Flex(f As String) As TWElement
	If f = "" Then
		mElement.AddClass("flex")
	Else	
		mElement.AddClass($"flex-${f}"$)
	End If
	Return Me
End Sub

Sub Absolute As TWElement
	mElement.AddClass("absolute")
	Return Me
End Sub

Sub SetAttr(k As String, v As String) As TWElement
	mElement.SetAttr(k, v)
	Return Me
End Sub

'add multiple attributes to an element
Sub AddAttr(amap As Map) As TWElement
	For Each k As String In amap.Keys
		Dim v As String = amap.Get(k)
		mElement.SetAttr(k, v)
	Next
	Return Me
End Sub

Sub TextBP(s As String) As TWElement
	mElement.AddClass($"text-${s}"$)
	Return Me
End Sub

Sub Inline(s As String) As TWElement
	mElement.AddClass($"inline-${s}"$)
	Return Me
End Sub

Sub Leading(l As String) As TWElement
	mElement.AddClass($"leading-${l}"$)
	Return Me
End Sub

Sub Shadow(sshadow As String) As TWElement
	If sshadow = "" Then
		mElement.AddClass("shadow")
	Else
		mElement.AddClass($"shadow-${sshadow}"$)
	End If
	Return Me
End Sub

Sub ShadowBP(bp As String, sshadow As String) As TWElement
	Dim s As String = $"${bp}:shadow-${sshadow}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub BG(sbg As String) As TWElement
	Dim s As String = $"bg-${sbg}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub BackGround(sbg As String) As TWElement
	Dim s As String = $"bg-${sbg}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub BackGroundIntensity(color As String, intensity As Int) As TWElement
	Dim s As String = $"bg-${color}-${intensity}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub BGI(color As String, intensity As Int) As TWElement
	Dim s As String = $"bg-${color}-${intensity}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub BGBP(bp As String, color As String) As TWElement
	Dim s As String = $"${bp}:bg-${color}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub BackGroundBP(bp As String, color As String) As TWElement
	Dim s As String = $"${bp}:bg-${color}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub IconName(sFA As String) As TWElement
	mElement.AddClass(sFA)
	Return Me
End Sub

Sub SetType(s As String) As TWElement
	mElement.SetAttr("type", s)
	Return Me
End Sub

Sub Font(s As String) As TWElement
	mElement.AddClass($"font-${s}"$)
	Return Me
End Sub

Sub Relative As TWElement
	mElement.AddClass("relative")
	Return Me
End Sub

Sub Cursor(s As String) As TWElement
	mElement.AddClass($"cursor-${s}"$)
	Return Me
End Sub

Sub Outline(s As String) As TWElement
	mElement.AddClass($"outline-${s}"$)
	Return Me
End Sub

Sub OutlineNone As TWElement
	mElement.AddClass($"outline-none"$)
	Return Me
End Sub

Sub TransitionAll As TWElement
	mElement.AddClass($"transition-all"$)
	Return Me
End Sub

Sub FocusOutlineNone As TWElement
	mElement.AddClass("focus:outline-none")
	Return Me
End Sub

Sub Hidden As TWElement
	mElement.AddClass("hidden")
	Return Me
End Sub

Sub HiddenBP(bp As String) As TWElement
	mElement.AddClass($"${bp}:hidden"$)
	Return Me
End Sub

Sub Border(s As String) As TWElement
	If s = "" Then
		mElement.AddClass("border")
	Else	
		mElement.AddClass($"border-${s}"$)
	End If
	Return Me
End Sub

Sub Rounded(r As String) As TWElement
	If r = "" Then
		mElement.AddClass("rounded")
	Else
		mElement.AddClass($"rounded-${r}"$)
	End If
	Return Me
End Sub


Sub RoundedBP(bp As String, r As String) As TWElement
	If r = "" Then
		mElement.AddClass($"${bp}:rounded"$)
	Else
		mElement.AddClass($"${bp}:rounded-${r}"$)
	End If
	Return Me
End Sub

'add multiple classes to an element
Sub AddClass(cList As List) As TWElement
	For Each strc As String In cList
		mElement.AddClass(strc)
	Next
	Return Me
End Sub


Sub Space(axis As String, cnt As Int) As TWElement
	Dim s As String = $"space-${axis}-${cnt}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub TextAlign(a As String) As TWElement
	mElement.AddClass($"text-${a}"$)
	Return Me
End Sub

Sub TextAlignBP(bp As String, a As String) As TWElement
	mElement.AddClass($"${bp}:text-${a}"$)
	Return Me
End Sub

Sub HoverShadowBP(bp As String) As TWElement
	Dim s As String = $"hover:shadow-${bp}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub HoverTCIBP(bp As String, color As String, intensity As Int) As TWElement
	Dim s As String = $"${bp}:hover:text-${color}-${intensity}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub HoverTextColorIntensityBP(bp As String, color As String, intensity As Int) As TWElement
	Dim s As String = $"${bp}:hover:text-${color}-${intensity}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub ActiveBackGroundIntensity(color As String, intensity As Int) As TWElement
	Dim s As String = $"active:bp-${color}-${intensity}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub ActiveBGI(color As String, intensity As Int) As TWElement
	Dim s As String = $"active:bp-${color}-${intensity}"$
	mElement.AddClass(s)
	Return Me
End Sub

Sub FontMedium As TWElement
	Font("medium")
	Return Me
End Sub

Sub FontLight As TWElement
	Font("light")
	Return Me
End Sub

Sub FontBold As TWElement
	Font("bold")
	Return Me
End Sub

Sub FontSemiBold As TWElement
	Font("semibold")
	Return Me
End Sub

Sub FontNormal As TWElement
	Font("normal")
	Return Me
End Sub

Sub TextXS As TWElement
	TextBP("xs")
	Return Me
End Sub

Sub TextLG As TWElement
	TextBP("lg")
	Return Me
End Sub

Sub TextMD As TWElement
	TextBP("md")
	Return Me
End Sub

Sub TextSM As TWElement
	TextBP("sm")
	Return Me
End Sub

Sub TextXL As TWElement
	TextBP("xl")
	Return Me
End Sub

Sub TextCenter As TWElement
	TextAlign("center")
	Return Me
End Sub

Sub BGGradientToBR(fromcolor As String, tocolor As String) As TWElement
	Dim s As String = $"bg-gradient-to-br from-${fromcolor} to-${tocolor}"$
	mElement.addclass(s)
	Return Me
End Sub

Sub Grid As TWElement
	mElement.AddClass("grid")
	Return Me
End Sub

Sub GridCols(s As Int) As TWElement
	mElement.AddClass($"grid-cols-${s}"$)
	Return Me
End Sub

Sub OverflowHidden As TWElement
	mElement.AddClass("overflow-hidden")
	Return Me
End Sub

Sub StyleWidth(sw As String) As TWElement
	Dim m As Map = CreateMap()
	m.Put("width", sw)
	AddStyle(m)
	Return Me
End Sub

Sub StyleHeight(sw As String) As TWElement
	Dim m As Map = CreateMap()
	m.Put("height", sw)
	AddStyle(m)
	Return Me
End Sub

Sub ShadowNone As TWElement
	Shadow("none")
	Return Me
End Sub

Sub WhiteSpaceNoWrap As TWElement
	WhiteSpace("nowrap")
	Return Me
End Sub

Sub JustifyCenter As TWElement
	Justify("center")
	Return Me
End Sub