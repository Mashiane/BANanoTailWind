var _banano_tailwind=new banano_tailwind();var _banano_tailwind_pgindex=new banano_tailwind_pgindex();
/* App */
function banano_tailwind_pgindex() {var _B;this.initialize=function() {if (_B==null) _B=this;var __f;__f= new banano_tailwind_twelement();__f.div(_B,"","body").textcolorintensity("gray",700).antialiased();_B.buildnavbar(_B);_B.buildmain(_B);};this.buildmain=function() {if (_B==null) _B=this;var __15,__16,__18;__15= new banano_tailwind_twelement();__15.main1(_B,"body","main1");__15.pop();__16= new banano_tailwind_twelement();__16.section(_B,__15.getid(),"section1");__16.absolute();__16.w("full");__16.h("full");__16.pop();__18= new banano_tailwind_twelement();__18.div(_B,__16.getid(),"sdiv1");__18.absolute();__18.top(0);__18.w("full");__18.h("full");__18.backgroundintensity("gray",900);__18.backgroundimage("./assets/register_bg_2.png");__18.backgroundsize("100%");__18.backgroundrepeat("no-repeat");__18.pop();};this.buildnavbar=function() {if (_B==null) _B=this;var _nav,__22,__24,_a1,__2b,__2d,__2f,_ul1,_ul2,__35,__36,__37,__38,__39,__3a,_di,_ds;_nav= new banano_tailwind_twelement();_nav.nav(_B,"body","nav");_nav.top(0);_nav.absolute();_nav.z(50);_nav.w("full");_nav.flex("");_nav.flex("wrap");_nav.itemscenter();_nav.justify("between");_nav.px(2);_nav.py(3);_nav.pop();__22= new banano_tailwind_twelement();__22.div(_B,_nav.getid(),"div1");__22.container();__22.px(4);__22.mx("auto");__22.flex("");__22.flex("wrap");__22.itemscenter();__22.justify("between");__22.pop();__24= new banano_tailwind_twelement();__24.div(_B,__22.getid(),"div2");__24.w("full");__24.relative();__24.flex("");__24.justify("between");__24.wbp(__24.__7,"auto");__24.staticbp(__24.__7);__24.blockbp(__24.__7);__24.justifybp(__24.__7,"start");__24.pop();_a1= new banano_tailwind_twelement();_a1.anchor(_B,__24.getid(),"a1","TailWind Starter Kit","https://www.creative-tim.com/learning-lab/tailwind-starter-kit#/presentation");_a1.textbp(_a1.__8);_a1.font("bold");_a1.leading("relaxed");_a1.inline("block");_a1.mr(4);_a1.py(2);_a1.whitespace("nowrap");_a1.uppercase();_a1.textcolor("white");_a1.pop();__2b= new banano_tailwind_twelement();__2b.button(_B,__24.getid(),"btn1");__2b.cursor("pointer");__2b.textbp(__2b.__9);__2b.leading("none");__2b.px(3);__2b.py(1);__2b.border("");__2b.border("solid");__2b.border("transparent");__2b.rounded();__2b.background("transparent");__2b.block();__2b.hiddenbp(__2b.__7);__2b.outline("none");__2b.focusoutlinenone();__2b.pop();__2d= new banano_tailwind_twelement();__2d.icon(_B,__2b.getid(),"icon1","fas fa-bars");__2d.textcolor("white");__2d.pop();__2f= new banano_tailwind_twelement();__2f.div(_B,__22.getid(),"example-collapse-navbar");__2f.flexbp(__2f.__7,"");__2f.flex("grow");__2f.itemscenter();__2f.background("white");__2f.backgroundbp(__2f.__7,"transparent");__2f.shadowbp(__2f.__7,"none");__2f.hidden();__2f.pop();_ul1= new banano_tailwind_twelement();_ul1.ul(_B,__2f.getid(),"ul1");_ul1.flex("");_ul1.flex("col");_ul1.flexbp(_ul1.__7,"row");_ul1.listtype("none");_ul1.mr("auto");_ul1.pop();_ul2= new banano_tailwind_twelement();_ul2.ul(_B,__2f.getid(),"ul2");_ul2.flex("");_ul2.flex("col");_ul2.flexbp(_ul2.__7,"row");_ul2.listtype("none");_ul2.mlbp(_ul2.__7,"auto");_ul2.pop();__35= new banano_tailwind_twelement();__35.li(_B,_ul2.getid(),"ul1li0");__35.flex("");__35.itemscenter();__35.pop();_B.anchoriconspan(__35.getid(),"" + __35.getid() + "item","https://www.creative-tim.com/learning-lab/tailwind-starter-kit#/login","far fa-file-alt","Docs",_B);__36= new banano_tailwind_twelement();__36.li(_B,_ul2.getid(),"ul2li1");__36.flex("");__36.itemscenter();__36.pop();_B.anchoriconspan(__36.getid(),"" + __36.getid() + "item","#pablo","fab fa-facebook","Share",_B);__37= new banano_tailwind_twelement();__37.li(_B,_ul2.getid(),"ul2li2");__37.flex("");__37.itemscenter();__37.pop();_B.anchoriconspan(__37.getid(),"" + __37.getid() + "item","#pablo","fab fa-twitter","Tweet",_B);__38= new banano_tailwind_twelement();__38.li(_B,_ul2.getid(),"ul2li3");__38.flex("");__38.itemscenter();__38.pop();_B.anchoriconspan(__38.getid(),"" + __38.getid() + "item","#pablo","fab fa-github","Star",_B);__39= new banano_tailwind_twelement();__39.li(_B,_ul2.getid(),"ul2li4");__39.flex("");__39.itemscenter();__39.pop();__3a= new banano_tailwind_twelement();__3a.button(_B,__39.getid(),"btndownload");__3a.background("white");__3a.textcolorintensity("gray",800);__3a.activebackgroundintensity("gray",100);__3a.textbp(__3a.__5);__3a.font("bold");__3a.uppercase();__3a.px(4);__3a.py(2);__3a.rounded();__3a.shadow("");__3a.hovershadowbp(__3a.__6);__3a.outlinenone();__3a.focusoutlinenone();__3a.mrbp(__3a.__7,1);__3a.mbbp(__3a.__7,0);__3a.ml(3);__3a.mb(3);__3a.settransition(["all","0.15s","ease","0s"]);__3a.pop();_di= new banano_tailwind_twelement();_di.icon(_B,__3a.getid(),"di","fas fa-arrow-alt-circle-down");_di.pop();_ds= new banano_tailwind_twelement();_ds.span(_B,__3a.getid(),"ds"," Download");_ds.pop();};this.anchoriconspan=function(__11,__12,__3e,__3f,__40) {if (_B==null) _B=this;var _a,_i,_s;_a= new banano_tailwind_twelement();_a.anchor(_B,__11,__12,"",__3e);_a.textcolorbp("lg","white");_a.hovertextcolorintensitybp("lg","gray",300);_a.textcolorintensity("gray",800);_a.px(3);_a.py(4);_a.pybp("lg",2);_a.flex("");_a.itemscenter();_a.textbp("xs");_a.uppercase();_a.font("bold");_a.pop();_i= new banano_tailwind_twelement();_i.icon(_B,__12,"" + __12 + "icon",__3f);_i.textcolorintensitybp("lg","gray",300);_i.textcolorintensity("gray",500);_i.textbp("lg");_i.leading("lg");_i.pop();_s= new banano_tailwind_twelement();_s.span(_B,__12,"" + __12 + "span",__40);_s.hiddenbp("lg");_s.inline("block");_s.ml(2);_s.pop();};this.btndownload_click=function(_e) {if (_B==null) _B=this;console.log("btndownload_click");};this.btn1_click=function(_e) {if (_B==null) _B=this;console.log("btn1_click");_B.togglenavbar("example-collapse-navbar",_B);};this.togglenavbar=function(__44) {if (_B==null) _B=this;var _el;__44=__44.toLowerCase();_el=u("#" + __44 + "");_el.toggleClass("hidden");_el.toggleClass("block");};}function banano_tailwind_twelement() {var _B=this;_B.__1=null;_B.__2="";_B.__3="";_B.__4={};_B.__5="xs";_B.__6="md";_B.__7="lg";_B.__8="sm";_B.__9="xl";_B.initialize=function(__10,__11,__12,__46) {_B.__4=__10;__11=__11.toLowerCase();__46=__46.toLowerCase();__12=__12.toLowerCase();_B.__2=__12;_B.__3=_B.cleanid(__11,_B);if (u(_B.cleanid(__12,_B)).length>0) {_B.__1=u(_B.cleanid(__12,_B));} else {_B.__1=u(document.createElement(__46));_B.__1.attr("id",__12);}return _B;};_B.createelement=function(__10,__11,__12,__46) {_B.__4=__10;__11=__11.toLowerCase();__46=__46.toLowerCase();__12=__12.toLowerCase();_B.__2=__12;_B.__3=_B.cleanid(__11,_B);if (u(_B.cleanid(__12,_B)).length>0) {_B.__1=u(_B.cleanid(__12,_B));} else {_B.__1=u(document.createElement(__46));_B.__1.attr("id",__12);}return _B;};_B.section=function(__10,__11,__12) {var _elx;_elx=_B.createelement(__10,__11,__12,"section",_B);return _elx;};_B.main1=function(__10,__11,__12) {var _elx;_elx=_B.createelement(__10,__11,__12,"main",_B);return _elx;};_B.div=function(__10,__11,__12) {var _elx;_elx=_B.createelement(__10,__11,__12,"div",_B);return _elx;};_B.span=function(__10,__11,__12,__28) {var _elx;_elx=_B.createelement(__10,__11,__12,"span",_B);if (__28!="") {_elx.settext(__28);}return _elx;};_B.anchor=function(__10,__11,__12,__28,__29) {var _elx;_elx=_B.createelement(__10,__11,__12,"a",_B);if (__29!="") {_elx.sethref(__29);}if (__28!="") {_elx.settext(__28);}return _elx;};_B.li=function(__10,__11,__12) {var _elx;_elx=_B.createelement(__10,__11,__12,"li",_B);return _elx;};_B.button=function(__10,__11,__12) {var _elx;_elx=_B.createelement(__10,__11,__12,"button",_B);_elx.settype("button");return _elx;};_B.ul=function(__10,__11,__12) {var _elx;_elx=_B.createelement(__10,__11,__12,"ul",_B);return _elx;};_B.icon=function(__10,__11,__12,__2e) {var _elx;_elx=_B.createelement(__10,__11,__12,"i",_B);_elx.iconname(__2e);return _elx;};_B.nav=function(__10,__11,__12) {var _elx;_elx=_B.createelement(__10,__11,__12,"nav",_B);return _elx;};_B.onclick=function() {var _s;_s="" + _B.__2 + "_click";if ((typeof _B.__4[(_s).toLowerCase()]==="function")) {_B.__1.on("click", function(event) {if (typeof _B.__4[(_s).toLowerCase()]==="function") {return _B.__4[(_s).toLowerCase()](event,_B)}});}};_B.toggle=function(__4a) {_B.__1.toggleClass(__4a);};_B.textcolorbp=function(_bp,__13) {var _s;_s="" + _bp + ":text-" + __13 + "";_B.__1.addClass(_s);return _B;};_B.textcolorintensitybp=function(_bp,__13,__14) {var _s;_s="" + _bp + ":text-" + __13 + "-" + __14 + "";_B.__1.addClass(_s);return _B;};_B.getid=function() {return _B.__2;};_B.uppercase=function() {_B.__1.addClass("uppercase");return _B;};_B.whitespace=function(_s) {_B.__1.addClass("whitespace-" + _s + "");return _B;};_B.mr=function(_smx) {var _xmx;_xmx="mr-" + _smx + "";_B.__1.addClass(_xmx);return _B;};_B.mx=function(_smx) {var _xmx;_xmx="mx-" + _smx + "";_B.__1.addClass(_xmx);return _B;};_B.container=function() {_B.__1.addClass("container");return _B;};_B.antialiased=function() {_B.__1.addClass("antialiased");return _B;};_B.textcolorintensity=function(__13,__14) {var _tc;_tc="text-" + __13 + "-" + __14 + "";_B.__1.addClass(_tc);return _B;};_B.textcolor=function(__13) {var _tc;_tc="text-" + __13 + "";_B.__1.addClass(_tc);return _B;};_B.settext=function(__48) {_B.__1.text(__48);return _B;};_B.sethref=function(__3e) {_B.__1.attr("href",__3e);return _B;};_B.cleanid=function(_v) {_v=_v.toLowerCase();_v=_v.split("#").join("");_v="#" + _v + "";return _v;};_B.backgroundimage=function(__1a) {var _s,_m;_s="url(" + __1a + ")";_m={};_m["background-image"]=_s;_B.addstyle(_m,_B);return _B;};_B.backgroundsize=function(_s) {var _m;_m={};_m["background-size"]=_s;_B.addstyle(_m,_B);return _B;};_B.backgroundrepeat=function(_rpt) {var _m;_m={};_m["background-repeat"]=_rpt;_B.addstyle(_m,_B);return _B;};_B.addstyle=function(__4f) {var _k,_v,__50,__51;var _kKeys = Object.keys(__4f);for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {_k=_kKeys[_kindex];_v=__4f[_k];__50={};__50[_k]=_v;__51=JSON.stringify(__50);_B.__1.css(JSON.parse(__51));}return _B;};_B.justifybp=function(_bp,_j) {var _s;_s="" + _bp + ":justify-" + _j + "";_B.__1.addClass(_s);return _B;};_B.blockbp=function(_bp) {var _s;_s="" + _bp + ":block";_B.__1.addClass(_s);return _B;};_B.staticbp=function(_bp) {var _s;_s="" + _bp + ":static";_B.__1.addClass(_s);return _B;};_B.settransition=function(__3b) {var _s,_m;_s=_B.join(" ",__3b,_B);_m={};_m["transition"]=_s;return _B;};_B.join=function(__52,_lst) {var _i,_sb,_fld;_i=0;_sb=new StringBuilder();_fld="";_sb.init();_sb.isinitialized=true;_fld=_lst[0];_sb.append(_fld);for (_i=1;_i<=_lst.length-1;_i++) {_fld=_lst[_i];_sb.append(__52).append(_fld);}return _sb.toString();};_B.wbp=function(_bp,_wx) {var _s;_s="" + _bp + ":w-" + _wx + "";_B.__1.addClass(_s);return _B;};_B.ml=function(_ipx) {var _spx;_spx="ml-" + _ipx + "";_B.__1.addClass(_spx);return _B;};_B.mb=function(_ipx) {var _spx;_spx="mb-" + _ipx + "";_B.__1.addClass(_spx);return _B;};_B.mt=function(_ipx) {var _spx;_spx="mt-" + _ipx + "";_B.__1.addClass(_spx);return _B;};_B.my=function(_ipx) {var _spx;_spx="my-" + _ipx + "";_B.__1.addClass(_spx);return _B;};_B.py=function(_ipx) {var _spx;_spx="py-" + _ipx + "";_B.__1.addClass(_spx);return _B;};_B.pybp=function(_bp,_ipx) {var _spx;_spx="" + _bp + ":py-" + _ipx + "";_B.__1.addClass(_spx);return _B;};_B.px=function(_ipx) {var _spx;_spx="px-" + _ipx + "";_B.__1.addClass(_spx);return _B;};_B.justify=function(_j) {_B.__1.addClass("justify-" + _j + "");return _B;};_B.itemscenter=function() {_B.__1.addClass("items-center");return _B;};_B.w=function(_sw) {_B.__1.addClass("w-" + _sw + "");return _B;};_B.h=function(_sw) {_B.__1.addClass("h-" + _sw + "");return _B;};_B.block=function() {_B.__1.addClass("block");return _B;};_B.static=function() {_B.__1.addClass("static");return _B;};_B.z=function(_iz) {var __57;__57="z-" + _iz + "";_B.__1.addClass(__57);return _B;};_B.mxbp=function(_bp,__34) {var _s;_s="" + _bp + ":mx-" + __34 + "";_B.__1.addClass(_s);return _B;};_B.mbbp=function(_bp,__34) {var _s;_s="" + _bp + ":mb-" + __34 + "";_B.__1.addClass(_s);return _B;};_B.mtbp=function(_bp,__34) {var _s;_s="" + _bp + ":mt-" + __34 + "";_B.__1.addClass(_s);return _B;};_B.mybp=function(_bp,__34) {var _s;_s="" + _bp + ":my-" + __34 + "";_B.__1.addClass(_s);return _B;};_B.mlbp=function(_bp,__34) {var _s;_s="" + _bp + ":ml-" + __34 + "";_B.__1.addClass(_s);return _B;};_B.mrbp=function(_bp,__34) {var _s;_s="" + _bp + ":mr-" + __34 + "";_B.__1.addClass(_s);return _B;};_B.top=function(__19) {var __57;__57="top-" + __19 + "";_B.__1.addClass(__57);return _B;};_B.listtype=function() {var _s;_s="list-" + _s + "";_B.__1.addClass(_s);return _B;};_B.flexbp=function(_bp,__30) {var _s;_s="";if (__30=="") {_s="" + _bp + ":flex";} else {_s="" + _bp + ":flex-" + __30 + "";}_B.__1.addClass(_s);return _B;};_B.flex=function(_f) {if (_f=="") {_B.__1.addClass("flex");} else {_B.__1.addClass("flex-" + _f + "");}return _B;};_B.absolute=function() {_B.__1.addClass("absolute");return _B;};_B.addattr=function(__4f) {var _k,_v;var _kKeys = Object.keys(__4f);for (var _kindex=0;_kindex<_kKeys.length;_kindex++) {_k=_kKeys[_kindex];_v=__4f[_k];_B.__1.attr(_k,_v);}return _B;};_B.textbp=function(_s) {_B.__1.addClass("text-" + _s + "");return _B;};_B.inline=function(_s) {_B.__1.addClass("inline-" + _s + "");return _B;};_B.leading=function(_l) {_B.__1.addClass("leading-" + _l + "");return _B;};_B.shadow=function(__31) {if (__31=="") {_B.__1.addClass("shadow");} else {_B.__1.addClass("shadow-" + __31 + "");}return _B;};_B.shadowbp=function(_bp,__31) {var _s;_s="" + _bp + ":shadow-" + __31 + "";_B.__1.addClass(_s);return _B;};_B.background=function(_sbg) {var _s;_s="bg-" + _sbg + "";_B.__1.addClass(_s);return _B;};_B.backgroundintensity=function(__13,__14) {var _s;_s="bg-" + __13 + "-" + __14 + "";_B.__1.addClass(_s);return _B;};_B.backgroundbp=function(_bp,__13) {var _s;_s="" + _bp + ":bg-" + __13 + "";_B.__1.addClass(_s);return _B;};_B.iconname=function(_sfa) {_B.__1.addClass(_sfa);return _B;};_B.settype=function(_s) {_B.__1.attr("type",_s);return _B;};_B.font=function(_s) {_B.__1.addClass("font-" + _s + "");return _B;};_B.relative=function() {_B.__1.addClass("relative");return _B;};_B.cursor=function(_s) {_B.__1.addClass("cursor-" + _s + "");return _B;};_B.outline=function(_s) {_B.__1.addClass("outline-" + _s + "");return _B;};_B.outlinenone=function() {_B.__1.addClass("outline-none");return _B;};_B.focusoutlinenone=function() {_B.__1.addClass("focus:outline-none");return _B;};_B.hidden=function() {_B.__1.addClass("hidden");return _B;};_B.hiddenbp=function(_bp) {_B.__1.addClass("" + _bp + ":hidden");return _B;};_B.border=function(_s) {if (_s=="") {_B.__1.addClass("border");} else {_B.__1.addClass("border-" + _s + "");}return _B;};_B.rounded=function() {_B.__1.addClass("rounded");return _B;};_B.addclass=function(__58) {var _strc;for (var _strcindex=0;_strcindex<__58.length;_strcindex++) {_strc=__58[_strcindex];_B.__1.addClass(_strc);}return _B;};_B.pop=function() {var _pe;_pe=_B.getelement(_B.__3,_B);_pe.append(_B.__1);_B.onclick(_B);return _B;};_B.getelement=function(__12) {var _elx;__12=_B.cleanid(__12,_B);if (u(__12).length>0) {_elx=u(__12);return _elx;} else {return null;}};_B.hovershadowbp=function(_bp) {var _s;_s="hover:shadow-" + _bp + "";_B.__1.addClass(_s);return _B;};_B.hovertextcolorintensitybp=function(_bp,__13,__14) {var _s;_s="" + _bp + ":hover:text-" + __13 + "-" + __14 + "";_B.__1.addClass(_s);return _B;};_B.activebackgroundintensity=function(__13,__14) {var _s;_s="active:bp-" + __13 + "-" + __14 + "";_B.__1.addClass(_s);return _B;};}function banano_tailwind() {var _B;this.__a="banano_tailwind";this.__b="BANano TailWind";this.__c="C:\laragon\www";this.__d="1.00";this.__e="https://localhost";this.banano_ready=function() {if (_B==null) _B=this;_banano_tailwind_pgindex.initialize();};}window.addEventListener('online', function() {if (typeof _banano_tailwind['banano_online']==="function") {_banano_tailwind.banano_online();}});window.addEventListener('offline', function() {if (typeof _banano_tailwind['banano_offline']==="function") {_banano_tailwind.banano_offline();}});var BANversion=1618782709077;window.document.addEventListener("readystatechange", BANLoadChecker, true);function BANLoadChecker() {if (window.document.readyState=="complete") {_banano_tailwind.banano_ready();}}