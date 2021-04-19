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

	Dim figure1 As TWElement
	figure1.Figure(Me, "body", "figure1").FlexBP("md", "").BGI("gray", 100).Rounded("xl").P(8).PBP("md", 0).Pop
	'
	Dim img As TWElement
	img.Image(Me, figure1.ID, "pd1", "./assets/sarah-dayan.jpg", "", 384, 512)
	img.W(32).H(32).WBP("md", 48).HBP("md", "auto").RoundedBP("md", "none").MX("auto").Pop
	'
	Dim div1 As TWElement
	div1.Div(Me, figure1.ID, "div1").PT(6).PBP("md", 8).TextAlign("center").TextAlignBP("md", "left").Space("y", 4).Pop
	'
	Dim bq As TWElement
	bq.BlockQuote(Me, div1.ID, "bq1").Pop
	'
	Dim p1 As TWElement
	p1.Paragraph(Me, bq.ID, "p1", "Tailwind CSS is the only framework that I've seen scale on large teams. It’s easy to customize, adapts to any design, and the build size is tiny.")
	p1.TextBP("lg").Font("semibold").Pop

	Dim fc1 As TWElement
	fc1.FigCaption(Me, div1.ID, "fc1").Font("medium").Pop
	'
	Dim div2 As TWElement
	div2.Div(Me, fc1.ID, "div2").TextColorIntensity("cyan", 600).SetText("Sarah Dayan").Pop
	'
	Dim div3 As TWElement
	div3.Div(Me, fc1.ID, "div3").TextColorIntensity("gray", 500).SetText("Staff Engineer, Algolia").Pop
End Sub