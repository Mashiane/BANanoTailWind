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
	'
	'<h1 class="text-6xl font-normal leading-normal mt-0 mb-2 text-pink-800">Tailwind Starter Kit</h1>
	Dim h1 As TWElement
	h1.H1(Me, "body", "h1", "Tailwind Starter Kit")
	h1.TextBP("6xl").FontNormal.Leading("normal").MT(0).MB(2).TextColorIntensity("pink", 800).Pop
	'
	'<h2 class="text-5xl font-normal leading-normal mt-0 mb-2 text-pink-800">Tailwind Starter Kit</h2>
	Dim h2 As TWElement
	h2.H2(Me, "body", "h2", "Tailwind Starter Kit")
	h2.TextBP("5xl").FontNormal.Leading("normal").MT(0).MB(2).TextColorIntensity("pink", 800).Pop
	'
	'<h3 class="text-4xl font-normal leading-normal mt-0 mb-2 text-pink-800">Tailwind Starter Kit</h3>
	Dim h3 As TWElement
	h3.H3(Me, "body", "h3", "Tailwind Starter Kit")
	h3.TextBP("4xl").FontNormal.Leading("normal").MT(0).MB(2).TextColorIntensity("pink", 800).Pop
	'
	'<h4 class="text-3xl font-normal leading-normal mt-0 mb-2 text-pink-800">Tailwind Starter Kit</h4>
	Dim h4 As TWElement
	h4.H4(Me, "body", "h4", "Tailwind Starter Kit")
	h4.TextBP("3xl").Font("normal").Leading("normal").MT(0).MB(2).TextColorIntensity("pink", 800).Pop
	'
	'<h5 class="text-2xl font-normal leading-normal mt-0 mb-2 text-pink-800">Tailwind Starter Kit</h5>
	Dim h5 As TWElement
	h5.H5(Me, "body", "h5", "Tailwind Starter Kit")
	h5.TextBP("2xl").Font("normal").Leading("normal").MT(0).MB(2).TextColorIntensity("pink", 800).Pop
	'
	'<h6 class="text-xl font-normal leading-normal mt-0 mb-2 text-pink-800">Tailwind Starter Kit</h6>
	Dim h6 As TWElement
	h6.H6(Me, "body", "h6", "Tailwind Starter Kit")
	h6.TextBP("xl").Font("normal").Leading("normal").MT(0).MB(2).TextColorIntensity("pink", 800).Pop
	'
	'
	Dim str As String = $"I will be the leader of a company that ends up being worth billions	of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push	possibilities, to show people, this is the level that things could	be at."$
	Dim p1 As TWElement
	p1.Paragraph(Me, "body", "p1", str).TextBP("base").Font("light").Leading("related").MT(0).MB(4).TextColorIntensity(p1.COLOR_LIGHTBLUE, 800).Pop
	'
	Dim p2 As TWElement
	p2.Paragraph(Me, "body", "p2", str).TextBP("lg").Font("light").Leading("related").MT(6).MB(4).TextColorIntensity(p1.COLOR_PINK, 800).Pop
	'
	Dim p3 As TWElement
	p3.Paragraph(Me, "body", "p3", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.").TextBP("base").Font("light").Leading("related")
	p3.MT(0).MB(4).TextColorIntensity(p1.COLOR_PINK, 800).POp
	'
	Dim f1 As TWElement
	f1.Footer(Me, "body", "f1").Block.TextColorIntensity("pink", 600).SetText("- Someone famous in <cite>Source Title</cite>").Pop
	'
	Dim s1 As TWElement
	s1.Small(Me, "body", "s1", str).Font("normal").Leading("normal").MT(0).MB(4).TextColorIntensity("amber", 800).Pop
End Sub	
	