<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">
<head>	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="cache-control" content="no-cache" />
<title>T Gate 예약판매</title>
<link href="https://tgate.sktelecom.com/trext/css/ui-lightness/jquery-ui-1.8.14.custom.css" type="text/css" rel="stylesheet" />
<link href="https://tgate.sktelecom.com/trext/css/tgate.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" charset="utf-8" src="https://tgate.sktelecom.com/trext/js/jquery-1.6.2.min.js"></script>
<script language="javascript" type="text/javascript" charset="utf-8" src="https://tgate.sktelecom.com/trext/js/jquery-ui-1.8.14.custom.min.js"></script>
<script language="javascript" type="text/javascript" charset="utf-8" src="https://tgate.sktelecom.com/trext/js/trCommon.js"></script>
<script language="javascript" type="text/javascript" charset="utf-8">
<!-- 
$(document).ready(function() {
	
	var page = 1;
	var endNum = $("#pageRow").attr("value");
	var org_id = "1000163418";
	var org_cd = "D00866";
	var roll_id = "900";
	
	//2013.10.18 특수마케팅팀도 포함
	if(org_cd == "D14908" 
		|| org_cd == "A01097"
		|| org_cd == "D14919" 
		|| org_cd == "D15080"
		|| org_cd == "SADMIN") {
		$("#extSatatus").show();
	} else {
		$("#extSatatus").hide();
	}
	
	$("#regDateStr").attr("value", setDate(-1));
	$("#regDateEnd").attr("value", setDate(0));
	
	$("#page").attr("value", page);
	$("#endNum").attr("value", endNum);	

	/* 본부 DIV */
	getGroup(org_id,"main_lv","marketing_lv","agent_lv","shop_lv");     //마케팅
	
	/* 공통 코드는 comm.js 에서 불러 온다. */
	/* 가입유형 */
	getCommCode("joinType", "TR_SCRB_CL");
	/* 개통현황 */
	getCommCode("openStatus", "TR_DEG_STATUS");
	/* 수령방법 */
	getCommCode("recWay", "TR_REC_WAY");
	
	var eventId = "" != "null" ? "" : "";
	if(eventId != "") {
		// init 부분에서. 검색 조건 셋팅한후 1초후에 검색. 하도록 수정. 
		setTimeout("getInitEvent('"+eventId+"' , '"+page+"', '"+endNum+"', '"+org_id+"')", 1000);
		//getInitEvent(eventId, page, endNum);
	} else {
		// init 부분에서. 검색 조건 셋팅한후 1초후에 검색. 하도록 수정.  
		setTimeout("getInitEvent('' , '"+page+"', '"+endNum+"', '"+org_id+"')", 1000);
		//getInitEvent("" , page, endNum);
	}
	
	// Dialog			
	$("#eventPopup").click(function(){
		//$("#extSatatus").hide();
		var url 		= "/TRgate/Common/TRComPopup/popup.do?sn="+callSeq();
		var rntVal = getWindowModel(url, "", "800px", "600px", "yes", "no", "no");
		if(rntVal != null) {	
			if(rntVal.length>0) {
				for(var i=0; i<rntVal.length; i++) {
					$("#eventId").attr("value", rntVal[0]);
					$("#eventName").attr("value", rntVal[1]);
					if(rntVal[2]=="B2B") {
						$("#extSatatus").show();
					}
				}
				
				// 이벤트 명 값이 확인되면. 검색 실행
				if($("#eventId").attr("value").length>0) {
					getMdlList();
					getSiteCommonCode("siteSeqView");
					//getPageCount(page, endNum); 	// 총 건수
					//getPageList(page, endNum);	// 조회
				}
				
			} 
		}
		return false;	
	});

	$("#mobileList").change(function() {
		$.getJSON("/TRgate/ReserveMgmt/getColorList.do?sn="+callSeq()
			, {"event_id": $("#eventId").attr("value") 
			   , "eqp_mdl_cd": $("#mobileList").attr("value") }
			, function(data) {
				$("#colorList").empty();
            	$("#colorList").get(0).options[0] = new Option('전체','');
                if(data.length>0) {
                    $.each(data, function(i, objVal) {
						$("#colorList").get(0).options[i+1] = new Option(objVal['color_nm'],objVal['color_cd_val']);
                    });
                }
			});	
	});

	/* 차수 */ 
	$("#tsVal1").bind("keypress", function(e) {
		var rnt = getKeyCode(e);
		if(!rnt) {
			alert("숫자만 입력 가능합니다.");
			return $(this).focus();
		}
	});

	$("#tsVal2").bind("keypress", function(e) {
		var rnt = getKeyCode(e);
		if(!rnt) {
			alert("숫자만 입력 가능합니다.");
			return $(this).focus();
		}
	});

	// 검색
	$("#btnSearch").bind("click", function() {
		if(setIsNull($("#eventName").attr("value")) == "") {
			alert("예약가입 명은 필수 입력 사항 입니다. \n예약가입명을 입력하세요.");
			return $("#eventName").focus();
		}
		/*
		if($("#sName").attr("value").length>0) {
			if($("#sName").attr("value").length<=1) {
				alert("신청서명은 2자리 이상 입력하세요.");
				$("#sName").focus();
				return false;
			}
		}
		if($("#ssn1").attr("value").length>0) {
			if($("#ssn1").attr("value").length<=5) {
				alert("신청자 주민등록번호 앞자리를 입력하세요.");
				$("#ssn1").focus();
				return false;
			}
		}
		if($("#appNo").attr("value").length>0) {
			if($("#appNo").attr("value").length<=4) {
				alert("신청서번호는 5자리 이상 입력하세요.");
				$("#appNo").focus();
				return false;
			}
		}
		if($("#searchNum").attr("value").length>0) {
			if($("#searchNum").attr("value").length<=4) {
				alert("단말기 일렬번호 또는 개통확정번호는 5자리 이상 입력하세요.");
				$("#searchNum").focus();
				return false;
			}
		}
		*/		
		if(($("#tsVal1").attr("value") && $("#tsVal2").attr("value"))) {
			if(Number($("#tsVal1").attr("value")) > Number($("#tsVal2").attr("value"))) {
				alert("앞 차수 보다 작습니다. 다시 입력하세요. ");
				$("#tsVal1").attr("value", "");
				$("#tsVal2").attr("value", "");
				$("#tsVal1").focus()
				return false;
			}	
		}
		
		var sName = encodeURIComponent($("#sName").attr("value"));
		var appNo = encodeURIComponent($("#appNo").attr("value"));
		var selectSearchNum = encodeURIComponent($("#selectSearchNum").attr("value"));
		if(roll_id != "900" 
		      && (sName != ""
		            || appNo !=""
		            || (selectSearchNum == "fix_num")  
                    ) ) {
            var org_id1 = $("#main_lv").attr("value") != "A" ? $("#main_lv").attr("value") : "";
	        var org_id2 = $("#marketing_lv").attr("value") != "A" ? $("#marketing_lv").attr("value") : "";
	        var org_id3 = $("#agent_lv").attr("value") != "A" ? $("#agent_lv").attr("value") : "";
	        
	        if(org_id1 == "") {
	           alert("본부를 선택하세요.\n\n대리점까지는 필수 입니다.");
	           $("#main_lv").focus();
	           return false;
	        }
	        
	        if(org_id2 == "") {
                alert("마케팅를 선택하세요.\n\n대리점까지는 필수 입니다.");
                $("#marketing_lv").focus();
                return false;
            }
            
            if(org_id3 == "") {
                alert("대리점를 선택하세요.\n\n대리점까지는 필수 입니다.");
                $("#agent_lv").focus();
                return false;
            }
		}
		getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
		getPageList($("#page").attr("value"), $("#endNum").attr("value"));	// 조회
		return false;
	});

	/* 신청자명 엔터시 검색. */
	$("#sName").keydown(function(e) {
		if(e.keyCode=="13") {
			/*if($("#sName").attr("value").length<=1) {
				alert("신청서명은 2자리 이상 입력하세요.");
				$("#sName").focus();
				return false;
			}*/
	        var sName = encodeURIComponent($("#sName").attr("value"));
	        if(roll_id != "900" && sName != "") {
	            var org_id1 = $("#main_lv").attr("value") != "A" ? $("#main_lv").attr("value") : "";
	            var org_id2 = $("#marketing_lv").attr("value") != "A" ? $("#marketing_lv").attr("value") : "";
	            var org_id3 = $("#agent_lv").attr("value") != "A" ? $("#agent_lv").attr("value") : "";
	            
	            if(org_id1 == "") {
	               alert("본부를 선택하세요.\n\n대리점까지는 필수 입니다.");
	               $("#main_lv").focus();
	               return false;
	            }
	            
	            if(org_id2 == "") {
	                alert("마케팅를 선택하세요.\n\n대리점까지는 필수 입니다.");
	                $("#marketing_lv").focus();
	                return false;
	            }
	            
	            if(org_id3 == "") {
	                alert("대리점를 선택하세요.\n\n대리점까지는 필수 입니다.");
	                $("#agent_lv").focus();
	                return false;
	            }
	        }
	        			
            getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
            getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회
		}
	});

	/* 신청자 주민등록번호 엔터시 검색. */
	$("#ssn1").keydown(function(e) {
		if(e.keyCode=="13") {
			if($("#ssn1").attr("value").length<=5) {
				alert("신청자 주민등록번호 앞자리를 입력하세요.");
				$("#ssn1").focus();
				return false;
			}
            getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
            getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회
		}
	});
	
	/* 신청서 번호 엔터시 검색. */
	$("#appNo").keydown(function(e) {
		if(e.keyCode=="13") {
			/*if($("#appNo").attr("value").length<=4) {
				alert("신청서번호는 5자리 이상 입력하세요.");
				$("#appNo").focus();
				return false;
			}*/
            var appNo = encodeURIComponent($("#appNo").attr("value"));
            if(roll_id != "900" && appNo != "") {
                var org_id1 = $("#main_lv").attr("value") != "A" ? $("#main_lv").attr("value") : "";
                var org_id2 = $("#marketing_lv").attr("value") != "A" ? $("#marketing_lv").attr("value") : "";
                var org_id3 = $("#agent_lv").attr("value") != "A" ? $("#agent_lv").attr("value") : "";
                
                if(org_id1 == "") {
                   alert("본부를 선택하세요.\n\n대리점까지는 필수 입니다.");
                   $("#main_lv").focus();
                   return false;
                }
                
                if(org_id2 == "") {
                    alert("마케팅를 선택하세요.\n\n대리점까지는 필수 입니다.");
                    $("#marketing_lv").focus();
                    return false;
                }
                
                if(org_id3 == "") {
                    alert("대리점를 선택하세요.\n\n대리점까지는 필수 입니다.");
                    $("#agent_lv").focus();
                    return false;
                }
            }
            			
            getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
            getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회
		}
	});
	
	/* 개통확정 번호 엔터시 검색. */
	$("#searchNum").keydown(function(e) {
		if(e.keyCode=="13") {
			/*if($("#searchNum").attr("value").length<=4) {
				alert("단말기 일렬번호 또는 개통확정번호는 5자리 이상 입력하세요.");
				$("#searchNum").focus();
				return false;
			}*/
            var selectSearchNum = encodeURIComponent($("#selectSearchNum").attr("value"));
            if(roll_id != "900" && selectSearchNum != "") {
                var org_id1 = $("#main_lv").attr("value") != "A" ? $("#main_lv").attr("value") : "";
                var org_id2 = $("#marketing_lv").attr("value") != "A" ? $("#marketing_lv").attr("value") : "";
                var org_id3 = $("#agent_lv").attr("value") != "A" ? $("#agent_lv").attr("value") : "";
                
                if(org_id1 == "") {
                   alert("본부를 선택하세요.\n\n대리점까지는 필수 입니다.");
                   $("#main_lv").focus();
                   return false;
                }
                
                if(org_id2 == "") {
                    alert("마케팅를 선택하세요.\n\n대리점까지는 필수 입니다.");
                    $("#marketing_lv").focus();
                    return false;
                }
                
                if(org_id3 == "") {
                    alert("대리점를 선택하세요.\n\n대리점까지는 필수 입니다.");
                    $("#agent_lv").focus();
                    return false;
                }
            }            
                        			
            getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
            getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회
		}
	});
			
	// 매장 코드 엔터시 실행
	$("#shopCode").keydown(function(e) {
		if(e.keyCode=="13") {
            getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
            getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회
		}
	});
	
	/* 달력 한글 셋팅. */
	$.datepicker.setDefaults({
		monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dayNamesMin:['일', '월', '화', '수', '목', '금', '토'],
     	showMonthAfterYear:true
	});

	// 개통 예정일
	$("#scvSchdStr").datepicker({
		inline: true,
		showOn: "button",
 		buttonImage: "https://tgate.sktelecom.com/trext/image/btn_cld.gif", //버튼이미지에 사용할 이미지 경로
		buttonImageOnly: true,  //버튼이미지를 나오게 한다.
		dateFormat: 'yy/mm/dd',  //데이터 포멧형식
		//minDate: '-3M',      //오늘 부터 3달전까지만 선택 할 수 있다.
		maxDate: '+36M',     //오늘 부터 36개월후까지만 선택 할 수 있다.
		changeMonth: true,   //달별로 선택 할 수 있다.
		changeYear: true,     //년별로 선택 할 수 있다.
		showOtherMonths: true,  //이번달 달력안에 상/하 빈칸이 있을경우 전달/다음달 일로 채워준다.
		selectOtherMonths: true, 
		numberOfMonths: 1,   //오늘부터 3달치의 달력을 보여준다.
		width: "100px" ,
		height: "100px"
	});
	
	// 개통 예정일
	$("#scvSchdEnd").datepicker({
		inline: true,
		showOn: "button",
 		buttonImage: "https://tgate.sktelecom.com/trext/image/btn_cld.gif", //버튼이미지에 사용할 이미지 경로
		buttonImageOnly: true,  //버튼이미지를 나오게 한다.
		dateFormat: 'yy/mm/dd',  //데이터 포멧형식
		//minDate: '-3M',      //오늘 부터 3달전까지만 선택 할 수 있다.
		maxDate: '+36M',     //오늘 부터 36개월후까지만 선택 할 수 있다.
		changeMonth: true,   //달별로 선택 할 수 있다.
		changeYear: true,     //년별로 선택 할 수 있다.
		showOtherMonths: true,  //이번달 달력안에 상/하 빈칸이 있을경우 전달/다음달 일로 채워준다.
		selectOtherMonths: true, 
		numberOfMonths: 1,   //오늘부터 3달치의 달력을 보여준다.
		width: "100px" ,
		height: "100px"
	});	

	// 가입일
	$("#regDateStr").datepicker({
		inline: true,
		showOn: "button",
 		buttonImage: "https://tgate.sktelecom.com/trext/image/btn_cld.gif", //버튼이미지에 사용할 이미지 경로
		buttonImageOnly: true,  //버튼이미지를 나오게 한다.
		dateFormat: 'yy/mm/dd',  //데이터 포멧형식
		//minDate: '-3M',      //오늘 부터 3달전까지만 선택 할 수 있다.
		maxDate: '+36M',     //오늘 부터 36개월후까지만 선택 할 수 있다.
		changeMonth: true,   //달별로 선택 할 수 있다.
		changeYear: true,     //년별로 선택 할 수 있다.
		showOtherMonths: true,  //이번달 달력안에 상/하 빈칸이 있을경우 전달/다음달 일로 채워준다.
		selectOtherMonths: true, 
		numberOfMonths: 1,   //오늘부터 3달치의 달력을 보여준다.
		width: "100px" ,
		height: "100px"
	});	
	
	// 가입일
	$("#regDateEnd").datepicker({
		inline: true,
		showOn: "button",
 		buttonImage: "https://tgate.sktelecom.com/trext/image/btn_cld.gif", //버튼이미지에 사용할 이미지 경로
		buttonImageOnly: true,  //버튼이미지를 나오게 한다.
		dateFormat: 'yy/mm/dd',  //데이터 포멧형식
		//minDate: '-3M',      //오늘 부터 3달전까지만 선택 할 수 있다.
		maxDate: '+36M',     //오늘 부터 36개월후까지만 선택 할 수 있다.
		changeMonth: true,   //달별로 선택 할 수 있다.
		changeYear: true,     //년별로 선택 할 수 있다.
		showOtherMonths: true,  //이번달 달력안에 상/하 빈칸이 있을경우 전달/다음달 일로 채워준다.
		selectOtherMonths: true, 
		numberOfMonths: 1,   //오늘부터 3달치의 달력을 보여준다.
		width: "100px" ,
		height: "100px"
	});			
	
	$('img.ui-datepicker-trigger').css({'cursor':'hand'});
	
	// 신청서 상태 전체 선택시. 
	$("#appStatus0").click(function() {
		if($("#appStatus0").attr("checked") == "checked") {
			$("#appStatus1").attr("checked", true);
			$("#appStatus2").attr("checked", true);
			$("#appStatus3").attr("checked", true);
		} else{
			$("#appStatus1").attr("checked", false);
			$("#appStatus2").attr("checked", false);
			$("#appStatus3").attr("checked", false);
		}
	});
	
	$("#btnExcelDownLoad").bind("click", function() {		
		if(Number($("#toCnt").text())>10000) {
			alert("1만건 이상 엑셀 다운로드를 제안합니다.\n담당마케터에게 문의 하시기 바랍니다.");
			return false;
		}
		var org_id1 = $("#main_lv").attr("value") != "A" ? $("#main_lv").attr("value") : "";
		var org_id2 = $("#marketing_lv").attr("value") != "A" ? $("#marketing_lv").attr("value") : "";
		var org_id3 = $("#agent_lv").attr("value") != "A" ? $("#agent_lv").attr("value") : "";
		var org_id4 = $("#shop_lv").attr("value") != "A" ? $("#shop_lv").attr("value") : "";
		var meetSt = "";
		var meetSt1 = setCheckBoxIsNull("meetSt1");
		var meetSt2 = setCheckBoxIsNull("meetSt2");
		var fixNum = "";
		if(meetSt1 != "") {
			meetSt += meetSt1+",";
		}
		if(meetSt2 != "") {
			meetSt += meetSt2;
		}
		
		var params = "";
	   	   params += "&event_id="+$("#eventId").attr("value");
		   params += "&event_name="+$("#eventName").attr("value"); 
		   params += "&org_id1="+org_id1;
		   params += "&org_id2="+org_id2;
		   params += "&org_id3="+org_id3;
		   params += "&org_id4="+org_id4;
		   params += "&joinType="+$("#joinType").attr("value");
		   params += "&openStatus="+$("#openStatus").attr("value");
	 	   params += "&recWay="+$("#recWay").attr("value");
		   params += "&mobileVal="+$("#mobileList").attr("value");
		   params += "&colorVal="+$("#colorList").attr("value");   
		   params += "&tsName="+encodeURIComponent($("#sName").attr("value"));
		   params += "&ssn1="+$("#ssn1").attr("value");
		   params += "&appNo="+$("#appNo").attr("value");		   
		   params += "&scvSchdStr="+$("#scvSchdStr").attr("value").replace(/\//g,"");
		   params += "&scvSchdEnd="+$("#scvSchdEnd").attr("value").replace(/\//g,"");
		   params += "&opDt="+$("#opDt").attr("value");
		   params += "&regDateStr="+$("#regDateStr").attr("value").replace(/\//g,"");
		   params += "&regDateEnd="+$("#regDateEnd").attr("value").replace(/\//g,"");
		   params += "&tsVal1="+$("#tsVal1").attr("value");
		   params += "&tsVal2="+$("#tsVal2").attr("value");
		   params += "&meetSt="+meetSt;		   
		   params += "&shopCode="+$("#shopCode").attr("value");
		   params += "&appStatus="+setRadioVal("appStatus");
		   params += "&b2bType="+setCheckBoxIsNull("b2bType");
		   params += "&b2cType="+setCheckBoxIsNull("b2cType");
		   params += "&selectSearchNum="+$("#selectSearchNum").attr("value");
		   params += "&searchNum="+$("#searchNum").attr("value");
		   params += "&sortJoinType="+$("#sortJoinType").attr("value");
           params += "&sortOpenStatus="+$("#sortOpenStatus").attr("value");
           params += "&sortNm="+$("#sortNm").attr("value");
           params += "&sortAppStatus="+$("#sortAppStatus").attr("value");
			
           location.href = "/TRgate/ReserveMgmt/getReserveApplExeclDown.do?sn="+callSeq()+params;
           return false;
	});
 
    /* 정렬 가입유형 */
    $("#sortJoinType").bind("change", function() {
        $("#sortOpenStatus").attr("value", '');
        $("#sortNm").attr("value", '');
        $("#sortAppStatus").attr("value", '');
        $("#opDt").attr("value", '');
        getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
        getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회    
    });
    /* 정렬 차수현황 */
    $("#sortOpenStatus").bind("change", function() {
        $("#sortJoinType").attr("value", '');
        $("#sortNm").attr("value", '');
        $("#sortAppStatus").attr("value", '');
        $("#opDt").attr("value", '');
        getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
        getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회
    });
    /* 정렬 고객명 */
    $("#sortNm").bind("change", function() {
        $("#sortJoinType").attr("value", '');
        $("#sortOpenStatus").attr("value", '');
        $("#sortAppStatus").attr("value", '');
        $("#opDt").attr("value", '');
        getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
        getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회
    });
    /* 정렬 신청서상태 */
    $("#sortAppStatus").bind("change", function() {
        $("#sortJoinType").attr("value", '');
        $("#sortOpenStatus").attr("value", '');
        $("#sortNm").attr("value", '');
        $("#opDt").attr("value", '');
        getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
        getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회
    });
    /* 정렬 신청일자,수정일자 */
    $("#opDt").bind("change", function() {
        $("#sortJoinType").attr("value", '');
        $("#sortOpenStatus").attr("value", '');
        $("#sortNm").attr("value", '');
        $("#sortAppStatus").attr("value", '');
        getPageCount($("#page").attr("value"), $("#endNum").attr("value")); // 총 건수
        getPageList($("#page").attr("value"), $("#endNum").attr("value"));  // 조회
    });
    
	/*운송장출력*/
	$("#btnDelivSend").click(function(){
		
		if($('#searchList input:checkbox[name=chk1[]]:checked').length < 1){
			//체크 목록이 없을경우
			alert("운송장 일괄 전송 할 신청서를 체크박스에 체크 해주시기 바랍니다.");
			return; 
		}
		 	
		var appl_form_seqs ="";
		
		$('#searchList input:checkbox[name=chk1[]]:checked').each(function(i){
			if($(this).attr("checked") == "checked"){
				appl_form_seqs +=$(this).val() +",";
			}
		});


		$.getJSON("/TRgate/deliv/sendEPostDlvInfo.do"
			, { "appl_form_seq": appl_form_seqs }
			, function(data) {
				alert(data); //결과값
				showLoading();
				getInitSearch($("#page").attr("value"),$("#endNum").attr("value"));
			 });				

	});
	

//전체선택, 전체 해제	
	$("#totalchk").click(function(){
		var appl_form_seqs ="";
		
		if($("#totalchk").is(":checked")){
			$('#searchList input:checkbox[name=chk1[]]:not(checked)').attr("checked", true);
		}else{
			$('#searchList input:checkbox[name=chk1[]]:checked').attr("checked", false);		
		}
	});	
	
	
});

function getInitEvent(evnetId, page, endNum, orgId) {
	$.getJSON("/TRgate/ReserveMgmt/getInitEvent.do?sn="+callSeq()
		, { "event_id": evnetId 
		  , "org_id" : orgId }
		, function(data) {
			if(data.length>0) {
				$.each(data, function(i, objVal) {
					$("#eventId").attr("value", objVal['event_id']);
					$("#eventName").attr("value", objVal['event_nm']);
				});
				getMobileList();
				setTimeout("", '500');
				getSiteCommonCode("siteSeqView");
				getInitSearch(page, endNum);
			}	
		}); 
	return false;	
} 

function getMdlList() {
	getMobileList();
	return false;
}

function getInitSearch(page, endNum) {
	getPageCount(page, endNum); // 총 건수
	getPageList(page, endNum);	// 조회
	return false;
}

function getPageCount(page, endNum) {
	/* 총 갯수 조회 */
	var org_id1 = $("#main_lv").attr("value") != "A" ? $("#main_lv").attr("value") : "";
	var org_id2 = $("#marketing_lv").attr("value") != "A" ? $("#marketing_lv").attr("value") : "";
	var org_id3 = $("#agent_lv").attr("value") != "A" ? $("#agent_lv").attr("value") : "";
	var org_id4 = $("#shop_lv").attr("value") != "A" ? $("#shop_lv").attr("value") : "";
	var meetSt = "";
	var meetSt1 = setCheckBoxIsNull("meetSt1");
	var meetSt2 = setCheckBoxIsNull("meetSt2");
	var fixNum  = "";
	if(meetSt1 != "") {
		meetSt += meetSt1+",";
	}
	if(meetSt2 != "") {
		meetSt += meetSt2;
	}

	$.getJSON("/TRgate/ReserveMgmt/getPageCount.do?sn="+callSeq()
		, {  "event_id": $("#eventId").attr("value")
		   , "event_name": $("#eventName").attr("value") 
		   , "org_id1": org_id1
		   , "org_id2": org_id2
		   , "org_id3": org_id3
		   , "org_id4": org_id4
		   , "joinType": $("#joinType").attr("value")
		   , "openStatus": $("#openStatus").attr("value")
	 	   , "recWay": $("#recWay").attr("value")
		   , "mobileVal": $("#mobileList").attr("value")
		   , "colorVal": $("#colorList").attr("value")		   
		   , "tsName": encodeURIComponent($("#sName").attr("value"))
		   , "ssn1": $("#ssn1").attr("value")
		   , "appNo": $("#appNo").attr("value")		  
		   , "scvSchdStr": $("#scvSchdStr").attr("value").replace(/\//g,"")
		   , "scvSchdEnd": $("#scvSchdEnd").attr("value").replace(/\//g,"")
		   , "opDt": $("#opDt").attr("value")
		   , "regDateStr": $("#regDateStr").attr("value").replace(/\//g,"")
		   , "regDateEnd": $("#regDateEnd").attr("value").replace(/\//g,"")
		   , "tsVal1": $("#tsVal1").attr("value")
		   , "tsVal2": $("#tsVal2").attr("value")
		   , "meetSt": meetSt
		   , "shopType1": setCheckBoxIsNull("shopType1")		   
		   , "shopType2": setCheckBoxIsNull("shopType2")
		   , "shopCode": $("#shopCode").attr("value")
		   , "appStatus" : setRadioVal("appStatus")
		   , "siteSeq" : $("#siteSeqView").attr("value")		   
		   , "b2bType": setCheckBoxIsNull("b2bType")
		   , "b2cType": setCheckBoxIsNull("b2cType")
		   , "selectSearchNum": $("#selectSearchNum").attr("value") 
		   , "searchNum" : $("#searchNum").attr("value") }
		, function(data) {
			$("#toCnt").empty();
			$("#eventTitle").empty();
			var objText = 0;
			if(data.length>0) {
				objText += Number(data);
			}
			
			setPagination( Number(data), page, endNum, "#pagination");
			$("#eventTitle").append($("#eventName").attr("value")+" 예약가입");
			$("#toCnt").append(objText);
			return false;
		});	
}

function getPageList(page, endNum) {
	/* 데이터 조회 */	
	var org_id1 = $("#main_lv").attr("value") != "A" ? $("#main_lv").attr("value") : "";
	var org_id2 = $("#marketing_lv").attr("value") != "A" ? $("#marketing_lv").attr("value") : "";
	var org_id3 = $("#agent_lv").attr("value") != "A" ? $("#agent_lv").attr("value") : "";
	var org_id4 = $("#shop_lv").attr("value") != "A" ? $("#shop_lv").attr("value") : "";
	var meetSt = "";
	var meetSt1 = setCheckBoxIsNull("meetSt1");
	var meetSt2 = setCheckBoxIsNull("meetSt2");
	
	var fixNum  = "";
	if(meetSt1 != "") {
		meetSt += meetSt1+",";
	}
	if(meetSt2 != "") {
		meetSt += meetSt2;
	}
	var  pafpay_cnvt_mov ="";

	$.getJSON("/TRgate/ReserveMgmt/getPageList.do?sn="+callSeq()
		, {  "event_id": $("#eventId").attr("value")
		   , "event_name": $("#eventName").attr("value")
		   , "org_id1": org_id1
		   , "org_id2": org_id2
		   , "org_id3": org_id3
		   , "org_id4": org_id4
		   , "joinType": $("#joinType").attr("value")
		   , "openStatus": $("#openStatus").attr("value")
	 	   , "recWay": $("#recWay").attr("value")		   
		   , "mobileVal": $("#mobileList").attr("value")
		   , "colorVal": $("#colorList").attr("value")
		   , "tsName": encodeURIComponent($("#sName").attr("value"))
		   , "ssn1": $("#ssn1").attr("value")
		   , "appNo": $("#appNo").attr("value")
		   , "scvSchdStr": $("#scvSchdStr").attr("value").replace(/\//g,"")
		   , "scvSchdEnd": $("#scvSchdEnd").attr("value").replace(/\//g,"")
		   , "opDt": $("#opDt").attr("value")
		   , "regDateStr": $("#regDateStr").attr("value").replace(/\//g,"")
		   , "regDateEnd": $("#regDateEnd").attr("value").replace(/\//g,"")
		   , "tsVal1": $("#tsVal1").attr("value")
		   , "tsVal2": $("#tsVal2").attr("value")
		   , "meetSt": meetSt		   
		   , "shopCode": $("#shopCode").attr("value")		   
		   , "appStatus" : setRadioVal("appStatus")
		   , "b2bType": setCheckBoxIsNull("b2bType")
		   , "b2cType": setCheckBoxIsNull("b2cType")
		   , "siteSeq" : $("#siteSeqView").attr("value")
		   , "selectSearchNum": $("#selectSearchNum").attr("value") 
		   , "searchNum" : $("#searchNum").attr("value") 
		   , "page": page
		   , "endNum": endNum
		   , "sortJoinType": $("#sortJoinType").attr("value")
           , "sortOpenStatus": $("#sortOpenStatus").attr("value")
           , "sortNm": $("#sortNm").attr("value")
           , "sortAppStatus": $("#sortAppStatus").attr("value") }
		, function(data) {
			$("#searchList").empty();
			var objText = "";
			if(data.length>0) {
				$.each(data, function(i, objVal) {
					objText += "<tr>";
					
					objText += "<td ><strong>"+setIsNull(objVal['rnum'])+"</strong></td>";
					objText += "<td ><a href='#' onclick='getAppView(\""+setIsNull(objVal['event_id'])+"\", \""+setIsNull(objVal['appl_form_seq'])+"\", \""+setIsNull(objVal['user_id'])+"\",\""+setIsNull(objVal['appl_form_seq_enc'])+"\")'>"+setIsNull(objVal['appl_form_seq'])+"</a></td>";
					objText += "<td >"+setIsNull(objVal['comm_buyr_nm'])+"</td>";
					objText += "<td >"+setIsNull(objVal['eqp_nm'])+"<br>("+setIsNull(objVal['eqp_nick_nm'])+")</td>";
					objText += "<td >"+setIsNull(objVal['color_nm'])+"</td>";
					
					pafpay_cnvt_mov = setIsNull(objVal['pafpay_cnvt_mov']);
					
					if(pafpay_cnvt_mov=="10"){
						objText += "<td >"+setIsNull(objVal['appl_form_scrb_nm'])+"<br>(선후불전환)</td>";
					}else{
						objText += "<td >"+setIsNull(objVal['appl_form_scrb_nm'])+"</td>";
					}
					
					if(setIsNull(objVal['ts_val_st'])=="01") {
						objText += "<td ><span style='color:#000;'>"+setIsNull(objVal['ts_nm'])+"</span></td>";
					} else if(setIsNull(objVal['ts_val_st'])=="02") {
						objText += "<td ><span style='color:green;'>"+setIsNull(objVal['ts_nm'])+"</span></td>";
					} else if(setIsNull(objVal['ts_val_st'])=="03") {
						objText += "<td ><span style='color:red;'>"+setIsNull(objVal['ts_nm'])+"</span></td>";
					} else if(setIsNull(objVal['ts_val_st'])=="04") {
						objText += "<td ><span style='color:#555;'>"+setIsNull(objVal['ts_nm'])+"</span></td>";
					} else if(setIsNull(objVal['ts_val_st'])=="05") {
						objText += "<td ><span style='color:blue;'>"+setIsNull(objVal['ts_nm'])+"</span></td>";
					} else {	
						objText += "<td >"+setIsNull(objVal['ts_nm'])+"</td>";
					}
					objText += "<td >"+setIsNull(objVal['ts_val_no'])+"</td>";
					objText += "<td >"+setIsNull(objVal['org_cd'])+setIsNull(objVal['sub_org_cd'])+"</td>";
					objText += "<td ><span style='font-weight:bold;'>"+setIsNull(objVal['appl_st_nm'])+"</span></td>";
					objText += "<td >"+setIsNull(objVal['b2type'])+"</td>";
					objText += "<td >"+setIsNull(objVal['rec_nm'])+"</td>";
					objText += "<td >"+setIsNull(objVal['svc_schd_dt'])+"</td>";
					objText += "<td >"+setIsNull(objVal['cre_dt'])+"</td>";
					objText += "<td >"+setIsNull(objVal['upd_dt'])+"</td>";
					objText += "</tr>";
				});
			} else {
				objText += "<tr>";
				
					objText += "<td colspan='15'>진행중인 예약 판매 예약가입이  없습니다. </td>";
				
				objText += "</tr>";
			}
			$("#searchList").append(objText);
			setGridColor("#searchList");
			hideLoading();
			return false;
		});	
}
function getMobileList() {
	// 단말기명 조회
	$.getJSON("/TRgate/ReserveMgmt/getEventList.do?sn="+callSeq()
		, {"event_id": $("#eventId").attr("value") 
		   , "event_name": $("#eventName").attr("value") }
		, function(data) {
			$("#mobileList").empty();
            $("#mobileList").get(0).options[0] = new Option('전체','');
            if(data.length>0) {
                $.each(data, function(i, objVal) {
                	$("#mobileList").get(0).options[i+1] = new Option(objVal['eqp_nm']+"("+$.trim(objVal['eqp_nick_nm'])+")",objVal['eqp_mdl_cd']);
                });
            }
		});
}
	
function getAppView(eventId, appFormSeq, userId,appFormSeq_enc) {
	var url = "/TRgate/ReserveMgmt/getApplView.do";
	var arrVal = new Array();
	arrVal.push(appFormSeq);
	arrVal.push(appFormSeq_enc);
	
	//모달팝업 전체화면으로 변경(12.08.27)
	var width = screen.width; 
	var height = screen.height;
	var rntVal = getWindowModel(url, arrVal, width, height, "no", "yes", "no");
	//모달팝업 전체화면으로 변경(12.08.27)
	
	//var rntVal = getWindowModel(url, arrVal, "1024px", "768px", "no", "yes", "no");
	//location.href = url+"?appFormSeq="+appFormSeq+"&eventId="+eventId+"&userId="+userId;
	//alert("appView : "+eventId+" : "+appFormSeq+" : "+userId);
	if(typeof rntVal != "undefined" && rntVal) {
		showLoading();
		getInitSearch($("#page").attr("value"),$("#endNum").attr("value"));
	}
}

function groupset(str)
{
   var sObjData = "<option value='A' selected='selected'>전체</option>";
   if(str == "1")
   {
       $("#agent_lv").empty();
       $("#shop_lv").empty();
       $("#agent_lv").append(sObjData);
       $("#shop_lv").append(sObjData);
   }
   else if(str == "2")
   {
       $("#shop_lv").empty();
       $("#shop_lv").append(sObjData);
   }
}


	//판매사이트 
	function getSiteCommonCode(typeVal) {
		try{
	    $.getJSON("/TRgate/ReserveMgmt/getSiteCommonCode.do?sn="+callSeq()
				, {"org_id" : '1000163418'  
			    , "event_id": $("#eventId").attr("value") }
	            , function(data) {
	            	$("#"+typeVal).empty();
	                $("#"+typeVal).get(0).options[0] = new Option('전체','');
	                if(data.length>0) {
	                    $.each(data, function(i, objVal) {
	                    	$("#"+typeVal).get(0).options[i+1] = new Option(objVal['site_nm'],objVal['site_seq']);
	                    });
	                }
	            });
	     }catch(e){
	      		$("#"+typeVal).get(0).options[0] = new Option('전체','');
	     }
	}
	
//-->
</script>
</head>
<body>
<div id="wrap">
	<!-- header -->
	<script>
	var pageActive=true;
	function goMenu(menuId,url){
		if(!pageActive)return;
		var frm = document.movForm;
		frm.menuId.value = menuId;
		frm.action = "/TRgate/Main/menu.do";
		if(url){
			frm.action = url;
		}
		frm.method = 'post';
		frm.submit();
	}
	function chgPw(){
		if(!pageActive)return;
		var url = "/TRgate/Common/TRComPopup/popPassChg.do?sn="+callSeq();
		var rtnval = getWindowModel(url, "param", "400px", "300px", "no", "yes", "no" );
		//var popStyle = "dialogWidth:400px;dialogHeight:220px;";
		//var rtnval = window.showModalDialog(url,'param',popStyle);
	}
	
	function findPw(){
        if(!pageActive)return;
        var url = "/TRgate/Common/TRComPopup/popPassFind.do?sn="+callSeq();
        var rtnval = getWindowModel(url, "param", "400px", "300px", "no", "yes", "no" );
        //var popStyle = "dialogWidth:400px;dialogHeight:220px;";
        //var rtnval = window.showModalDialog(url,'param',popStyle);
	}
	
	function showLoading(){
		pageActive=false;
		document.getElementById("loadingBar").style.display = "block";
//		document.getElementById("loadingBar").style.filter="alpha(opacity='50')";
	}
	function hideLoading(){
		pageActive=true;
		document.getElementById("loadingBar").style.display = "none";
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		
		$('.gnb li').bind('mouseenter keyup', function() {
			$(this).addClass('on').siblings().removeClass();
		});
	});
</script>
	<div id="loadingBar" style="z-index:100;display:none;width:100%;height:100%;position:absolute;left:0px;top:0px;filter:alpha(opacity='100')">
		<table width=100% height=100%>
			<tr><td align=center valign=middle width=100% height=100% >
				<img width="100" height="100" src="/trext/image/ajax-loader.gif" style="width:40px;height:40px;background:url(/trext/image/ajax-loader.gif) no-repeat;" />
			</td></tr>
		</table>
	</div>
	<iframe style="width:0;height:0;" name="blackFrm"></iframe>
	<div id="header">
		<form name="movForm">
			<input type='hidden' name='menuId'/>
		</form>
		<div class="top">
			<h1 class="logo"><a href="#"><img src="https://tgate.sktelecom.com/trext/image/logo.gif" alt="Tgage 예약판매"></a></h1>
			<ul class="login">
			<li class="frst"><a href="javascript:findPw();">비밀번호 찾기</a></li>
			<li><a href="javascript:chgPw();">정보수정</a></li>
			<li><a href="/TRgate/Main/logout.do">로그아웃</a></li>
			</ul>
		</div>
		<div class="gnb">
			<ul>
			
				
				
				
				
				<li >
					<a href="javascript:goMenu('5000');"  >
						게시판
					</a>
					<ul class="m1">
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
						<li>
							<a href="javascript:goMenu('5100')"
								
							>
								공지사항
							</a>
						</li>
						
					
					</ul>
				</li>
			
				
				
				
				
					
					
				
				<li class=on>
					<a href="javascript:goMenu('2000');" class=selected >
						예약판매관리
					</a>
					<ul class="m2">
					
						
						<li>
							<a href="javascript:goMenu('2100')"
								class="selected"
							>
								신청서작성현황
							</a>
						</li>
						
					
						
						<li>
							<a href="javascript:goMenu('2101')"
								
							>
								B2B신청서작성현황
							</a>
						</li>
						
					
						
						<li>
							<a href="javascript:goMenu('2200')"
								
							>
								차수별 현황
							</a>
						</li>
						
					
						
						<li>
							<a href="javascript:goMenu('2300')"
								
							>
								특판 관리
							</a>
						</li>
						
					
						
						<li>
							<a href="javascript:goMenu('2400')"
								
							>
								예약판매 입력
							</a>
						</li>
						
					
						
						<li>
							<a href="javascript:goMenu('2700')"
								
							>
								예약판매 입력 B2B
							</a>
						</li>
						
					
						
						<li>
							<a href="javascript:goMenu('2500')"
								
							>
								고객가입 여부확인
							</a>
						</li>
						
					
						
						<li>
							<a href="javascript:goMenu('2600')"
								
							>
								운송장 조회
							</a>
						</li>
						
					
						
						<li>
							<a href="javascript:goMenu('2900')"
								
							>
								예약가입신청조회
							</a>
						</li>
						
					
						
					
						
					
						
					
					</ul>
				</li>
			
				
				
				
				
				<li >
					<a href="javascript:goMenu('3000');"  >
						통계관리
					</a>
					<ul class="m3">
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
					
						
						<li>
							<a href="javascript:goMenu('3100')"
								
							>
								예약판매_신청서작성현황통계
							</a>
						</li>
						
					
						
						<li>
							<a href="javascript:goMenu('3200')"
								
							>
								매장/판매점 별 단말 현황
							</a>
						</li>
						
					
						
					
					</ul>
				</li>
			
			</ul>
		</div>
		<div class="level"><div><span>매장(RD008660000)</span></div></div>
	</div>
	<!-- //header -->
	<!-- container -->
	<div id="container">
		<!-- content -->
		<div id="content">
			<input type="hidden" id="page" name="page" />
			<input type="hidden" id="endNum" name="endNum" />
			<div class="tit_area">
				<h2>신청서작성현황</h2>
				<ul>
				<li class="home"><a href="#">홈</a></li>
				<li><a href="#">예약판매관리</a></li>
				<li>신청서작성현황</li>
				</ul>
			</div>
			
			<table class="rgst_form">
			<colgroup>
			<col width="100">
			<col width="150">
			<col width="100">
			<col width="235">
			<col width="110">
			<col>
			</colgroup>
			<tbody>
			<tr>
			<th>소속</th>
			<td colspan="5" class="default">
                    <div class="t_algn">
                        <span class="">본부
                            <select id="main_lv" name="main_lv" onchange="getDetGroup('main_lv','marketing_lv'); groupset('1');">
			                <option value="">전체</option>
			                </select>
                        </span>

                        <span class="">마케팅
                            <select id="marketing_lv" name="marketing_lv" onchange="getDetGroup('marketing_lv','agent_lv'); groupset('2');">
			                <option value="">전체</option>
			                </select>
                        </span>

                        <span class="">대리점
                            <select id="agent_lv" name="agent_lv" onchange="getDetGroup('agent_lv','shop_lv')">
			                <option value="">전체</option>
			                </select>
                        </span>

                        <span class="">매장명
                            <select id="shop_lv" name="shop_lv">
			                <option value="">전체</option>
			                </select>
                        </span>
                        
                        <span class="">매장코드
							<input type="text" id="shopCode" name="shopCode" class="inp_txt" maxlrngth="10">	
                        </span>
                    </div>
			</td>
			</tr>
			<tr>
			<th>예약가입명</th>
			<td colspan="5">
				<input id="eventId" name="eventId" type="hidden" class="inp_txt" />
				<input id="eventName" name="eventName" type="text" class="inp_txt" readonly="readonly" />
				<a href="#" id="eventPopup" class="mr50"><img src="https://tgate.sktelecom.com/trext/image/btn_srch.gif" alt="검색"></a>

				단말기명
				<select class="mr10" id="mobileList" name="mobileList">
				<option value=''>전체</option>
				</select>

				색상
				<select id="colorList" name="colorList">
				<option value=''>전체</option>
				</select>
			</td>
			</tr>
			<tr>
			<th>신청구분</th>
			<td>
				<input type="checkbox" name="meetSt1" id="meetSt1" value="01" class="inp_chk" checked> 대면
				<input type="checkbox" name="meetSt2" id="meetSt2" value="02" class="inp_chk ml10" checked> 비대면
			</td>
			<th>개통예정일</th>
			<td>
				<input type="text" class="inp_txt" style="width:65px;" id="scvSchdStr" readonly>
				<!-- <a href="#"><img src="/trext/image/btn_cld.gif" alt="달력"></a> --> ~
				<input type="text" class="inp_txt" style="width:65px;" id="scvSchdEnd" readonly>
				<!-- <a href="#"><img src="/trext/image/btn_cld.gif" alt="달력"></a> -->
			</td>
			<th>차수</th>
			<td>
				<input type="text" id="tsVal1" name="tsVal1" class="inp_txt" maxlength="3" style="width:35px;"> ~
				<input type="text" id="tsVal2" name="tsVal2" class="inp_txt" maxlength="3" style="width:35px;">
			</td>			
			</tr>
			<tr>
			<th>
			    <select id="sortJoinType" name="sortJoinType">
                <option value="" selected="selected">가입유형</option>
                <option value="desc">가입유형↓</option>
                <option value="asc">가입유형↑</option>
                </select>
			</th>
			<td>
				<select id="joinType" name="joinType">
				<option value=''>전체</option>
				</select>
			</td>
			<th>
				<select id="opDt" name="opDt">
				<option value="">신청일자</option>
				<option value="cred" selected="selected">신청일자↓</option>
				<option value="crea">신청일자↑</option>
				<option value="updd">수정일자↓</option>
				<option value="upda">수정일자↑</option>
				</select>
			</th>
			<td>
				<input type="text" class="inp_txt" style="width:65px;" id="regDateStr" readonly />
				<!-- <a href="#"><img src="/trext/image/btn_cld.gif" alt="달력"></a> --> ~
				<input type="text" class="inp_txt" style="width:65px;" id="regDateEnd" readonly />
				<!-- <a href="#"><img src="/trext/image/btn_cld.gif" alt="달력"></a> -->
			</td>
			<!-- th>구분</th>
			<td>
				<input type="checkbox" id="b2bType" name="b2bType" value="10" class="inp_chk"> B2B
				<input type="checkbox" id="b2cType" name="b2cType" value="20" class="inp_chk ml10"> B2C
			</td-->
			<th>
				<select id="sortOpenStatus" name="sortOpenStatus">
                <option value="" selected="selected">차수현황</option>
                <option value="desc">차수현황↓</option>
                <option value="asc">차수현황↑</option>
                </select>
            </th>
			<td>
				<select id="openStatus" name="openStatus">
				<option value=''>전체</option>
				</select>
			</td>
			</tr>
			<tr>
			<th>
				<select id="sortNm" name="sortNm">
                <option value="" selected="selected">신청자명</option>
                <option value="desc">신청자명↓</option>
                <option value="asc">신청자명↑</option>
                </select>
            </th>
			<td>
				<input type="text" id="sName" name="sName" class="inp_txt mr10" style="width:90px; ime-mode:active;" maxlength="40">
			</td>
			<th>주민번호</th>
			<td>
				<input type="text" id="ssn1" name="ssn1" class="inp_txt" style="width:50px;" maxlength="6"> - ******* <span style="font-size:11px; color:#aaa; vertical-align:bottom;">예)000000 6자리</span>
			</td>
			<th>수령방법</th>
			<td>
				<select id="recWay" name="recWay">
				<option value=''>전체</option>
				</select>
			</td>			
			</tr>
			<tr>
			<th>판매사이트</th>
			<td>
				<select id="siteSeqView" name="siteSeqView">
				<option value=''>전체</option>
				</select>
			</td>			
			<th>신청서번호
			    <!-- 
				<select id="sortAppNo" name="sortAppNo">
                <option value="desc" selected="selected">신청서번호↓</option>
                <option value="asc">신청서번호↑</option>
                </select>
                 -->
            </th>
			<td>
				<input type="text" id="appNo" name="appNo" class="inp_txt" style="width:80px;" maxlength="11" /> <span style="font-size:11px; color:#aaa; vertical-align:bottom;"> 5자리 이상</span>
			</td>
			<th>
				<select id="selectSearchNum" name="selectSearchNum">
                <option value="ser_num" selected="selected">단말기일렬번호</option>
                <option value="fix_num">개통확정번호</option>
                </select>
            </th>
			<td>
				<input type="text" id="searchNum" name="searchNum" class="inp_txt" style="width:80px;" maxlength="11" /> <span style="font-size:11px; color:#aaa; vertical-align:bottom;"> 5자리 이상</span>
			</td>
			</tr>			
			<tr>
			<th>
				<select id="sortAppStatus" name="sortAppStatus">
                <option value="" selected="selected">신청서상태</option>
                <option value="desc">신청서상태↓</option>
                <option value="asc">신청서상태↑</option>
                </select>
            </th>
			<td colspan="5">
				<!-- 
				<span id="appStatus">
				</span>
				-->
				<input type="radio" id="appStatus" name="appStatus" value="" class="inp_ra" checked> 전체
				<input type="radio" id="appStatus" name="appStatus" value="01" class="inp_ra ml10"> 신청접수
				<input type="radio" id="appStatus" name="appStatus" value="02" class="inp_ra ml10"> 접수완료
				<input type="radio" id="appStatus" name="appStatus" value="03" class="inp_ra ml10"> 개통대기
				<input type="radio" id="appStatus" name="appStatus" value="04" class="inp_ra ml10"> 개통완료
				<input type="radio" id="appStatus" name="appStatus" value="19" class="inp_ra ml10"> U Key 반려
				<input type="radio" id="appStatus" name="appStatus" value="10" class="inp_raml10"> 신청취소
				<span id="extSatatus">
				<br />
				<input type="radio" id="appStatus" name="appStatus" value="09" class="inp_ra"> 개통확인중
				<input type="radio" id="appStatus" name="appStatus" value="06" class="inp_ra ml10"> 물품배송중
				<input type="radio" id="appStatus" name="appStatus" value="07" class="inp_ra ml10"> 구매완료
				<input type="radio" id="appStatus" name="appStatus" value="05" class="inp_ra ml10"> 배송준비
				<input type="radio" id="appStatus" name="appStatus" value="08" class="inp_raml10"> 배송보류
				<input type="radio" id="appStatus" name="appStatus" value="12" class="inp_raml10"> 예약접수
				</span>
			</td>
			</tr>
			</tbody>
			</table>
			<div class="button">
				<a href="#" id="btnSearch"><span>검 색</span></a>
			</div>
			
			<div class="tbt mt30">
				<!-- <h3 id="eventTitle" class="tit_area2 fl mt10">갤럭시 S2 이벤트</h3> -->
				<h3 id="eventTitle" class="tit_area2 fl mt10">-</h3>
				<div class="button">
					<strong>총<span id="toCnt">0</span>건</strong>
					<input type="hidden" id="pageRow" name="pageRow" value="20" /> 
					<!-- span id="spPageRow">Page Set : 
						<select id="pageRow" name="pageRow">
							<option value="10">10</option>
							<option value="20" selected="selected">20</option>
							<option value="30">30</option>
							<option value="40">40</option>
							<option value="50">50</option>
						</select>
					</span-->
					
					<a href="#" id="btnExcelDownLoad"><span>엑셀다운로드</span></a>
					
				</div>
			</div>
			<div style="width:100%; overflow-x:scroll; overflow-y:hidden;">
			<table class="tb_lst_p19">
			<colgroup>
				
				<col width="35">
				<col width="100">
				<col width="95">
				<col>
				<col width="55">
				<col width="95">
				<col width="85">
				<col width="40">
				<col width="80">
				<col width="70">
				<col width="40">
				<col width="70">
				<col width="80">
				<col width="135">
				<col width="135">
			</colgroup>
			<thead>
				<tr>
				
				<th>No</th>
				<th>신청서번호</th>
				<th>신청자명</th>
				<th>단말기모델(애칭)</th>			
				<th>색상</th>
				<th>가입유형</th>
				<th>차수현황<!-- 차수상태 --></th>
				<th>차수</th>
				<th>매장코드</th>
				<th>신청서상태</th>
				<th>구분</th>
				<th>수령방법</th>
				<th>개통예정일</th>
				<th>신청일</th>
				<th>수정일</th>
			</tr>
			</thead>
			<tbody id="searchList">
				<tr>
				
				<td colspan="15">조회된 예약 판매 예약가입가 없습니다. </td>
				
				</tr>
			</tbody>
			</table>
			</div>
			<!-- paging //-->
			<div id="pagination" class="paging">
			<!-- paging //-->
			</div>
		</div>
		<!-- //content -->
	</div>
	<!-- //container -->
	<!-- footer -->
	<div id="footer">
	<div class="logo"><img src="https://tgate.sktelecom.com/trext/image/logo_skt.gif" alt="SK telecom"></div>
	<address><img src="https://tgate.sktelecom.com/trext/image/txt_copyright.gif" alt=""></address>
</div>

	<!-- //footer -->
</div>
</body>
</html>