/* This WebApp/WebSite was created using BANano v6.59, a B4X library written by Alain Bailleul (2018 - 2021). -->*/
var window = self.window = self;loadjs=function(){var h=function(){},c={},u={},f={};function o(e,n){if(e){var r=f[e];if(u[e]=n,r)for(;r.length;)r[0](e,n),r.splice(0,1)}}function l(e,n){e.call&&(e={success:e}),n.length?(e.error||h)(n):(e.success||h)(e)}function d(r,t,s,i){var c,o,e=document,n=s.async,u=(s.numRetries||0)+1,f=s.before||h,l=r.replace(/[\?|#].*$/,""),a=r.replace(/^(css|img)!/,"");i=i||0,/(^css!|\.css$)/.test(l)?((o=e.createElement("link")).rel="stylesheet",o.href=a,(c="hideFocus"in o)&&o.relList&&(c=0,o.rel="preload",o.as="style")):/(^img!|\.(png|gif|jpg|svg)$)/.test(l)?(o=e.createElement("img")).src=a:((o=e.createElement("script")).src=r,o.async=void 0===n||n),!(o.onload=o.onerror=o.onbeforeload=function(e){var n=e.type[0];if(c)try{o.sheet.cssText.length||(n="e")}catch(e){18!=e.code&&(n="e")}if("e"==n){if((i+=1)<u)return d(r,t,s,i)}else if("preload"==o.rel&&"style"==o.as)return o.rel="stylesheet";t(r,n,e.defaultPrevented)})!==f(r,o)&&e.head.appendChild(o)}function r(e,n,r){var t,s;if(n&&n.trim&&(t=n),s=(t?r:n)||{},t){if(t in c)throw"LoadJS";c[t]=!0}function i(n,r){!function(e,t,n){var r,s,i=(e=e.push?e:[e]).length,c=i,o=[];for(r=function(e,n,r){if("e"==n&&o.push(e),"b"==n){if(!r)return;o.push(e)}--i||t(o)},s=0;s<c;s++)d(e[s],r,n)}(e,function(e){l(s,e),n&&l({success:n,error:r},e),o(t,e)},s)}if(s.returnPromise)return new Promise(i);i()}return r.ready=function(e,n){return function(e,r){e=e.push?e:[e];var n,t,s,i=[],c=e.length,o=c;for(n=function(e,n){n.length&&i.push(e),--o||r(i)};c--;)t=e[c],(s=u[t])?n(t,s):(f[t]=f[t]||[]).push(n)}(e,function(e){l(n,e)}),r},r.done=function(e){o(e,[])},r.reset=function(){c={},u={},f={}},r.isDefined=function(e){return e in c},r}();/* String Polyfill */
function isWhiteSpace(t){return" "===t||"\n"===t}String.prototype.trimLeft||(String.prototype.trimLeft=function(){for(var t=0;t<this.length&&isWhiteSpace(this[t]);)t++;return this.substring(t)}),String.prototype.trimRight||(String.prototype.trimRight=function(){for(var t=this.length-1;0<=t&&isWhiteSpace(this[t]);)t--;return this.substring(0,t+1)}),String.prototype.startsWith||(String.prototype.startsWith=function(t,r){return this.substr(!r||r<0?0:Number(r),t.length)===t}),String.prototype.endsWith||(String.prototype.endsWith=function(t,r){var i=this.toString();("number"!=typeof r||!isFinite(r)||Math.floor(r)!==r||r>i.length)&&(r=i.length),r-=t.length;var n=i.lastIndexOf(t,r);return-1!==n&&n===r}),"b"!=="ab".substr(-1)&&(String.prototype.substr=function(i){return function(t,r){return t<0&&(t=this.length+t),i.call(this,t,r)}}(String.prototype.substr)),String.prototype.trim||(String.prototype.trim=function(){return this.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,"")});
/* Promise Polyfill */
!function(t,e){"object"==typeof exports&&"undefined"!=typeof module?module.exports=e():"function"==typeof define&&define.amd?define(e):t.ES6Promise=e()}(this,function(){function t(t){var e=typeof t;return null!==t&&("object"===e||"function"===e)}function e(t){return"function"==typeof t}function n(t){W=t}function r(t){z=t}function o(){return function(){return process.nextTick(a)}}function i(){return"undefined"!=typeof U?function(){U(a)}:c()}function s(){var t=0,e=new H(a),n=document.createTextNode("");return e.observe(n,{characterData:!0}),function(){n.data=t=++t%2}}function u(){var t=new MessageChannel;return t.port1.onmessage=a,function(){return t.port2.postMessage(0)}}function c(){var t=setTimeout;return function(){return t(a,1)}}function a(){for(var t=0;t<N;t+=2){var e=Q[t],n=Q[t+1];e(n),Q[t]=void 0,Q[t+1]=void 0}N=0}function f(){try{var t=Function("return this")().require("vertx");return U=t.runOnLoop||t.runOnContext,i()}catch(e){return c()}}function l(t,e){var n=this,r=new this.constructor(p);void 0===r[V]&&x(r);var o=n._state;if(o){var i=arguments[o-1];z(function(){return T(o,r,i,n._result)})}else j(n,r,t,e);return r}function h(t){var e=this;if(t&&"object"==typeof t&&t.constructor===e)return t;var n=new e(p);return w(n,t),n}function p(){}function v(){return new TypeError("You cannot resolve a promise with itself")}function d(){return new TypeError("A promises callback cannot return that same promise.")}function _(t,e,n,r){try{t.call(e,n,r)}catch(o){return o}}function y(t,e,n){z(function(t){var r=!1,o=_(n,e,function(n){r||(r=!0,e!==n?w(t,n):A(t,n))},function(e){r||(r=!0,S(t,e))},"Settle: "+(t._label||" unknown promise"));!r&&o&&(r=!0,S(t,o))},t)}function m(t,e){e._state===Z?A(t,e._result):e._state===$?S(t,e._result):j(e,void 0,function(e){return w(t,e)},function(e){return S(t,e)})}function b(t,n,r){n.constructor===t.constructor&&r===l&&n.constructor.resolve===h?m(t,n):void 0===r?A(t,n):e(r)?y(t,n,r):A(t,n)}function w(e,n){if(e===n)S(e,v());else if(t(n)){var r=void 0;try{r=n.then}catch(o){return void S(e,o)}b(e,n,r)}else A(e,n)}function g(t){t._onerror&&t._onerror(t._result),E(t)}function A(t,e){t._state===X&&(t._result=e,t._state=Z,0!==t._subscribers.length&&z(E,t))}function S(t,e){t._state===X&&(t._state=$,t._result=e,z(g,t))}function j(t,e,n,r){var o=t._subscribers,i=o.length;t._onerror=null,o[i]=e,o[i+Z]=n,o[i+$]=r,0===i&&t._state&&z(E,t)}function E(t){var e=t._subscribers,n=t._state;if(0!==e.length){for(var r=void 0,o=void 0,i=t._result,s=0;s<e.length;s+=3)r=e[s],o=e[s+n],r?T(n,r,o,i):o(i);t._subscribers.length=0}}function T(t,n,r,o){var i=e(r),s=void 0,u=void 0,c=!0;if(i){try{s=r(o)}catch(a){c=!1,u=a}if(n===s)return void S(n,d())}else s=o;n._state!==X||(i&&c?w(n,s):c===!1?S(n,u):t===Z?A(n,s):t===$&&S(n,s))}function M(t,e){try{e(function(e){w(t,e)},function(e){S(t,e)})}catch(n){S(t,n)}}function P(){return tt++}function x(t){t[V]=tt++,t._state=void 0,t._result=void 0,t._subscribers=[]}function C(){return new Error("Array Methods must be provided an Array")}function O(t){return new et(this,t).promise}function k(t){var e=this;return new e(L(t)?function(n,r){for(var o=t.length,i=0;i<o;i++)e.resolve(t[i]).then(n,r)}:function(t,e){return e(new TypeError("You must pass an array to race."))})}function F(t){var e=this,n=new e(p);return S(n,t),n}function Y(){throw new TypeError("You must pass a resolver function as the first argument to the promise constructor")}function q(){throw new TypeError("Failed to construct 'Promise': Please use the 'new' operator, this object constructor cannot be called as a function.")}function D(){var t=void 0;if("undefined"!=typeof global)t=global;else if("undefined"!=typeof self)t=self;else try{t=Function("return this")()}catch(e){throw new Error("polyfill failed because global object is unavailable in this environment")}var n=t.Promise;if(n){var r=null;try{r=Object.prototype.toString.call(n.resolve())}catch(e){}if("[object Promise]"===r&&!n.cast)return}t.Promise=nt}var K=void 0;K=Array.isArray?Array.isArray:function(t){return"[object Array]"===Object.prototype.toString.call(t)};var L=K,N=0,U=void 0,W=void 0,z=function(t,e){Q[N]=t,Q[N+1]=e,N+=2,2===N&&(W?W(a):R())},B="undefined"!=typeof window?window:void 0,G=B||{},H=G.MutationObserver||G.WebKitMutationObserver,I="undefined"==typeof self&&"undefined"!=typeof process&&"[object process]"==={}.toString.call(process),J="undefined"!=typeof Uint8ClampedArray&&"undefined"!=typeof importScripts&&"undefined"!=typeof MessageChannel,Q=new Array(1e3),R=void 0;R=I?o():H?s():J?u():void 0===B&&"function"==typeof require?f():c();var V=Math.random().toString(36).substring(2),X=void 0,Z=1,$=2,tt=0,et=function(){function t(t,e){this._instanceConstructor=t,this.promise=new t(p),this.promise[V]||x(this.promise),L(e)?(this.length=e.length,this._remaining=e.length,this._result=new Array(this.length),0===this.length?A(this.promise,this._result):(this.length=this.length||0,this._enumerate(e),0===this._remaining&&A(this.promise,this._result))):S(this.promise,C())}return t.prototype._enumerate=function(t){for(var e=0;this._state===X&&e<t.length;e++)this._eachEntry(t[e],e)},t.prototype._eachEntry=function(t,e){var n=this._instanceConstructor,r=n.resolve;if(r===h){var o=void 0,i=void 0,s=!1;try{o=t.then}catch(u){s=!0,i=u}if(o===l&&t._state!==X)this._settledAt(t._state,e,t._result);else if("function"!=typeof o)this._remaining--,this._result[e]=t;else if(n===nt){var c=new n(p);s?S(c,i):b(c,t,o),this._willSettleAt(c,e)}else this._willSettleAt(new n(function(e){return e(t)}),e)}else this._willSettleAt(r(t),e)},t.prototype._settledAt=function(t,e,n){var r=this.promise;r._state===X&&(this._remaining--,t===$?S(r,n):this._result[e]=n),0===this._remaining&&A(r,this._result)},t.prototype._willSettleAt=function(t,e){var n=this;j(t,void 0,function(t){return n._settledAt(Z,e,t)},function(t){return n._settledAt($,e,t)})},t}(),nt=function(){function t(e){this[V]=P(),this._result=this._state=void 0,this._subscribers=[],p!==e&&("function"!=typeof e&&Y(),this instanceof t?M(this,e):q())}return t.prototype["catch"]=function(t){return this.then(null,t)},t.prototype["finally"]=function(t){var n=this,r=n.constructor;return e(t)?n.then(function(e){return r.resolve(t()).then(function(){return e})},function(e){return r.resolve(t()).then(function(){throw e})}):n.then(t,t)},t}();return nt.prototype.then=l,nt.all=O,nt.race=k,nt.resolve=h,nt.reject=F,nt._setScheduler=n,nt._setAsap=r,nt._asap=z,nt.polyfill=D,nt.Promise=nt,nt.polyfill(),nt});
/* Umbrella (modified by Alain Bailleul) */
Array.from||(Array.from=function(){var a=Object.prototype.toString,b=function(b){return"function"==typeof b||"[object Function]"===a.call(b)},c=function(a){var b=+a;return isNaN(b)?0:0!=b&&isFinite(b)?(0<b?1:-1)*Math.floor(Math.abs(b)):b},d=Math.pow(2,53)-1,e=function(a){var b=c(a);return Math.min(Math.max(b,0),d)};return function(a){var c=this,d=Object(a);if(null==a)throw new TypeError("Array.from requires an array-like object - not null or undefined");var f,g=1<arguments.length?arguments[1]:void 0;if("undefined"!=typeof g){if(!b(g))throw new TypeError("Array.from: when provided, the second argument must be a function");2<arguments.length&&(f=arguments[2])}for(var h,i=e(d.length),j=b(c)?Object(new c(i)):Array(i),l=0;l<i;)h=d[l],j[l]=g?"undefined"==typeof f?g(h,l):g.call(f,h,l):h,l+=1;return j.length=i,j}}());var u;if (!self.document) {u=function(t,e){return null;}} else {u=function(t,e){return this instanceof u?t instanceof u?t:("string"==typeof t&&(t=this.select(t,e)),t&&t.nodeName&&(t=[t]),void(this.nodes=this.slice(t))):new u(t,e)};u.prototype={get length(){return this.nodes.length}},u.prototype.nodes=[],u.prototype.addClass=function(){return this.eacharg(arguments,function(t,e){t.classList.add(e)})},u.prototype.adjacent=function(i,t,n){return"number"==typeof t&&(t=0===t?[]:new Array(t).join().split(",").map(Number.call,Number)),this.each(function(r,o){var e=document.createDocumentFragment();u(t||{}).map(function(t,e){var n="function"==typeof i?i.call(this,t,e,r,o):i;return"string"==typeof n?this.generate(n):u(n)}).each(function(t){this.isInPage(t)?e.appendChild(u(t).clone().first()):e.appendChild(t)}),n.call(this,r,e)})},u.prototype.after=function(t,e){return this.adjacent(t,e,function(t,e){t.parentNode.insertBefore(e,t.nextSibling)})},u.prototype.append=function(t,e){return this.adjacent(t,e,function(t,e){t.appendChild(e)})},u.prototype.args=function(t,e,n){return"function"==typeof t&&(t=t(e,n)),"string"!=typeof t&&(t=this.slice(t).map(this.str(e,n))),t.toString().split(/[\s,]+/).filter(function(t){return t.length})},u.prototype.array=function(o){o=o;var i=this;return this.nodes.reduce(function(t,e,n){var r;return o?((r=o.call(i,e,n))||(r=!1),"string"==typeof r&&(r=u(r)),r instanceof u&&(r=r.nodes)):r=e.innerHTML,t.concat(!1!==r?r:[])},[])},u.prototype.attr=function(t,e,r){return r=r?"data-":"",this.pairs(t,e,function(t,e){return t.getAttribute(r+e)},function(t,e,n){t.setAttribute(r+e,n)})},u.prototype.before=function(t,e){return this.adjacent(t,e,function(t,e){t.parentNode.insertBefore(e,t)})},u.prototype.children=function(t){return this.map(function(t){return this.slice(t.children)}).filter(t)},u.prototype.BANll=function(f){f('#'+this.attr('id'));},u.prototype.BANlla=function(f,l){f('#'+this.attr('id'),l);},u.prototype.clone=function(){return this.map(function(t,e){var n=t.cloneNode(!0),r=this.getAll(n);return this.getAll(t).each(function(t,e){for(var n in this.mirror)this.mirror[n]&&this.mirror[n](t,r.nodes[e])}),n})},u.prototype.toU=function(){for(var t=[],e=0;e<this.nodes.length;e++)t.push(u(this.nodes[e]));return t},u.prototype.css=function(t,e){return this.pairs(t,e,function(t,e){return getStyle(t,e)},function(t,e,n){setStyle(t,e,n)})},u.prototype.getAll=function(t){return u([t].concat(u("*",t).nodes))},u.prototype.mirror={},u.prototype.mirror.events=function(t,e){if(t._e)for(var n in t._e)t._e[n].forEach(function(t){u(e).on(n,t)})},u.prototype.mirror.select=function(t,e){u(t).is("select")&&(e.value=t.value)},u.prototype.mirror.textarea=function(t,e){u(t).is("textarea")&&(e.value=t.value)},u.prototype.closest=function(e){return this.map(function(t){do{if(u(t).is(e))return t}while((t=t.parentNode)&&t!==document)})},u.prototype.data=function(t,e){return this.attr(t,e,!0)},u.prototype.each=function(t){return this.nodes.forEach(t.bind(this)),this},u.prototype.eacharg=function(n,r){return this.each(function(e,t){this.args(n,e,t).forEach(function(t){r.call(this,e,t)},this)})},u.prototype.empty = function() {return this.each(function(e) {for (var t = e.children, r = 0; r < t.length; r++) {var i = t[r];var n = document.getElementById(i.id);if (n) {var o = n.cloneNode(!0);n.parentNode.replaceChild(o, n)}}for (; e.firstChild;) e.removeChild(e.firstChild)})},u.prototype.filter=function(e){var t=function(t){return t.matches=t.matches||t.msMatchesSelector||t.webkitMatchesSelector,t.matches(e||"*")};return"function"==typeof e&&(t=e),e instanceof u&&(t=function(t){return-1!==e.nodes.indexOf(t)}),u(this.nodes.filter(t))},u.prototype.find=function(e){return this.map(function(t){return u(e||"*",t)})},u.prototype.first=function(){return this.nodes[0]||!1},u.prototype.bananofirst=function(){return u(this.nodes[0])||!1},u.prototype.generate=function(e){return/^\s*<t(head|body|foot)[> ]/.test(e)?u(document.createElement("table")).html(e).children().nodes:/^\s*<tr[> ]/.test(e)?u(document.createElement("table")).html(e).children().children().nodes:/^\s*<t(h|d)[> ]/.test(e)?u(document.createElement("table")).html(e).children().children().children().nodes:/^\s*</.test(e)?u(document.createElement("div")).html(e).children().nodes:document.createTextNode(e)},u.prototype.contents=function(a){return Array.from(a.nodes[0].childNodes)},u.prototype.handle=function(){var t=this.slice(arguments).map(function(e){return"function"==typeof e?function(t){t.preventDefault(),e.apply(this,arguments)}:e},this);return this.on.apply(this,t)},u.prototype.hasClass=function(){return this.is("."+this.args(arguments).join("."))},u.prototype.html=function(e){return void 0===e?this.first().innerHTML||"":this.each(function(t){t.innerHTML=e})},u.prototype.is=function(t){return 0<this.filter(t).length},u.prototype.isInPage=function(t){return t!==document.body&&document.body.contains(t)},u.prototype.bananolast=function(){return u(this.nodes[this.length-1])||!1},u.prototype.last=function(){return this.nodes[this.length-1]||!1},u.prototype.map=function(t){return t?u(this.array(t)).unique():this},u.prototype.not=function(e){return this.filter(function(t){return!u(t).is(e||!0)})},u.prototype.off=function(t){return this.eacharg(t,function(e,n){u(e._e?e._e[n]:[]).each(function(t){e.removeEventListener(n,t)})})},u.prototype.on=function(t,e,r){if("string"==typeof e){var o=e;e=function(e){var n=arguments;u(e.currentTarget).find(o).each(function(t){if(t===e.target||t.contains(e.target)){try{Object.defineProperty(e,"currentTarget",{get:function(){return t}})}catch(t){}r.apply(t,n)}})}}var n=function(t){return e.apply(this,[t].concat(t.detail||[]))};return this.eacharg(t,function(t,e){t.addEventListener(e,n),t._e=t._e||{},t._e[e]=t._e[e]||[],t._e[e].push(n)})},u.prototype.pairs=function(n,t,e,r){if(void 0!==t){var o=n;(n={})[o]=t}return"object"==typeof n?this.each(function(t){for(var e in n)r(t,e,n[e])}):this.length?e(this.first(),n):""},u.prototype.param=function(e){return Object.keys(e).map(function(t){return this.uri(t)+"="+this.uri(e[t])}.bind(this)).join("&")},u.prototype.parent=function(t){return this.map(function(t){return t.parentNode}).filter(t)},u.prototype.prepend=function(t,e){return this.adjacent(t,e,function(t,e){t.insertBefore(e,t.firstChild)})},u.prototype.remove=function(){return this.each(function(t){u(t).empty();t.parentNode&&t.parentNode.removeChild(t)})},u.prototype.removeClass=function(){return this.eacharg(arguments,function(t,e){t.classList.remove(e)})},u.prototype.replace=function(t,e){var n=[];return this.adjacent(t,e,function(t,e){n=n.concat(this.slice(e.children)),t.parentNode.replaceChild(e,t)}),u(n)},u.prototype.scroll=function(){return this.first().scrollIntoView({behavior:"smooth"}),this},u.prototype.select=function(t,e){return t=t.replace(/^\s*/,"").replace(/\s*$/,""),/^</.test(t)?u().generate(t):(e||document).querySelectorAll(t)},u.prototype.serialize=function(){var r=this;return this.slice(this.first().elements).reduce(function(e,n){return!n.name||n.disabled||"file"===n.type?e:/(checkbox|radio)/.test(n.type)&&!n.checked?e:"select-multiple"===n.type?(u(n.options).each(function(t){t.selected&&(e+="&"+r.uri(n.name)+"="+r.uri(t.value))}),e):e+"&"+r.uri(n.name)+"="+r.uri(n.value)},"").slice(1)},u.prototype.siblings=function(t){return this.parent().children(t).not(this)},u.prototype.size=function(){return this.first().getBoundingClientRect()},u.prototype.hasAttr=function(t){return null!=this.attr(t)},u.prototype.slice=function(t){return t&&0!==t.length&&"string"!=typeof t&&"[object Function]"!==t.toString()?t.length?[].slice.call(t.nodes||t):[t]:[]},u.prototype.str=function(e,n){return function(t){return"function"==typeof t?t.call(this,e,n):t.toString()}},u.prototype.text=function(e){return void 0===e?this.first().textContent||"":this.each(function(t){t.textContent=e})},u.prototype.toggleClass=function(t,e){return!!e===e?this[e?"addClass":"removeClass"](t):this.eacharg(t,function(t,e){t.classList.toggle(e)})},u.prototype.trigger=function(t){var o=this.slice(arguments).slice(1);return this.eacharg(t,function(t,e){var n,r={bubbles:!0,cancelable:!0,detail:o};try{n=new window.CustomEvent(e,r)}catch(t){(n=document.createEvent("CustomEvent")).initCustomEvent(e,!0,!0,o)}t.dispatchEvent(n)})},u.prototype.checked=function (bool) {if (bool === undefined) {return this.checked().value || false;} return this.each(function (node) {node.checked = bool;});},u.prototype.value=function (text) {if (text === undefined) {return this.first().value || '';} return this.each(function (node) {node.value = text;});},u.prototype.unique=function(){return u(this.nodes.reduce(function(t,e){return null!=e&&!1!==e&&-1===t.indexOf(e)?t.concat(e):t},[]))},u.prototype.uri=function(t){return encodeURIComponent(t).replace(/!/g,"%21").replace(/'/g,"%27").replace(/\(/g,"%28").replace(/\)/g,"%29").replace(/\*/g,"%2A").replace(/%20/g,"+")},u.prototype.wrap=function(t){return this.map(function(e){return u(t).each(function(t){(function(t){for(;t.firstElementChild;)t=t.firstElementChild;return u(t)})(t).append(e.cloneNode(!0)),e.parentNode.replaceChild(t,e)})})},"object"==typeof module&&module.exports&&(module.exports=u,module.exports.u=u);};
/* DeepMerge */
!function(e,r){"object"==typeof exports&&"undefined"!=typeof module?module.exports=r():"function"==typeof define&&define.amd?define(r):(e=e||self).deepmerge=r()}(this,function(){var o=function(e){return!(!(n=e)||"object"!=typeof n||(r=e,"[object RegExp]"===(t=Object.prototype.toString.call(r))||"[object Date]"===t||function(e){return e.$$typeof===c}(r)));var r,t,n};var c="function"==typeof Symbol&&Symbol.for?Symbol.for("react.element"):60103;function u(e,r){return!1!==r.clone&&r.isMergeableObject(e)?y((t=e,Array.isArray(t)?[]:{}),e,r):e;var t}function a(e,r,t){return e.concat(r).map(function(e){return u(e,t)})}function e(e){return Object.keys(e).concat((r=e,Object.getOwnPropertySymbols?Object.getOwnPropertySymbols(r).filter(function(e){return r.propertyIsEnumerable(e)}):[]));var r}function i(e,r){try{return r in e}catch(e){return!1}}function f(n,o,c){var a={};return c.isMergeableObject(n)&&e(n).forEach(function(e){a[e]=u(n[e],c)}),e(o).forEach(function(e){var r,t;(!i(r=n,t=e)||Object.hasOwnProperty.call(r,t)&&Object.propertyIsEnumerable.call(r,t))&&(i(n,e)&&c.isMergeableObject(o[e])?a[e]=function(e,r){if(!r.customMerge)return y;var t=r.customMerge(e);return"function"==typeof t?t:y}(e,c)(n[e],o[e],c):a[e]=u(o[e],c))}),a}function y(e,r,t){(t=t||{}).arrayMerge=t.arrayMerge||a,t.isMergeableObject=t.isMergeableObject||o,t.cloneUnlessOtherwiseSpecified=u;var n=Array.isArray(r);return n===Array.isArray(e)?n?t.arrayMerge(e,r,t):f(e,r,t):u(r,t)}return y.all=function(e,t){if(!Array.isArray(e))throw new Error("first argument should be an array");return e.reduce(function(e,r){return y(e,r,t)},{})},y});
/* DeepClone */
function DeepClone(e){if(!e)return e;var o;if([Number,String,Boolean].forEach(function(n){e instanceof n&&(o=n(e))}),void 0===o)if("[object Array]"===Object.prototype.toString.call(e))o=[],e.forEach(function(e,n,t){o[n]=DeepClone(e)});else if("object"==typeof e)if(e.nodeType&&"function"==typeof e.cloneNode)o=e.cloneNode(!0);else if(e.prototype)o=e;else if(e instanceof Date)o=new Date(e);else for(var n in o={},e)o[n]=DeepClone(e[n]);else o=e;return o}
!function(){if (!self.document) {return;};function t(){return 0===i?void(e.text=e.text.replace(a,"")):(notificationTotalstr=i,i>o&&(notificationTotalstr=o+"+"),void(a.exec(e.text)?e.text=e.text.replace(a,"("+notificationTotalstr+") "):e.text="("+notificationTotalstr+") "+e.text))}function n(t){return!isNaN(parseFloat(t))&&isFinite(t)}var e=document.getElementsByTagName("title")[0],i=0,o=Number.MAX_VALUE,a=/^\(\d*\+?\) /;window.titlenotifier={add:function(n){"undefined"==typeof n&&(n=1),i+=parseInt(n,10),t()},sub:function(n){"undefined"==typeof n&&(n=1),n=parseInt(n,10),0!==i&&(n>i?i=0:i-=parseInt(n,10),t())},set:function(e){!n(e)||0>e||(i=parseInt(e,10),t())},reset:function(){i=0,t()},get:function(){return i},max:function(e){!n(e)||0>=e||(o=parseInt(e,10),t())}}}();
/* BANano jCore */
function ABMRaiseEvent(eName, eParNames, eParValues) {var eNames = eval(eParNames);var eValues = eval(eParValues);var EventParams='';var EventValues='';var Pars= {};Pars.eventname = eName.toLowerCase();for (var i=0;i<eNames.length;i++) {if (i>0) {EventParams = EventParams + ',';}EventParams = EventParams + eNames[i].toLowerCase();}Pars.eventparams = EventParams;for (var i=0;i<eNames.length;i++) {Pars[eNames[i].toLowerCase()] = eValues[i];}b4j_raiseEvent('page_parseevent', Pars);}var bananoglobal=this;var DateTime;var bananoWS;var bananoBlocks={};var _BU=0;function GetBananoBlock(name, id, pfix) {var result = bananoBlocks[name + '_' + id];if (result === undefined) {result = bananoBlocks[name + '_wb_' + id];}if (result === undefined) {return '';}return result.replace(/{PFIX}/g,pfix);}function BANUUID() {var d = new Date().getTime();var d2 = (performance && performance.now && (performance.now()*1000)) || 0;return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {var r = Math.random() * 16;if(d > 0){r = (d + r)%16 | 0;d = Math.floor(d/16);} else {r = (d2 + r)%16 | 0;d2 = Math.floor(d2/16);}return (c === 'x' ? r : (r & 0x3 | 0x8)).toString(16);});}function BANC(ccName, selv, layName, layEventName, layPar, custProp) {var v=new ccName();v['initialize'](selv, layName, layEventName);v['designercreateview'](layPar,custProp);return v;}function BANToBase(s) {var i = s.lastIndexOf("_");if (i>-1) {return s.substring(i+1);}return s;};function BANurlBase64ToUint8Array(base64String) {var padding = '='.repeat((4 - base64String.length % 4) % 4);var base64 = (base64String + padding).replace(/\-/g, '+').replace(/_/g, '/');var rawData = window.atob(base64);var outputArray=new Uint8Array(rawData.length);for (var i = 0; i < rawData.length; ++i) {outputArray[i] = rawData.charCodeAt(i);}return outputArray;}function BANano_getParams(url) {if (!self.document) {return;};var params = {};var parser = document.createElement('a');parser.href = url;var query = parser.search.substring(1);var vars = query.split('&');for (var i = 0; i < vars.length; i++) {var pair = vars[i].split('=');if (pair[0]!='') {if (pair.length==2) {params[pair[0]] = decodeURIComponent(pair[1]);} else {params[pair[0]] = true;}}}return params;};function BANano_getParamDefault(url, key, def) {var params = BANano_getParams(url);var ret = params[key];if (ret === undefined) {return def;}return ret;};function gBANp(args) {var i=args.length - 1;while (i >=-1) {if (args[i] instanceof Promise) {return args[i];}i--;}return null;};function BANFetch(typ, file, opts, enc) {return new Promise(function(resolve, reject) {switch (typ) {case 'D':if (opts) {fetch(file,opts).then(function(data) {return data.blob();}).then(function (blob) {resolve(readAsDataURL(blob));});} else {fetch(file).then(function(data) {return data.blob();}).then(function (blob) {resolve(readAsDataURL(blob));});}break;case 'T':if (opts) {fetch(file,opts).then(function(data) {return data.blob();}).then(function (blob) {resolve(readAsText(blob,enc));});} else {fetch(file).then(function(data) {return data.blob();}).then(function (blob) {resolve(readAsText(blob,enc));});}break;case 'A':if (opts) {fetch(file,opts).then(function(data) {return data.blob();}).then(function (blob) {resolve(readAsArrayBuffer(blob));});} else {fetch(file).then(function(data) {return data.blob();}).then(function (blob) {resolve(readAsArrayBuffer(blob));});}break;case 'J':if (opts) {fetch(file, opts).then(function(data) {if (data.ok) {resolve(data.json());} else {reject(new Error('Something went wrong'));}});} else {fetch(file).then(function(data) {if (data.ok) {resolve(data.json());} else {reject(new Error('Something went wrong'));}});}break;}});}function readAsDataURL(file) {if (!(file instanceof Blob)) {throw new TypeError('Must be a File or Blob')}return new Promise(function(resolve, reject) {var reader = new FileReader();reader.onload = function(e) { resolve(e.target.result) };reader.onerror = function(e) { reject(new Error('Error reading' + file.name + ': ' + e.target.result))};reader.readAsDataURL(file);});};function readAsText(file, enc) {if (!(file instanceof Blob)) {throw new TypeError('Must be a File or Blob')}return new Promise(function(resolve, reject) {var reader = new FileReader();reader.onload = function(e) { resolve(e.target.result) };reader.onerror = function(e) { reject(new Error('Error reading' + file.name + ': ' + e.target.result))};if (enc!='') {reader.readAsText(file, enc);} else {reader.readAsText(file);}});};function readAsArrayBuffer(file) {if (!(file instanceof Blob)) {throw new TypeError('Must be a File or Blob')}return new Promise(function(resolve, reject) {var reader = new FileReader();reader.onload = function(e) { resolve(e.target.result) };reader.onerror = function(e) { reject(new Error('Error reading' + file.name + ': ' + e.target.result))};reader.readAsArrayBuffer(file);});};function BANUpload(path, file) {return fetch(path, {method: 'POST',headers: {"pageId": window.name,"fileName": file.name},body: file});};function HexFromBytes(byteArray) {var s = '0x';byteArray.forEach(function(byte) {s += ('0' + (byte & 0xFF).toString(16)).slice(-2);});return s;}function BANanoPromise() {var res, rej;var promise=new Promise(function (resolve, reject) {res = resolve;rej = reject;});promise.resolve = res;promise.reject = rej;return promise;}function BANano_nf(num, minpl) {let arr = num.toString().split(".");arr[0] = arr[0].padStart(minpl, "0");let tst = 0.1;let cch = tst.toLocaleString().substring(1,2);let str = arr.join(cch);str = BANano_nwc(str,cch);return str;};function BANano_nf2(num, minpl, form) {let arr = num.toString().split(".");arr[0] = arr[0].padStart(minpl, "0");let tst = 0.1;let cch = tst.toLocaleString().substring(1,2);let str = arr.join(cch);if (form) {str = BANano_nwc(str,cch);}return str;};function BANano_nwc(x, cch) {var parts = x.toString().split(cch);cch2=",";if (cch===",") {cch2=".";}parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, cch2);return parts.join(cch);};function BANano_r(number, decimals) {return +(Math.round(number + "e+" + decimals) + "e-" + decimals);};function BANano_r2f(number, decimals, minf) {let v = +(Math.round(number + "e+" + decimals) + "e-" + decimals);return v.toFixed(minf);};var sleep = function sleep(milliseconds) {return new Promise(function (resolve) {return setTimeout(resolve, milliseconds);});};function BANto(promise) {return promise.then(function (data) {var o = {};o['_error'] = null;o['_result'] = data;return o;}).catch(function (err) {var o = {};o['_error'] = err;o['_result'] = null;return o;});}function BANanoMethodVarsToMap(m,b,n) {if (b) {m['subname']=n;}return m;};function BANanoExec(functionName, context, args) {var args = Array.prototype.slice.call(arguments, 2);var namespaces = functionName.split('.');var func = namespaces.pop();for(var i = 0; i < namespaces.length; i++) {context = context[namespaces[i]];}return context[func].apply(context, args);};function BANanoSuffixFromID(id) {var i=id.lastIndexOf('_');if (i>0) {return id.substring(i+1);}return -1;};function banano_isconnected(tag, returnMethod, obj) {if (!self.document) {return;};var img = document.createElement('img');img.onerror = function() {obj[returnMethod](tag, false);};img.onload = function() {obj[returnMethod](tag, true);};img.src = './assets/donotdelete.gif?rand=' +((new Date()).getTime());}function setStyle(el, property, value) {el.style[property] = value;}function getStyle(el, property) {var style = window.getComputedStyle ? getComputedStyle(el, null) : el.currentStyle;return style[property];}String.prototype.equalsIgnoreCase = function(otherString) {return (this.toUpperCase().localeCompare(otherString.toUpperCase())===0);};String.prototype.contains = function(otherString) {return (this.indexOf(otherString)>-1);};String.prototype.getBytes = function() {var utf8 = [];var str = this;for (var i=0; i < str.length; i++) {var charcode = str.charCodeAt(i);if (charcode < 0x80) utf8.push(charcode);else if (charcode < 0x800) {utf8.push(0xffffffc0 | (charcode >> 6), 0xffffff80 | (charcode & 0x3f));} else if (charcode < 0xd800 || charcode >= 0xe000) {utf8.push(0xffffffe0 | (charcode >> 12), 0xffffff80 | ((charcode>>6) & 0x3f), 0xffffff80 | (charcode & 0x3f));} else {utf8.push(0xef, 0xbf, 0xbd);}}return utf8;};function banano_bytesToString(array) {var str = '',i;var data = new Uint8Array(array);for (i = 0; i < data.length; i++) {var value = data[i];if (value < 0x80) {str += String.fromCharCode(value);} else if (value > 0xBF && value < 0xE0) {str += String.fromCharCode((value & 0x1F) << 6 | data[i + 1] & 0x3F);i += 1;} else if (value > 0xDF && value < 0xF0) {str += String.fromCharCode((value & 0x0F) << 12 | (data[i + 1] & 0x3F) << 6 | data[i + 2] & 0x3F);i += 2;}}return str;};function banano_getB4JKeyAt(outof, index) {var getkeyatkeycounter=0;for (var getkeyatkey in outof) {if (outof.hasOwnProperty(getkeyatkey)) {if (getkeyatkeycounter==index) {return getkeyatkey;}getkeyatkeycounter++;}}return '';};function banano_getB4JValueAt(outof, index) {var getkeyatkeycounter=0;for (var getkeyatkey in outof) {if (outof.hasOwnProperty(getkeyatkey)) {if (getkeyatkeycounter==index) {return outof[getkeyatkey];}getkeyatkeycounter++;}}return '';};function StringBuilder() {this.strings = new Array("");};StringBuilder.prototype.init = function () {var _B=this;_B.strings = new Array("");};StringBuilder.prototype.append = function (value) {var _B=this;if (value) {this.strings.push(value);}return _B;};StringBuilder.prototype.insert = function (offset, value) {var _B=this;var str = this.strings.join("");this.strings = new Array("");this.strings.push([str.slice(0, offset), value, str.slice(offset)].join(''));return _B;};StringBuilder.prototype.remove = function (startoffset, endoffset) {var _B=this;var str = this.strings.join("");this.strings = new Array("");this.strings.push([str.slice(0, startoffset), str.slice(endoffset)].join(''));return _B;};StringBuilder.prototype.length = function() {return this.strings.join("").length;};StringBuilder.prototype.toString = function () {return this.strings.join("");};function Param(obj, headers) {if (typeof (obj) === 'string' || Object.prototype.toString.call(obj) === '[object FormData]') return obj;if (/application\/json/i.test(headers['Content-type']) || Object.prototype.toString.call(obj) === '[object Array]') return JSON.stringify(obj);var encoded = [];for (var prop in obj) {if (obj.hasOwnProperty(prop)) {encoded.push(encodeURIComponent(prop) + '=' + encodeURIComponent(obj[prop]));}}return encoded.join('&');};function banano_sf(_text,_onlynbsp){var _B=this;try {var _s=new StringBuilder();var _v='' + _text;if (_onlynbsp) {_v = _v.split("{NBSP}").join(" ");} else {_v = _v.split("(\r\n|\n\r|\r|\n)").join("<br>");_v = _v.split("{B}").join("<b>");_v = _v.split("{/B}").join("</b>");_v = _v.split("{I}").join("<i>");_v = _v.split("{/I}").join("</i>");_v = _v.split("{U}").join("<ins>");_v = _v.split("{/U}").join("</ins>");_v = _v.split("{SUB}").join("<sub>");_v = _v.split("{/SUB}").join("</sub>");_v = _v.split("{SUP}").join("<sup>");_v = _v.split("{/SUP}").join("</sup>");_v = _v.split("{BR}").join("<br>");_v = _v.split("{WBR}").join("<wbr>");_v = _v.split("{NBSP}").join("&nbsp;");_v = _v.split("{AL}").join("<a rel=\"nofollow\" target=\"_blank\" href=\"");_v = _v.split("{AT}").join("\">");_v = _v.split("{/AL}").join("</a>");_v = _v.split("{AS}").join(" title=\"");_v = _v.split("{/AS}").join("\"");while (_v.indexOf("{C:")>-1) {_v = _B.replacefirst(_v,"{C:","<span style=\"color:");_v = _B.replacefirst(_v,"}","\">");_v = _B.replacefirst(_v,"{/C}","</span>");}_v = _v.split("{CODE}").join("<pre><code>");_v = _v.split("{/CODE}").join("</code></pre>");while (_v.indexOf("{ST:")>-1) {_v = _B.replacefirst(_v,"{ST:","<span style=\"");_v = _B.replacefirst(_v,"}","\">");_v = _B.replacefirst(_v,"{/ST}","</span>");}var _start=_v.indexOf("{IC:");while (_start>-1) {var _stop=_v.indexOf("{/IC}");var _vv="";if (_stop>0) {_vv = _v.substring(_start,_stop+5);} else {break;}var _iconcolor=_vv.substring(4,11);var _iconname=_vv.substring(12,_vv.length-5);var _repl="";switch (_iconname.substring(0,3).toLowerCase()) {case "mdi":_repl = "<i style=\"color: "+_iconcolor+"\" class=\""+_iconname+"\"></i>";break;case "fa ":_repl = "<i style=\"color: "+_iconcolor+"\" class=\""+_iconname+"\"></i>";break;case "fa-":_repl = "<i style=\"color: "+_iconcolor+"\" class=\""+_iconname+"\"></i>";break;default:_repl = "<i style=\"color: "+_iconcolor+"\" class=\"material-icons\">"+_iconname+"</i>";break;}_v = _v.split(_vv).join(_repl);_start = _v.indexOf("{IC:");}}_s.append(_v);return _s.toString();}catch(err) {}};function replacefirst(_s,_searchfor,_replacewith){try {var _i=_s.indexOf(_searchfor);if (_i>-1) {return _s.substring(0,_i)+_replacewith+_s.substring(_i+_searchfor.length);} else {return _s;}}catch(err) {}};