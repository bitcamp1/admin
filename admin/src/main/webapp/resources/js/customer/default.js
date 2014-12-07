//PNG ie6 패치
function setPng24(obj) {
    obj.width=obj.height=1;
    obj.className=obj.className.replace(/\bpng24\b/i,'');
    obj.style.filter =
    "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');"
    obj.src='';
    return '';
}

//  달력 스크립터
function ClrDate(p_idx)
{
	if( p_idx == "1")
	{
		document.schFrm.sDate.value = "";
		document.schFrm.eDate.value = "";
	}
	if( p_idx == "2")
	{
		document.schFrm.sDate.value = "";
		document.schFrm.eDate.value = "";
	}
}


//달력 보이기/감추기
function showCalendar(Status, Pos)
{
//	if (Str == "add") {
		divLeft = event.clientX;
		divTop = event.clientY + 3;
//	} else if (Str == "modify") {
//		divLeft = 114;
//		divTop = 239;
//	}
	if (Status == "vision") {
		document.all.div_calendar.style.visibility = "visible";
		self._Calendar.location.href = "calendar.asp?po="+ Pos;
		document.all.div_calendar.style.left = divLeft;
		document.all.div_calendar.style.top = divTop;
	} else if (Status == "hidden") {
		self._Calendar.location.href = "calendar.asp";
		self.document.all.div_calendar.style.visibility = "hidden";
	}
}

function insertDate(Fdate, Tdate)
{
	var frm = document.schFrm;
	frm.sDate.value = Fdate;
	frm.eDate.value = Tdate;
}

//날짜입력
function insertCalendar(insDate, Pos)
{
	if (Pos == "1") {
		parent.schFrm.sDate.value = insDate;
		self.close();
	} else if (Pos == "2") {
		parent.schFrm.eDate.value = insDate;
		self.close();
	}
	showCalendar('hidden','');
}


function setFocus(Str)
{
	if ( Str == "login" ) {
		var frm = document.lgnFrm;
		frm.uid.style.backgroundImage = "url(/images/bg_input_id.gif)";
		frm.uid.style.backgroundRepeat = "no-repeat";
		frm.upwd.style.backgroundImage = "url(/images/bg_input_pwd.gif)";
		frm.upwd.style.backgroundRepeat = "no-repeat";

		if (frm.uid.value == "") {
			frm.uid.focus();
		} else {
			frm.upw.focus();
		}
		setFocusBorder();
	}
}
function setFocusBorder()
{
	var o1 = document.getElementById("uid");
	var o2 = document.getElementById("upwd");
	if ( window.addEventListener ) {
		o1.addEventListener("focus", new Function("onfocusborder('uid')"), false);
		o1.addEventListener("blur", new Function("onblurborder('uid')"), false);
		o2.addEventListener("focus", new Function("onfocusborder('upwd')"), false);
		o2.addEventListener("blur", new Function("onblurborder('upwd')"), false);
	} else {
		o1.attachEvent("onfocus", new Function("onfocusborder('uid')"));
		o1.attachEvent("onblur", new Function("onblurborder('uid')"));
		o2.attachEvent("onfocus", new Function("onfocusborder('upwd')"));
		o2.attachEvent("onblur", new Function("onblurborder('upwd')"));
	}
}
function onfocusborder(Str)
{
	var o1 = document.getElementById("uid");
	var o2 = document.getElementById("upwd");
	if ( Str == "uid" ) {
		o1.style.border = "1px solid #0076A3";
		o1.style.backgroundImage = "url()";
	} else if ( Str == "upwd" ) {
		o2.style.border = "1px solid #0076A3";
		o2.style.backgroundImage = "url()";
		o2.select();
	}
}
function onblurborder(Str)
{
	var o1 = document.getElementById("uid");
	var o2 = document.getElementById("upwd");
	if ( Str == "uid" ) {
		o1.style.borderTop = "1px solid #6D6F70";
		o1.style.borderLeft = "1px solid #C9CBCC";
		o1.style.borderRight = "1px solid #C9CBCC";
		o1.style.borderBottom = "1px solid #D3D5D6";
		if ( o1.value == "" ) {
			o1.style.backgroundImage = "url(/images/bg_input_id.gif)";
			o1.style.backgroundRepeat = "no-repeat";
		}
	} else if ( Str == "upwd" ) {
		o2.style.borderTop = "1px solid #6D6F70";
		o2.style.borderLeft = "1px solid #C9CBCC";
		o2.style.borderRight = "1px solid #C9CBCC";
		o2.style.borderBottom = "1px solid #D3D5D6";
		if ( o2.value == "" ) {
			o2.style.backgroundImage = "url(/images/bg_input_pwd.gif)";
			o2.style.backgroundRepeat = "no-repeat";
		}
	}
}

function setPosTable()
{
	var o = document.getElementById("divLoginform");
	windowW = document.body.clientWidth;
	windowH = document.body.clientHeight;
	if ( windowH < 365 ) {
		o.style.top = '0px';
	} else {
		newPosH = parseInt((windowH - 354)/2)-20;
		o.style.top = newPosH+'px';
	}
}

function sendLogin()
{
	var frm = document.lgnFrm;
	if ( frm.mgb[0].checked == false && frm.mgb[1].checked == false  && frm.mgb[2].checked == false ) {
		alert("회원구분을 선택해 주세요.");
		frm.mgb[0].focus();
		return false;
	}
	if ( frm.uid.value == "" ) {
		alert("아이디를 입력해 주세요.");
		frm.uid.focus();
		return false;
	}
	if ( frm.upwd.value == "" ) {
		alert("비밀번호를 입력해 주세요.");
		frm.upwd.focus();
		return false;
	}
    var inpid = "X1102"
	var actUrl = "/start.asp?prgid="+ inpid;
	var params = setQueryString(frm);
	new ajax.xhr.Request(actUrl, params, calllogincheck, "POST", inpid, frm);
	//frm.action = actUrl;
	//frm.method = "post";
	//frm.submit();
}

function calllogincheck( req, pid, fname )
{
	var frm = fname;
	if ( req.readyState == 4 ) {
		if ( req.status == 200 ) {
			var retVal = req.responseText;
			//alert(retVal);
			var stateList = eval("("+ retVal +")");
			if ( pid == "X1102" ) {
			    if ( stateList[0].eno == "10" ) {
					frm.reset();
					if ( stateList[0].msg != "" )	alert( stateList[0].msg );
					if ( stateList[0].url != "" )	location.href = stateList[0].url;
				} else if ( stateList[0].eno == "11" ) {
					frm.reset();
					if ( stateList[0].msg != "" )	alert( stateList[0].msg );
					if ( stateList[0].url != "" )	GlbOpenPopupCtr(stateList[0].url,'_userLogin','550','350','0','0','0','0');
					//location.href = stateList[0].url;
				} else {
					if ( stateList[0].msg != "" )	alert( stateList[0].msg );
					if ( stateList[0].obj != "" && (stateList[0].act == "f" || stateList[0].act == "s") ) {
						var o = eval("frm."+ stateList[0].obj);
						if ( stateList[0].act == "f" ) o.focus();
						if ( stateList[0].act == "s" ) o.select();
					}
					return;
				}
			}
		} else {
			alert("Error!!");
		}
	}
}

function rollupchange(cmd, mno, vmno)
{
	var oImg = document.getElementById("lmn_"+ mno);
	var tmptxt1 = oImg.src.lastIndexOf('/');
	oImg.filters.blendTrans.stop();
	oImg.filters.blendTrans.Apply();
	if ( cmd == "over" ) {
		var tmpstr = oImg.src.substr(tmptxt1+1, oImg.src.length-tmptxt1)
		var tmp2 = tmpstr.substr(tmpstr.length-3,3);
		var myonimg = "navi_on_"+ mno +"."+ tmp2;
		oImg.src = "/images/top_left/"+ myonimg;
	} else if ( cmd == "out" ) {
		if ( mno != vmno ) {
			var tmpstr = oImg.src.substr(tmptxt1+1, oImg.src.length-tmptxt1)
			var tmp2 = tmpstr.substr(tmpstr.length-3,3);
			var myonimg = "navi_off_"+ mno +"."+ tmp2;
			oImg.src = "/images/top_left/"+ myonimg;
		}
	}
	oImg.filters.blendTrans.Play();
}

function rollupchangeleft(cmd, mno, vmno, pmno)
{
	var oImg = document.getElementById("lmnn_"+ mno);
	var tmptxt1 = oImg.src.lastIndexOf('/');
	var cmcnt = 0;
	var arrmno = vmno.split(",");
	for ( j=0;j<arrmno.length;j++ ) {
		if ( arrmno[j] == pmno ) {
			cmcnt += 1;
		}
	}
	if ( cmcnt < 1 ) {
		if ( cmd == "over" ) {
			var tmpstr = oImg.src.substr(tmptxt1+1, oImg.src.length-tmptxt1)
			var tmp2 = tmpstr.substr(tmpstr.length-3,3);
			var myonimg = "menu_"+ mno +"_over."+ tmp2;
			oImg.src = "images/"+ myonimg;
		} else if ( cmd == "out" ) {
			var tmpstr = oImg.src.substr(tmptxt1+1, oImg.src.length-tmptxt1)
			var tmp2 = tmpstr.substr(tmpstr.length-3,3);
			var myonimg = "menu_"+ mno +"."+ tmp2;
			oImg.src = "images/"+ myonimg;
		}
	}
}

//아이디_비밀번호찾기
function searchIdPwd()
{
	var newUrl = "/start.asp?prgid=X120&mgb="+ getRadioValue(document.lgnFrm.mgb);
	GlbOpenPopupCtr(newUrl,"_searchidpwd",'490','340','1','0','0','0')
}
//사용자인증
function verifyUser()
{
	var newUrl = "/start.asp?prgid=X130&mgb="+ getRadioValue(document.lgnFrm.mgb);
	GlbOpenPopupCtr(newUrl,"_verifyuser",'490','300','1','0','0','0')
}

function searchsuubmit(str)
{
	var frm = eval("document."+ str);
	if ( frm.sitem.length == null ) {
		//alert(frm.sitem);
		if ( frm.sitem.checked == false ) {
			alert("검색할 필드를 선택해 주세요.");
			frm.sitem.focus();
			return;
		}
		if ( frm.stext.value == "" ) {
			alert("검색어를 입력해 주세요.");
			frm.stext.focus();
			return;
		}
		frm.submit();
	} else {
		var chkcnt = 0;
		for ( i=0;i<frm.sitem.length;i++ ) {
			if ( frm.sitem[i].checked ) {
				chkcnt += 1;
			}
		}
		if ( chkcnt < 1 ) {
			alert("검색할 필드를 선택해 주세요.");
			return;
		}
		if ( frm.stext.value == "" ) {
			alert("검색어를 입력해 주세요.");
			frm.stext.focus();
			return;
		}
		frm.submit();
	}
}

//숫자 체크
function numberCheck(o)
{
	var val="0123456789";
	//var string= eval(str+".value");
	var string= o.value;
	var len=string.length;
	for(i=0;i<len;i++)
	{
		if(val.indexOf(string.substring(i,i+1))<0)
		{
			alert("숫자로만 입력해 주십시오.");
			o.select();
			o.focus();
			return;
		}
	}
}
//숫자 체크
function isNumber(str)
{
	var val="0123456789";
	var len=str.length;
	for(i=0;i<len;i++) {
		if(val.indexOf(str.substring(i,i+1))<0) {
			return 0;
		}
	}
	return 1;
}

//숫자 체크(,포함)
function numberCheck2(o)
{
	var val="0123456789,.";
	//var string= eval(str+".value");
	var string= o.value;
	var len=string.length;
	for(i=0;i<len;i++)
	{
		if(val.indexOf(string.substring(i,i+1))<0)
		{
			alert("숫자[,(콤마포함)]로만 입력해 주십시오.");
			o.select();
			o.focus();
			return;
		}
	}
}

//숫자 체크(,포함)
function numberCheck3(o)
{
	var val="0123456789-";
	//var string= eval(str+".value");
	var string= o.value;
	var len=string.length;
	for(i=0;i<len;i++)
	{
		if(val.indexOf(string.substring(i,i+1))<0)
		{
			alert("숫자[\'-\'(-포함)]로만 입력해 주십시오.");
			o.select();
			o.focus();
			return;
		}
	}
}

function isNumber2(number)
{
	var val="0123456789,";
	var len=number.length;
	for(i=0;i<len;i++) {
		if(val.indexOf(number.substring(i,i+1))<0) {
			return false;
		}
	}
	return true;
}

function numComma2(el)
{
	var re1 = /,/g;
	var re2 = /￦/g;
	var val = el.value;
	val = ''+ val;
	if ( !isNumber2(val) ) {
		alert("모두 숫자로만 입력해 주세요.");
		el.select();
		return;
	}
	if (val.length > 1 && val.substr(0,1) == "0") {
		val = val.substr(1,val.length-1);
	}
	val = val.replace(re1,'');
	val = val.replace(re2,'');
	var b = ''; // 값을 넣기위해서 미리 선언
    var i = 0; // 뒤에서 부터 몇번째인지를 체크하기 위한 변수 선언
    for (var k=(val.length-1); k>=0; k--) { // 숫자를 뒤에서 부터 루프를 이용하여 불러오기
        var a = val.charAt(k);
            if (i != 0 && i % 3 == 0) { // 뒤에서 3으로 나누었을때 나머지가 0인경우에 컴마 찍기 i가 0인 경우는 제일 뒤에 있다는 것이므로 컴마를 찍으면 안됨
                b = a + "," + b ;
            }
            else { // 나머지가 0인 아닌경우 컴마없이 숫자 붙이기
                b = a + b;
            }
            i++;
    }
    val = b;
    el.value = val;
}

//radio버튼의 체크된 값 알아내기
function getRadioValue(el)
{
	var cnt = el.length;
	var value = '';
	//alert(cnt);
	if ( cnt == undefined ) {
        if (el.checked==true) {
            value = el.value;
        }
        return value;
    } else {
    	for (i = 0; i < cnt; i++) {
    		if (el[i].checked) {
    			value = el[i].value;
    		}
    	}
	    return value;
    }
}

//checkbox를 radio버튼처럼
function GlbCheckConvRadio(Itemname, Num)
{
	var o1 = eval(Itemname);
	if (o1.length != null) {
		for (k=0;k<o1.length;k++) {
			if (parseInt(Num) != k) {
				o1[k].checked = false;
			}
		}
	}
}

//팝업창열기
function GlbOpenPopup(Url, Popstr, Width, Height, Scroll, Resize, Menubar, Status) //주소, 팝업차이름, 넓이, 길이, 스크롤, 크기조절, 메뉴바, 상태표시줄
{
	GlbOpenPopupCtr(Url, Popstr, Width, Height, Scroll, Resize, Menubar, Status);
}

function GlbOpenPopupCtr(Url, Popstr, Width, Height, Scroll, Resize, Menubar, Status) //주소, 팝업차이름, 넓이, 길이, 스크롤, 크기조절, 메뉴바, 상태표시줄
{
	var winWidth = Width;
	var winHeight = Height;
	var XPosition = (screen.width - winWidth)/2;
	if (Menubar == "1" || Menubar == "yes") {
		var YPosition = (screen.height - winHeight)/2 - 45;
	} else {
		var YPosition = (screen.height - winHeight)/2 - 20;
	}
	var newWin = window.open(Url, Popstr, "width="+ winWidth +", height="+ winHeight +", left="+ XPosition +", top="+ YPosition +", scrollbars="+ Scroll +", resizable="+ Resize +", menubar="+ Menubar +", status="+ Status);
	newWin.focus();
}
//팝업창을 특정위치에...
function GlbOpenPopupPos(Url, Popstr, Width, Height, XPos, YPos, Scroll, Resize, Menubar, Status)
{
	var winWidth = Width;
	var winHeight = Height;
	var newWin = window.open(Url, Popstr, "width="+ winWidth +", height="+ winHeight +", left="+ XPos +", top="+ YPos +", scrollbars="+ Scroll +", resizable="+ Resize +", menubar="+ Menubar +", status="+ Status);
	newWin.focus();
}

//우편번호 찾기팝업(공통)
function GlbZipcodeSearch(No)
{
	var zipUrl = "../zipcode/?po="+ No;
	GlbOpenPopupCtr(zipUrl,"_zipcode",'460','450','1','0','0','0')
}

//이름의 유효성 체크
function validNAME(str)
{
     if( str == '' ){
     	 alert("이름을 입력하세요");
         return 0;
     }
     var retVal = checkSpace( str );
     if( retVal != ""){
         alert("이름은 띄어쓰기 없이 입력하세요.");
         return 0;
     }
     if( !isHangul(str) ) {
         alert("이름을 한글로 입력하세요.");
         return 0;
     }
     if( str.length > 10 ) {
         alert("이름은 7자까지만 사용할 수 있습니다.");
         return 0;
     }
     return 1;
}

//입력된 값의 공백체크
function checkSpace(str)
{
     if(str.search(/\s/) != -1){
     	return 1;
     }
     else {
         return "";
     }
}

//한글입력 체크
function isHangul(s)
{
     var len;
     len = s.length;
     for (var i = 0; i < len; i++)  {
         if (s.charCodeAt(i) != 32 && (s.charCodeAt(i) < 44032 || s.charCodeAt(i) > 55203))
             return 0;
     }
     return 1;
}

//주민등록번호 체크
function checkDigit_socno(socno)
{
//	if(socno == "7002271786193" || socno == "6206012472026") {
//		return 'NO'; // 서비스센터 요청 by fywowng 04.09.09 추가
//	}
//	if(socno == "9010072000001") return 'Y';
	if (socno == "")	return 'N';
	var socnoStr = socno.toString();
     a = socnoStr.substring(0, 1);
     b = socnoStr.substring(1, 2);
     c = socnoStr.substring(2, 3);
     d = socnoStr.substring(3, 4);
     e = socnoStr.substring(4, 5);
     f = socnoStr.substring(5, 6);
     g = socnoStr.substring(6, 7);
     h = socnoStr.substring(7, 8);
     i = socnoStr.substring(8, 9);
     j = socnoStr.substring(9, 10);
     k = socnoStr.substring(10, 11);
     l = socnoStr.substring(11, 12);
     m = socnoStr.substring(12, 13);
	 month = socnoStr.substring(2,4);
	 day = socnoStr.substring(4,6);
	 socnoStr1 = socnoStr.substring(0, 7);
	 socnoStr2 = socnoStr.substring(7, 13);

	 /* 2004.03.20 월일 valid check */
	 if(month <= 0 || month > 12) return 'N';
	 if(day <= 0 || day > 31) return 'N';

     /* 2004.03.20 주민등록뒷자리 첫번째 번호 유효성 체크 (1,2,3,4) are only valid  -- by muse */
	 /* if(g > 4 || g == 0) return 'N'; */

	 /* 2004.05.07 주민등록번호에 공백이 들어가도 가입이 되는 경우가 발생하지 않도록 -- by fywowng*/
	 if (isNaN(socnoStr1) || isNaN(socnoStr2))
	 {
		 return 'N';
	 }

     temp=a*2+b*3+c*4+d*5+e*6+f*7+g*8+h*9+i*2+j*3+k*4+l*5;
     temp=temp%11;
     temp=11-temp;
     temp=temp%10;

     if(temp == m)
        return 'Y';
     else
        return 'N';
}

//사업자등록번호 체크
function check_BizRegNo(bizID)
{
	var checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1);
	var i, Sum=0, c2, remander;

	bizID = bizID.replace(/-/gi,'');
	for (i=0; i<=7; i++){
		Sum += checkID[i] * bizID.charAt(i);
	}
	c2 = "0" + (checkID[8] * bizID.charAt(8));
	c2 = c2.substring(c2.length - 2, c2.length);

	Sum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1));
	remander = (10 - (Sum % 10)) % 10 ;

	if(bizID.length != 10){
		return false;
	}else if (Math.floor(bizID.charAt(9)) != remander){
		return false;
	}else{
		return true;
	}
}

//아이디의 validation 체크
function isValid_id( str )
{
     // check whether input value is included space or not
     if( str == ""){
     	alert("아이디를 입력하세요.");
     	return false;
     }

	// 아이디 가운데 빈 공간이 없도록 체크한다.
     var retVal = checkSpace( str );
     if( retVal ) {
         alert("아이디는 빈 공간 없이 연속된 영문 소문자와 숫자만 사용할 수 있습니다.");
         return false;
     }

     // 아이디는 '-' 로 시작할 수 없다.
	if( str.charAt(0) < 'a' || str.charAt(0) > 'z' ) {
		alert("아이디의 첫문자는 영문소문자로 시작해야 합니다.");
		return false;
	}

     // 길이와 허용 문자를 체크한다.
     var isID = /^[a-z0-9_-]{4,15}$/;
     if( !isID.test(str) ) {
         alert("아이디는 4~15자의 영문 소문자와 숫자, - , _ 만 사용할 수 있습니다.");
         return false;
     }

	 var isNum = /\d/;
     var i;
     var cnt = 0;
     for( i=0; i < str.length; i++) {
     	if( isNum.test( str.substring( i, i+1 ) ) ) {
     		cnt++;
     	}
     	if( cnt > 7 ) {
     		alert("같은 문자가 7개 이상 사용되면 안됩니다.");
     		return false;
     	}
     }

     return true;
}

//비밀번호의 validation 체크
function isValid_passwd( str )
{
     var cnt = 0;
     if( str == ""){
     	alert("비밀번호를 입력하세요.");
     	return false;
     }

    /* check whether input value is included space or not  */
     var retVal = checkSpace( str );
     if( retVal ) {
         alert("비밀번호에는 공백이 있으면 안됩니다.");
         return false;
     }
	 if( str.length < 6 ){
			alert("비밀번호는 6~15자의 영문 소문자와 숫자를 사용할 수 있습니다.");
			return false;
	 }
     for( var i=0; i < str.length; ++i)
     {
         if( str.charAt(0) == str.substring( i, i+1 ) ) ++cnt;
     }
     if( cnt == str.length ) {
         alert("보안상의 이유로 한 문자로 연속된 비밀번호는 허용하지 않습니다.");
         return false;
     }
     var isPW = /^[a-z0-9]{6,15}$/;
     if( !isPW.test(str) ) {
         alert("비밀번호는 6~15자의 영문 소문자와 숫자를 사용할 수 있습니다.");
         return false;
     }
     return true;
}

//page이동
function goPage(No)
{
	var frm = document.pagingFrm;
	frm.action = "./";
	frm.method = "get";
	frm.pageno.value = No;
	frm.submit();
}

function addFields( pno )
{
	var newUrl = "?prgid="+ pno;
	GlbOpenPopupCtr(newUrl,"_addfieldsno",'620','400','1','0','0','0')
}

//추가시 이용
function addFieldSize( pno,wd,hd )
{
	var newUrl = pno;
	GlbOpenPopupCtr(newUrl,"_addfieldsno",wd,hd,'1','0','0','0')
}

//수정시 이용
function modifyFieldSize( pno,No,wd,hd )
{
	var newUrl = "?prgid="+ pno +"&idxNo="+ No;
	GlbOpenPopupCtr(newUrl,"_modifyfieldsno",wd,hd,'1','0','0','0')
}

//플레이어 이용
function playerFieldSize( pno, Str, Str1, No, sIdx, wd, hd )
{
	var newUrl = "?prgid="+ pno +"&un="+ Str +"&fn="+ Str1 +"&gn="+ No +"&sno="+ sIdx;
	GlbOpenPopupCtr(newUrl,"_playerfieldsno",wd,hd,'1','0','0','0')
}

//현재 폴더 이용
function popViewSize(pno, No, tarname, wd, hd)
{
	var newUrl = "?prgid="+ pno +"&idxNo="+ No;
	GlbOpenPopupCtr(newUrl, tarname, wd, hd,'1','0','0','0')
}

//다른 폴더 이용
function popCodeSize(pno, No, tarname, wd, hd)
{
	var newUrl = pno +"&idxNo="+ No;
	GlbOpenPopupCtr(newUrl, tarname, wd, hd,'1','0','0','0')
}

function popFieldSize(nUrl, tarname, wd, hd)
{
	var newUrl = nUrl;
	GlbOpenPopupCtr(newUrl, tarname, wd, hd,'1','0','0','0')
}

function popPostFieldSize(nUrl, proNo, gNo, idxNo, oCode, tarname, wd, hd)
{
	/*
	alert(nUrl);
	alert(proNo);
	alert(gNo);
	alert(idxNo);
	alert(oCode);
	alert(tarname);
	alert(wd);
	alert(hd);
	*/
	GlbOpenPopupCtr('', tarname, wd, hd,'1','0','0','0')
	var frm = document.postFrm;
	frm.prgid.value = proNo;
	frm.gNo.value = gNo;
	frm.idxNo.value = idxNo;
	frm.oCode.value = oCode;
	frm.method = "post";
	frm.action = nUrl;
	frm.target = tarname;
	frm.submit();
}

function popSize(nUrl, tarname, wd, hd)
{
	var newUrl = nUrl;
	GlbOpenPopupCtr(newUrl, tarname, wd, hd,'1','0','0','0')
}

function getFileExtension( filePath )
{
    var lastIndex = -1;
    lastIndex = filePath.lastIndexOf('.');
    var extension = "";
	if ( lastIndex != -1 ) {
	    extension = filePath.substring( lastIndex+1, filePath.len );
	} else {
	    extension = "";
	}
    return extension;
}

//자료 다운로드
function dataDownload( Str, Str1 )
{
	this.window.dummyMain.location.href="/_Member/_RecoderDownload.asp?fn="+ Str1 +"&dn="+ Str;
}

//자료삭제 적용
function dataDelect(Str, Str1, Str2, Str3)
{
	var cnfrm = confirm("선택된 "+ Str3 +"정보를 삭제하시겠습니까?\n\n선택하신 "+ Str3 +"정보의 DB가 삭제되며 복구할 수 없습니다.");
	if (cnfrm) {
        var frm = document.delFrm;
        var actUrl = "/_Member/_RecoderFileDel.asp";
        frm.action = actUrl;
    	frm.dn.value= Str;
    	frm.No.value= Str1;
    	frm.idxNo.value= Str2;
    	frm.fn.value= Str3;
    	frm.target = "dummyMain";
    	frm.method = "post";
    	frm.submit();
	}
}

//마우스 오버시
function fOver(str, bcolor, tcolor)
{
    str.style.backgroundColor=bcolor;
    str.style.Color=tcolor;
}
//마우스 아웃시 색상
function fOut(str, bcolor, tcolor)
{
    str.style.backgroundColor=bcolor;
    str.style.Color=tcolor;
}

function resetState(No)
{
    var frm = document.schFrm;
	if ( No == "0" ) {
	    frm.sDate.value = "";
    	frm.eDate.value = "";
    }
    else if ( No == "1" ) {
    	var statelen = frm.stateCode.length;
    	if (statelen > 1) {
    	    for (k=0;k<statelen;k++) {
    			frm.stateCode[k].checked = false;
    		}
    	} else if (statelen == undefined) {
    		frm.stateCode.checked = false;
    	}
    	var openinglen = frm.openingCode.length;
    	if (openinglen > 1) {
    	    for (k=0;k<openinglen;k++) {
    			frm.openingCode[k].checked = false;
    		}
    	} else if (openinglen == undefined) {
    		frm.openingCode.checked = false;
    	}
    }
    else if ( No == "3" || No == "4" ) {
    	var openinglen = frm.openingCode.length;
    	if (openinglen > 1) {
    	    for (k=0;k<openinglen;k++) {
    			frm.openingCode[k].checked = false;
    		}
    	} else if (openinglen == undefined) {
    		frm.openingCode.checked = false;
    	}
    }
	else if ( No == "2" ) {
    	var openlen = frm.openCode.length;
    	if (openlen > 1) {
    	    for (k=0;k<openlen;k++) {
    			frm.openCode[k].checked = false;
    		}
    	} else if (openlen == undefined) {
    		frm.openCode.checked = false;
    	}
    }
}