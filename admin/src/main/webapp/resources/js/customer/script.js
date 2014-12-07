function checksubmit( pid )
{
	var snderType;
	var frm = document.fieldFrm;
	if ( pid == "S111" ) {
		if ( frm.diCode.value == "" ) {
			alert("총판명을 선택해 주세요.");
			return;
		}
		if ( frm.frCode.value == "" ) {
			alert("지사명을 선택해 주세요.");
			return;
		}
		if ( frm.teCode.value == "" ) {
			alert("팀명을 선택해 주세요.");
			return;
		}
		if ( frm.emCode.value == "" ) {
			alert("상담원을 선택해 주세요.");
			return;
		}
		if ( frm.tongsinSa.value == "" ) {
			alert("기존통신사를 선택해 주세요.");
			return;
		}
		if ( frm.eventCode.value == "" ) {
			alert("판매유형을 선택해 주세요.");
			return;
		}
		if ( frm.creName.value == "" ) {
			alert("고객명을 입력해 주세요.");
			frm.creName.focus();
			return;
		} else {
			if ( !validNAME(frm.creName.value) ) {
				frm.creName.select();
				return;
			}
		}
		if ( getRadioValue(frm.creAddUser) == "" ) {
			alert("고객정보를 선택해 주세요.");
			return;
		}
		if ( frm.creSocno1.value == "" ) {
			alert("주민등록번호를 입력해 주세요.");
			frm.creSocno1.focus();
			return;
		}
		if ( frm.creSocno2.value == "" ) {
			alert("주민등록번호를 입력해 주세요.");
			frm.creSocno2.focus();
			return;
		}
		if ( isNumber(frm.creSocno1.value) == 0) {
			alert("주민등록번호는 숫자로만 입력해 주세요.");
			frm.creSocno1.select();
			return;
		}
		if ( isNumber(frm.creSocno2.value) == 0) {
			alert("주민등록번호는 숫자로만 입력해 주세요.");
			frm.creSocno2.select();
			return;
		}
		/*
		var socno = ""+(frm.creSocno1.value) + ""+(frm.creSocno2.value);
		if ( checkDigit_socno(socno) == "N" ) {
			alert("주민등록번호를 올바르게 입력해 주세요.!!");
			frm.creSocno1.select();
			return;
		}
        */
		if ( frm.cell1.value == "" || frm.cell2.value == "" || frm.cell3.value == "" ) {
			alert("휴대 전화번호를 입력해 주세요.");
			return;
		}
		if ( frm.phoneChk.value == "" ) {
			alert("휴대 전화번호를 중복을 눌러주세요.");
			return;
		}
		var cellPhone = ""+(frm.cell1.value) + (frm.cell2.value)+ (frm.cell3.value);
		//alert(cellPhone);
		if (cellPhone != "") {
		    if ( frm.phoneChk.value == "" ) {
    			alert("휴대 전화번호 중복확인을 눌러주세요.");
    			return;
    		}
		}
		if ( frm.openerCode.value == "" ) {
			alert("개통처를 선택해 주세요.");
			return;
		}
		if ( getRadioValue(frm.creState) == "" ) {
			alert("조회상태를 선택해 주세요.");
			return;
		}
		if ( frm.request_memo.value == "" ) {
			alert("상담메모를 입력해 주세요.");
			frm.request_memo.focus();
			return;
		}
	} else if ( pid == "S121" ) {
		/*
		if ( frm.oldState.value == frm.creState.value ) {
			alert("등록된 상태값이 동일합니다.\n\n상태변경해 주세요.");
			return;
		}
		if ( frm.creState.value == "" ) {
			alert("상태변경을 선택해 주세요.");
			return;
		}
		if ( frm.request_memo.value == "" ) {
			alert("상담메모를 입력해 주세요.");
			frm.request_memo.focus();
			return;
		}
		*/
	} else if ( pid == "S120" ) {
		if ( frm.creName.value == "" ) {
			alert("고객명을 입력해 주세요.");
			frm.creName.focus();
			return;
		} else {
			if ( !validNAME(frm.creName.value) ) {
				frm.creName.select();
				return;
			}
		}
		if ( frm.creSocno1.value == "" ) {
			alert("주민등록번호를 입력해 주세요.");
			frm.creSocno1.focus();
			return;
		}
		if ( frm.creSocno2.value == "" ) {
			alert("주민등록번호를 입력해 주세요.");
			frm.creSocno2.focus();
			return;
		}
		if ( isNumber(frm.creSocno1.value) == 0) {
			alert("주민등록번호는 숫자로만 입력해 주세요.");
			frm.creSocno1.select();
			return;
		}
		if ( isNumber(frm.creSocno2.value) == 0) {
			alert("주민등록번호는 숫자로만 입력해 주세요.");
			frm.creSocno2.select();
			return;
		}
		var cellPhone = ""+(frm.cell1.value) + (frm.cell2.value)+ (frm.cell3.value);
		if (cellPhone != "") {
		/*
		    if ( frm.phoneChk.value == "" ) {
    			alert("휴대 전화번호 중복확인을 눌러주세요.");
    			return;
    		}
    	*/
		}
	}
	snderType = "fp"
	if ( pid == "S111" || pid == "S121" ) {
		document.getElementById("btn_submit").style.display = 'none';
        document.getElementById("btn_view").style.display = '';
		document.getElementById("btn_view").innerHTML = '<font size="2"><b>저장중입니다.<br>잠시만 기다려주세요..</b></font>';
	}
	var actUrl = "?prgid="+ pid +"2";
	if ( snderType == "ap" ) {
		var params = setQueryString(frm);
		new ajax.xhr.Request(actUrl, params, callbacksubmit, "POST", pid, frm);
	} else if ( snderType == "ag" ) {
		var params = setQueryString(frm);
		new ajax.xhr.Request(actUrl, params, callbacksubmit, "GET", pid, frm);
	} else if ( snderType == "fp" ) {
		frm.action = actUrl;
		frm.method = "post";
		frm.target="dummyMain";
		frm.submit();
	} else if ( snderType == "fg" ) {
		frm.action = actUrl;
		frm.method = "get";
		frm.submit();
	} else if ( snderType == "fd" ) {
		frm.action = actUrl;
		frm.method = "post";
		frm.encoding = "multipart/form-data";
		frm.submit();
		//자바스크립트로 encoding을 확인하려면 request.getContentTyppe()을 사용...
	}
}

function callbacksubmit( req, pid, fname )
{
	var frm = fname;
	if ( req.readyState == 4 ) {
		if ( req.status == 200 ) {
			var retVal = req.responseText;
			//alert(retVal);
			var stateList = eval("("+ retVal +")");
			if ( pid == "B110" ) {
				if ( stateList[0].eno == "10" ) {
					frm.reset();
					if ( stateList[0].msg != "" ) 	alert( stateList[0].msg );
					if ( stateList[0].url != "" )	location.href = stateList[0].url;
				} else {
					if ( stateList[0].msg != "" ) 	alert( stateList[0].msg );
					if ( stateList[0].obj != "" && (stateList[0].act == "f" || stateList[0].act == "s") ) {
						var o = eval("frm."+ stateList[0].obj);
						if ( stateList[0].act == "f" ) o.focus();
						if ( stateList[0].act == "s" ) o.select();
						return;
					}
				}

			}
		} else {
			alert("Error!!");
		}
	}
}

//휴대번호 중복확인
function dupCell(pid)
{
	var frm = document.fieldFrm;
	if (frm.cell1.value == "") {
	    alert('휴대번호를 입력하세요.');
		frm.cell1.focus();
		return;
	}
	if ( isNumber(frm.cell1.value) == 0) {
	    alert("휴대번호는 숫자로만 입력해 주세요.");
		frm.cell1.select();
		return;
	}
	if (frm.cell2.value == "") {
	    alert('휴대번호를 입력하세요.');
		frm.cell2.focus();
		return;
	}
	if ( isNumber(frm.cell2.value) == 0) {
	    alert("휴대번호는 숫자로만 입력해 주세요.");
		frm.cell2.select();
		return;
	}
	if (frm.cell3.value == "") {
	    alert('휴대번호를 입력하세요.');
		frm.cell3.focus();
		return;
	}
	if ( isNumber(frm.cell3.value) == 0) {
	    alert("휴대번호는 숫자로만 입력해 주세요.");
		frm.cell3.select();
		return;
	}
	cellNo = frm.cell1.value +"-"+ frm.cell2.value +"-"+ frm.cell3.value;
	frm.phoneChk.value = ""
	//alert(cellNo);
	var actUrl = "?prgid="+ pid +"2&preno="+ cellNo;
//	var params = "prgid=S1132&preno="+ cellNo;
//	new ajax.xhr.Request(actUrl, params, resetMembernoSubmit, "GET");
	frm.target = "dummyMain";
	frm.action = actUrl;
	frm.method = "post";
	frm.submit();
}

///휴대번호 중복확인 메시지 뛰우기
function popupView(winwidth, winheight, eDate, aCompnay, stateTxt){
    var look='width='+winwidth+',height='+winheight+','
        popwin=window.open("","",look)
        popwin.document.open()
        popwin.document.write('<title>'+ stateTxt +'상태</title><body topmargin=0 leftmargin=0><table cellpadding=0 cellspacing=0 width='+ winwidth +' height='+ winheight +'><tr><td style=padding-top:10px; align=center valign=middle>최근 '+ eDate +' <b>'+ aCompnay +'</b>에서 <b>'+ stateTxt +'</b>상태입니다.</td></tr></table></body>')
        popwin.document.close()
}


//회원번호 재발급
function resetMemno( pid )
{
	var actUrl = "";
	var params = "prgid=B1132&preno="+ document.memFrm.user_no.value;
	new ajax.xhr.Request(actUrl, params, resetMembernoSubmit, "GET");
}

function resetMembernoSubmit(req)
{
	var frm = document.memFrm;
	if ( req.readyState == 4 ) {
		if ( req.status == 200 ) {
			var retVal = req.responseText;
			var stateList = eval("("+ retVal +")");
			if ( stateList[0].eno == "11" ) {
				alert( stateList[0].msg );
			} else if ( stateList[0].eno == "12" ) {
				frm.phoneChk.value = stateList[0].val;
				alert( stateList[0].msg );
			}
		} else {
			alert("Error!!");
		}
	}
}


//상품이용등록
function addGoods( uno )
{
	var newUrl = "?prgid=B124";
	GlbOpenPopupCtr(newUrl,"_addgoodsno",'520','330','0','0','0','0')
}

//상품검색
function searchGoods()
{
	var newUrl = "../goods/?prgid=D233&key=2";
	GlbOpenPopupCtr(newUrl,"_searchgoods",'490','430','1','0','0','0')
}

//총판 변경시 지사적용
function chgdiCode(Str)
{
    if (Str != "") {
	    this.window.dummyMain.location.href = 'changediCode.asp?selval='+ document.fieldFrm.diCode.value +'&vCode='+ Str;
	} else {
	    this.window.dummyMain.location.href = 'changediCode.asp?selval='+ document.fieldFrm.diCode.value;
	}
}
//수정 총판 변경시 지사적용
function chgViewdiCode(Str)
{
    if (Str != "") {
	    this.window.dummyMain.location.href = 'changeViewdiCode.asp?selval='+ document.fieldFrm.diCode.value +'&vCode='+ Str;
	} else {
	    this.window.dummyMain.location.href = 'changeViewdiCode.asp?selval='+ document.fieldFrm.diCode.value;
	}
}

//지사 변경시 팀적용
function chgfrCode(Str)
{
    if (Str != "") {
	    this.window.dummyMain.location.href = 'changefrCode.asp?selval='+ document.fieldFrm.frCode.value +'&vCode='+ Str;
	} else {
	    this.window.dummyMain.location.href = 'changefrCode.asp?selval='+ document.fieldFrm.frCode.value;
	}
}
//수정 지사 변경시 팀적용
function chgViewfrCode(Str, Str1)
{
    if (Str != "") {
	    this.window.dummyMain.location.href = 'changeViewfrCode.asp?selval='+ Str1 +'&vCode='+ Str1;
	} else {
	    this.window.dummyMain.location.href = 'changeViewfrCode.asp?selval='+ document.fieldFrm.frCode.value;
	}
}
//팀변경시 상담원적용
function chgteCode(Str)
{
    if (Str != "") {
	    this.window.dummyMain.location.href = 'changeteCode.asp?selval='+ document.fieldFrm.teCode.value +'&vCode='+ Str;
	} else {
	    this.window.dummyMain.location.href = 'changeteCode.asp?selval='+ document.fieldFrm.teCode.value;
	}
}
//팀변경시 상담원적용
function chgViewteCode(Str, Str1, Str2)
{
    if (Str != "") {
	    this.window.dummyMain.location.href = 'changeViewteCode.asp?selval='+ Str +'&selval1='+ Str1 +'&vCode='+ Str2;
	} else {
	    this.window.dummyMain.location.href = 'changeViewteCode.asp?selval='+ document.fieldFrm.teCode.value;
	}
}

//총판그룹 변경시 지사적용
function chgfrListCode()
{
	this.window.dummyMain.location.href = 'changefrListCode.asp?selval='+ document.schFrm.fraCode.value;
}

//지사그룹 변경시 팀적용
function chgbrListCode()
{
	this.window.dummyMain.location.href = 'changebrListCode.asp?selval='+ document.schFrm.branchCode.value;
}

//팀그룹 변경시 상담원적용
function chgteListCode()
{
	this.window.dummyMain.location.href = 'changeteListCode.asp?selval='+ document.schFrm.teCode.value;
}

//신용조회삭제 적용
function delectField(Str, Str1)
{
	var cnfrm = confirm("선택된 신용조회 고객정보를 삭제하시겠습니까?\n\n정보가 DB에서 삭제되며 복구할 수 없습니다.");
	if (cnfrm) {
        var frm = document.delFrm;
        var actUrl = "?prgid="+ Str;
        frm.action = actUrl;
    	frm.idxNo.value= Str1;
    	frm.target = "dummyMain";
    	frm.method = "post";
    	frm.submit();
	}
}