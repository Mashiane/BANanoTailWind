B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Private BANano As BANano
	Private mElement As BANanoElement
	Private sID As String
	Private pID As String
	Private mCallBack As Object
	'break-points
	Public const BP_XS As String = "xs"
	Public const BP_MD As String = "md"
	Public const BP_LG As String = "lg"
	Public const BP_SM As String = "sm"
	Public const BP_XL As String = "xl"
End Sub

Public Sub Initialize(Module As Object, parentID As String, elID As String, eTag As String) As TWElement
	mCallBack = Module
	parentID = parentID.tolowercase
	eTag = eTag.tolowercase
	elID = elID.tolowercase
	sID = elID
	pID = CleanID(parentID)
	'does the element exist, if so get it
	If BANano.Exists(CleanID(elID)) Then
		mElement = BANano.GetElement(CleanID(elID))
	Else
		'create a non-attached element
		mElement = BANano.CreateElement(eTag)
		mElement.SetAttr("id", elID)
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
	'does the element exist, if so get it
	If BANano.Exists(CleanID(elID)) Then
		mElement = BANano.GetElement(CleanID(elID))
	Else
		'create a non-attached element
		mElement = BANano.CreateElement(eTag)
		mElement.SetAttr("id", elID)
	End If
	Return Me
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

Sub Span(Module As Object, parentID As String, elID As String, eText As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "span")
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

Sub Button(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "button")
	elx.SetType("button")
	Return elx
End Sub

Sub UL(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "ul")
	Return elx
End Sub

Sub Icon(Module As Object, parentID As String, elID As String, eIconName As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "i")
	elx.IconName(eIconName)
	Return elx
End Sub

Sub Nav(Module As Object, parentID As String, elID As String) As TWElement
	Dim elx As TWElement = CreateElement(Module, parentID, elID, "nav")
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
	mElement.SetText(eLabel)
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

Sub ML(ipx As Int) As TWElement
	Dim spx As String = $"ml-${ipx}"$
	mElement.AddClass(spx)
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

Sub Rounded As TWElement
	mElement.AddClass("rounded")
	Return Me
End Sub

'add multiple classes to an element
Sub AddClass(cList As List) As TWElement
	For Each strc As String In cList
		mElement.AddClass(strc)
	Next
	Return Me
End Sub

Sub Pop As TWElement
	Dim pE As BANanoElement = GetElement(pID)
	pE.Append(mElement)
	OnClick
	Return Me
End Sub

'get an existing element
Sub GetElement(elID As String) As BANanoElement
	elID = CleanID(elID)
	'does the element exist
	If BANano.Exists(elID) Then
		'get and return it
		Dim elx As BANanoElement = BANano.GetElement(elID)
		Return elx
	Else
		Return Null
	End If
End Sub

Sub HoverShadowBP(bp As String) As TWElement
	Dim s As String = $"hover:shadow-${bp}"$
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