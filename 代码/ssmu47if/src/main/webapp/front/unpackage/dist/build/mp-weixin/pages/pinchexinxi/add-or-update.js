(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/pinchexinxi/add-or-update"],{"0cad":function(e,n,r){},"0d8e":function(e,n,r){"use strict";r.d(n,"b",(function(){return t})),r.d(n,"c",(function(){return u})),r.d(n,"a",(function(){return i}));var i={wPicker:function(){return Promise.all([r.e("common/vendor"),r.e("components/w-picker/w-picker")]).then(r.bind(null,"f61f"))}},t=function(){var e=this,n=e.$createElement;e._self._c},u=[]},"12e2":function(e,n,r){"use strict";r.r(n);var i=r("0d8e"),t=r("f1a4");for(var u in t)"default"!==u&&function(e){r.d(n,e,(function(){return t[e]}))}(u);r("ea5c");var a,c=r("f0c5"),o=Object(c["a"])(t["default"],i["b"],i["c"],!1,null,"eec6fe60",null,!1,i["a"],a);n["default"]=o.exports},1910:function(e,n,r){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var i=t(r("a34a"));function t(e){return e&&e.__esModule?e:{default:e}}function u(e,n,r,i,t,u,a){try{var c=e[u](a),o=c.value}catch(s){return void r(s)}c.done?n(o):Promise.resolve(o).then(i,t)}function a(e){return function(){var n=this,r=arguments;return new Promise((function(i,t){var a=e.apply(n,r);function c(e){u(a,i,t,c,o,"next",e)}function o(e){u(a,i,t,c,o,"throw",e)}c(void 0)}))}}var c=function(){Promise.all([r.e("common/vendor"),r.e("components/w-picker/w-picker")]).then(function(){return resolve(r("f61f"))}.bind(null,r)).catch(r.oe)},o={data:function(){return{ruleForm:{dingdanbianhao:this.getUUID(),qichemingcheng:"",qicheleixing:"",qichepinpai:"",chepai:"",pinchejiage:"",pincherenshu:"",zongjiage:"",pincheshijian:"",yonghuming:"",xingming:"",shenfenzheng:"",shouji:"",sfsh:"",shhf:"",ispay:"",userid:""},user:{},ro:{dingdanbianhao:!1,qichemingcheng:!1,qicheleixing:!1,qichepinpai:!1,chepai:!1,pinchejiage:!1,pincherenshu:!1,zongjiage:!1,pincheshijian:!1,yonghuming:!1,xingming:!1,shenfenzheng:!1,shouji:!1,sfsh:!1,shhf:!1,ispay:!1,userid:!1}}},components:{wPicker:c},computed:{zongjiage:{get:function(){return 1*this.ruleForm.pinchejiage*this.ruleForm.pincherenshu}}},onLoad:function(n){var r=this;return a(i.default.mark((function t(){var u,a,c,o;return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return r.ruleForm.pincheshijian=r.$utils.getCurDateTime(),u=e.getStorageSync("nowTable"),t.next=4,r.$api.session(u);case 4:if(a=t.sent,r.user=a.data,r.ruleForm.yonghuming=r.user.yonghuming,r.ruleForm.xingming=r.user.xingming,r.ruleForm.shenfenzheng=r.user.shenfenzheng,r.ruleForm.shouji=r.user.shouji,r.ruleForm.userid=e.getStorageSync("userid"),n.refid&&(r.ruleForm.refid=n.refid,r.ruleForm.nickname=e.getStorageSync("nickname")),!n.id){t.next=18;break}return r.ruleForm.id=n.id,t.next=16,r.$api.info("pinchexinxi",r.ruleForm.id);case 16:a=t.sent,r.ruleForm=a.data;case 18:if(!n.cross){t.next=83;break}c=e.getStorageSync("crossObj"),t.t0=i.default.keys(c);case 21:if((t.t1=t.t0()).done){t.next=81;break}if(o=t.t1.value,"dingdanbianhao"!=o){t.next=27;break}return r.ruleForm.dingdanbianhao=c[o],r.ro.dingdanbianhao=!0,t.abrupt("continue",21);case 27:if("qichemingcheng"!=o){t.next=31;break}return r.ruleForm.qichemingcheng=c[o],r.ro.qichemingcheng=!0,t.abrupt("continue",21);case 31:if("qicheleixing"!=o){t.next=35;break}return r.ruleForm.qicheleixing=c[o],r.ro.qicheleixing=!0,t.abrupt("continue",21);case 35:if("qichepinpai"!=o){t.next=39;break}return r.ruleForm.qichepinpai=c[o],r.ro.qichepinpai=!0,t.abrupt("continue",21);case 39:if("chepai"!=o){t.next=43;break}return r.ruleForm.chepai=c[o],r.ro.chepai=!0,t.abrupt("continue",21);case 43:if("pinchejiage"!=o){t.next=47;break}return r.ruleForm.pinchejiage=c[o],r.ro.pinchejiage=!0,t.abrupt("continue",21);case 47:if("pincherenshu"!=o){t.next=51;break}return r.ruleForm.pincherenshu=c[o],r.ro.pincherenshu=!0,t.abrupt("continue",21);case 51:if("zongjiage"!=o){t.next=55;break}return r.ruleForm.zongjiage=c[o],r.ro.zongjiage=!0,t.abrupt("continue",21);case 55:if("pincheshijian"!=o){t.next=59;break}return r.ruleForm.pincheshijian=c[o],r.ro.pincheshijian=!0,t.abrupt("continue",21);case 59:if("yonghuming"!=o){t.next=63;break}return r.ruleForm.yonghuming=c[o],r.ro.yonghuming=!0,t.abrupt("continue",21);case 63:if("xingming"!=o){t.next=67;break}return r.ruleForm.xingming=c[o],r.ro.xingming=!0,t.abrupt("continue",21);case 67:if("shenfenzheng"!=o){t.next=71;break}return r.ruleForm.shenfenzheng=c[o],r.ro.shenfenzheng=!0,t.abrupt("continue",21);case 71:if("shouji"!=o){t.next=75;break}return r.ruleForm.shouji=c[o],r.ro.shouji=!0,t.abrupt("continue",21);case 75:if("userid"!=o){t.next=79;break}return r.ruleForm.userid=c[o],r.ro.userid=!0,t.abrupt("continue",21);case 79:t.next=21;break;case 81:r.ruleForm.pincherenshu=0,r.ro.pincherenshu=!1;case 83:r.styleChange();case 84:case"end":return t.stop()}}),t)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},pincheshijianConfirm:function(e){console.log(e),this.ruleForm.pincheshijian=e.result,this.$forceUpdate()},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var n=this;return a(i.default.mark((function r(){var t,u;return i.default.wrap((function(r){while(1)switch(r.prev=r.next){case 0:if(n.ruleForm.zongjiage=n.zongjiage,t=e.getStorageSync("crossObj"),u=e.getStorageSync("crossTable"),t.pincherenshu=t.pincherenshu-n.ruleForm.pincherenshu,!(t.pincherenshu<0)){r.next=7;break}return n.$utils.msg("拼车人数数量不足"),r.abrupt("return");case 7:return r.next=9,n.$api.update("".concat(u),t);case 9:if(n.ruleForm.pinchejiage){r.next=12;break}return n.$utils.msg("拼车价格不能为空"),r.abrupt("return");case 12:if(!n.ruleForm.pinchejiage||n.$validate.isIntNumer(n.ruleForm.pinchejiage)){r.next=15;break}return n.$utils.msg("拼车价格应输入整数"),r.abrupt("return");case 15:if(n.ruleForm.pincherenshu){r.next=18;break}return n.$utils.msg("拼车人数不能为空"),r.abrupt("return");case 18:if(!n.ruleForm.pincherenshu||n.$validate.isIntNumer(n.ruleForm.pincherenshu)){r.next=21;break}return n.$utils.msg("拼车人数应输入整数"),r.abrupt("return");case 21:if(!n.ruleForm.zongjiage||n.$validate.isIntNumer(n.ruleForm.zongjiage)){r.next=24;break}return n.$utils.msg("总价格应输入整数"),r.abrupt("return");case 24:if(!n.ruleForm.id){r.next=29;break}return r.next=27,n.$api.update("pinchexinxi",n.ruleForm);case 27:r.next=31;break;case 29:return r.next=31,n.$api.add("pinchexinxi",n.ruleForm);case 31:n.$utils.msgBack("提交成功");case 32:case"end":return r.stop()}}),r)})))()},optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var n=new Date,r=n.getFullYear(),i=n.getMonth()+1,t=n.getDate();return"start"===e?r-=60:"end"===e&&(r+=2),i=i>9?i:"0"+i,t=t>9?t:"0"+t,"".concat(r,"-").concat(i,"-").concat(t)},toggleTab:function(e){this.$refs[e].show()}}};n.default=o}).call(this,r("543d")["default"])},"97c9":function(e,n,r){"use strict";(function(e){r("a96e");i(r("66fd"));var n=i(r("12e2"));function i(e){return e&&e.__esModule?e:{default:e}}e(n.default)}).call(this,r("543d")["createPage"])},ea5c:function(e,n,r){"use strict";var i=r("0cad"),t=r.n(i);t.a},f1a4:function(e,n,r){"use strict";r.r(n);var i=r("1910"),t=r.n(i);for(var u in i)"default"!==u&&function(e){r.d(n,e,(function(){return i[e]}))}(u);n["default"]=t.a}},[["97c9","common/runtime","common/vendor"]]]);