<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<html>
<head>
<title>:::휴대폰 고객관리시스템에 오신것을 환영합니다.:::</title>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<META HTTP-EQUIV="imagetoolbar" CONTENT="no">
<META NAME="author" CONTENT="Webmaster & Programer By PARK DongKee.">
<meta name="robots" content="noindex,nofollow" />
<link rel="stylesheet" href="<c:url value='/resources/css/home/common.css'/>">
<script src="<c:url value='/resources/js/home/ajax.js'/>"></script>
<script src="<c:url value='/resources/js/home/default.js'/>"></script>
<script src="<c:url value='/resources/js/home/script.js'/>"></script>

<script src="<c:url value='/resources/js/home/clockView.js'/>"></script>

<script >
<!--

function autoPageload(){
    location.reload(); //페이지를 리로드
}
tid=setTimeout(autoPageload,60000); //1000(1초) * 60(초단위)  60초후re함수실행

window.onload = function()
{

    calendarClock();

}

function listLoad()
{
    location.reload();
}

-->
</script>
</head>

<body bgcolor="white" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<script src="<c:url value='/resources/js/home/wz_tooltip.js'/>"></script>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr height="30">
		<td>
			<table width="1100">
				<tr>
					<td>
					<a href='http://www.imemi.co.kr/calculation/index.html' target='_blank'><span style='font-weight:bold;color:#ff6600'>　　할부이자계산기</span></a>&nbsp;&nbsp;

					</td>
					<td align="left" width="220">
						<img src="http://smtech.kradmin.co.kr/images/top_left/smile_icn.gif" style="margin-right:5px;"/><span class="login">본사님</span><span class="login_g">께서 로그인하셨습니다.</span><br>
						<img src="http://smtech.kradmin.co.kr/images/top_left/time_icn.gif" align="absmiddle" style="margin-right:10px;"><span class="date" id="clockView" style="color:#000000;"></span></td>
					<td align="center" width="200">
						<img src="http://smtech.kradmin.co.kr/images/top_left/btn_logout.gif" onclick="location.href='/?prgid=X1132';" class="cshand" alt="로그아웃버튼" style="margin-right:10px;">
						<img src="http://smtech.kradmin.co.kr/images/top_left/btn_infomodify.gif" onclick="popSize('/_Manager/?prgid=M1350', '_modify', 618, 270);" class="cshand" alt="정보수정버튼">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<table width="100%">
    <tr>
        <td height="30" class="topbg">
            <table width="950" border="0" cellspacing="0" cellpadding="0" style="color:#ffffff; font-size:14px; font-weight:bold;">
                <tr>
                    
                    <td height="30" class="cshand" style="display: block;font-weight:bold;color:#ffffff;font-size:14px;text-decoration:none;" onclick="location.href='/_Notice/';">공지사항</td>
                    
                    <td class="cshand" style="display: block;font-weight:bold;color:#ffffff;font-size:14px;text-decoration:none;" onclick="location.href='/_Community/';">커뮤니티</td>
                    
                    <td class="cshand" style="font-weight:bold;color:#fef534;font-size:14px;text-decoration:none;" onclick="location.href='/_Credibility/';" >신용조회</td>
                    <td class="cshand" style="display: block;font-weight:bold;color:#ffffff;font-size:14px;text-decoration:none;" onclick="location.href='/_Complaint/';">민원관리</td>
                    <td class="cshand" style="display: block;font-weight:bold;color:#ffffff;font-size:14px;text-decoration:none;" onclick="location.href='/_Member/?prgid=C110s';">고객리스트</td>
                    <td class="cshand" style="display: block;font-weight:bold;color:#ffffff;font-size:14px;text-decoration:none;" onclick="location.href='/_Member/?prgid=C130s';">개통지연</td>
                    <td class="cshand" style="display: block;font-weight:bold;color:#ffffff;font-size:14px;text-decoration:none;" onclick="location.href='/_Member/?prgid=C120s';">개통완료</td>
                    <td class="cshand" style="display: block;font-weight:bold;color:#ffffff;font-size:14px;text-decoration:none;" onclick="location.href='/_Delivery/';">배송관리</td>
                    
                    <td class="cshand" style="display: block;font-weight:bold;color:#ffffff;font-size:14px;text-decoration:none;" onclick="location.href='/_Manager/';">관리자모드</td>
                    
                </tr>
            </table>
        </td>
    </tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td valign="top" style="padding-top:11px;padding-left:10px;">
<!-- 컨텐츠 시작 -->
<script language="javascript" src="<c:url value='/resources/js/home/Calendar.js'/>"></script>
<table width="99%">
	<tr>
		<td height="48" style="color:#757575;font-size:18px;font-weight:bold;">
			<img src="..http://smtech.kradmin.co.kr/images/icon_title01.gif" border="0" align="absmiddle">신용조회 <span style="letter-spacing:-5px;">>></span>&nbsp;<span style="color:#333333;">신용조회 목록</span>
		</td>
	</tr>
</table>
<table width="99%" class="subtitle">
	<form name="schFrm" method="get" action="">
	<input type="hidden" name="prgid" value="S110">
	<input type="hidden" name="mode" value="sch">
	<tr height="26">
		<td class="subtitle_subject" width="230" valign="top" >상세검색</td>
		<td class="subtitle_etc">
            <select name="sitem">
            <option value="name" selected>고객명</option>
            <option value="socno">주민번호</option>
            <option value="cell">휴대번호</option>
            <input type="text" name="stext" value="" class="input_text imea" size="25" onkeydown="if (event.keyCode == 13) {document.schFrm.submit();}">&nbsp;&nbsp;
            <input type="button" value=" 검 색 " class="button04 h20" onclick="document.schFrm.submit();">&nbsp;&nbsp;&nbsp;<input type="button" value=" 조회등록 " class="button02 h25" onclick="addFieldSize('S111',650,500);">
		</td>
	</tr>
</table>
<table width="99%" class="tp_form1">
	<tr height="30">
		<td class="formhead1">ㆍ검색필드</td>
		<td class="listhead0 pdl7" colspan="3">
            
		    <select name="openCode" onchange="document.schFrm.submit();">
    		<option value="">::개통처::</option>
    		<option value='WKRE90907790'>S코드</option>
<option value='WKRE90907791'>Y코드</option>

    		</select>
    		
            <select name="eventCode" onchange="document.schFrm.submit();">
		    <option value="" selected>::판매유형::</option>
		    <option value='1001'>오프라인</option>
<option value='1002'>T-gate</option>

		    </select>
            <select name="tongsinSa" onchange="document.schFrm.submit();">
		    <option value=''>::통신사::</option><option value='1002' style='color:#ff0000;'>SKT</option>
<option value='1003' style='color:#0000ff;'>KT</option>
<option value='1004' style='color:#ff00ff;'>LGU+</option>
<option value='1005' style='color:#cc99ff;'>MVNO</option>

		    </select>
		    <input type="text" name="sDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.sDate);" readonly>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif" align="absmiddle" onclick="Calendar_D(schFrm.sDate);"class="cshand"  border="0"> ~
		    <input type="text" name="eDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.eDate);" readonly>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif" align="absmiddle" onclick="Calendar_D(schFrm.eDate);"class="cshand"  border="0">
			<img src="http://smtech.kradmin.co.kr/images/icon_date_today.gif" align="absmiddle" onclick="insertDate('2013-10-23','2013-10-23');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://smtech.kradmin.co.kr/images/icon_date_yesterday.gif" align="absmiddle" onclick="insertDate('2013-10-22','2013-10-22');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://smtech.kradmin.co.kr/images/icon_date_thisMonth.gif" align="absmiddle" onclick="insertDate('2013-10-01','2013-10-31');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://smtech.kradmin.co.kr/images/icon_date_lastMonth.gif" align="absmiddle" onclick="insertDate('2013-09-01','2013-09-30');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://smtech.kradmin.co.kr/images/icon_date_all.gif" align="absmiddle" onclick="location.href='./?prgid=S110';" class="cshand" border="0" alt="새로고침">
		</td>
	</tr>
	<tr height="20">
		<td class="formhead1">ㆍ조회상태</td>
		<td class="pdl7" colspan="3">
		    <table class='tp_oplist'><tr>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='10' id='creState_10'><span style='color:rgb(0,0,0);'><label for='creState_10'>조회요청(0)</label></span>&nbsp;&nbsp;
</td>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='11' id='creState_11'><span style='color:rgb(142,164,255);'><label for='creState_11'>보류(760)</label></span>&nbsp;&nbsp;
</td>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='20' id='creState_20'><span style='color:#008080;'><label for='creState_20'>유치실패(1638)</label></span>&nbsp;&nbsp;
</td>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='12' id='creState_12'><span style='color:#000080;'><label for='creState_12'>신규등록(1011)</label></span>&nbsp;&nbsp;
</td>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='77' id='creState_77'><span style='color:#0000ff;'><label for='creState_77'>접수완료(332)</label></span>&nbsp;&nbsp;
</td>
</tr></table>
<table class='tp_oplist'><tr>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='15' id='creState_15'><span style='color:#3366ff;'><label for='creState_15'>주민번호오류(46)</label></span>&nbsp;&nbsp;
</td>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='16' id='creState_16'><span style='color:rgb(0,0,0);'><label for='creState_16'>명의불일치(14)</label></span>&nbsp;&nbsp;
</td>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='17' id='creState_17'><span style='color:rgb(255,82,87);'><label for='creState_17'>요금미납(244)</label></span>&nbsp;&nbsp;
</td>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='18' id='creState_18'><span style='color:#ff0000;'><label for='creState_18'>SKT회선제한(29)</label></span>&nbsp;&nbsp;
</td>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='19' id='creState_19'><span style='color:#ff0000;'><label for='creState_19'>할부회선제한(80)</label></span>&nbsp;&nbsp;
</td>
<td width='120' class='tp_oplist list0'>
<input type='radio' name='creState' value='21' id='creState_21'><span style='color:#ff0000;'><label for='creState_21'>신용불량자(4)</label></span>&nbsp;&nbsp;
</td>
</tr></table>

		</td>
	</tr>
	
	<tr height="30">
		<td class="formhead1">ㆍ담당부서</td>
		<td class="listhead0 pdl7">
            
                <select name="fraCode" onchange="chgfrListCode();">
                <option value="">::총판그룹::</option>
                <option value='WKRB90907790'>휴대폰할인마트</option>
<option value='WKRB90907792'>지인판매</option>
<option value='WKRB90907795'>레아모바일</option>
<option value='WKRB90907796'>라온네트웍스</option>
<option value='WKRB90907797'>스마트통신(인천)</option>
<option value='WKRB90907798'>엠유네트웍스</option>
<option value='WKRB90907800'>미소텔레콤</option>
<option value='WKRB90907801'>폰스토어</option>
<option value='WKRB90907806'>기업</option>
<option value='WKRB90907808'>스피드모바일</option>
<option value='WKRB90907809'>민영통신</option>
<option value='WKRB90907810'>미래정보통신</option>
<option value='WKRB90907814'>엠에스통신</option>
<option value='WKRB90907816'>가개통</option>
<option value='WKRB90907817'>타이거통신</option>
<option value='WKRB90907818'>가온네트웍스</option>
<option value='WKRB90907820'>스마트엔젤</option>
<option value='WKRB90907821'>에스텔레콤</option>
<option value='WKRB90907822'>오래기업</option>
<option value='WKRB90907823'>에스앤지인터</option>
<option value='WKRB90907824'>에스제이커뮤니</option>
<option value='WKRB90907826'>SL네트웍스</option>
<option value='WKRB90907827'>하나통신</option>
<option value='WKRB90907828'>대원</option>
<option value='WKRB90907829'>(주)하농</option>
<option value='WKRB90907830'>JS커뮤니케이션</option>
<option value='WKRB90907831'>메가통신</option>
<option value='WKRB90907832'>잇츠솔루션</option>
<option value='WKRB90907833'>뉴지티에스</option>
<option value='WKRB90907834'>스트리처</option>
<option value='WKRB90907835'>우진통신</option>
<option value='WKRB90907836'>티비즈</option>
<option value='WKRB90907837'>굿모닝모바일</option>
<option value='WKRB90907838'>폰삼촌</option>
<option value='WKRB90907839'>원정보통신</option>
<option value='WKRB90907840'>태산컴퍼니</option>
<option value='WKRB90907841'>무한통신</option>
<option value='WKRB90907842'>초심</option>
<option value='WKRB90907843'>미래스미트코리아</option>
<option value='WKRB90907844'>우리모바일</option>
<option value='WKRB90907845'>H2정보통신</option>

                </select>
                <select name="branchCode" onchange="chgbrListCode();">
                <option value="">:::지사명:::</option>
                
                </select>
                <select name="teCode" onchange="chgteListCode();">
                <option value="">:::팀명:::</option>
                
                </select>
                <select name="counselorCode">
                <option value="">:::상담원:::</option>
                
                </select>
            
		</td>
		<td align="right" class="listhead0">
            Page<select name="pagesize" onchange="document.schFrm.submit();">
            <option value="10" >  15</option>
            <option value="20" selected>  30</option>
            <option value="50" >  50</option>
            <option value="100" > 100</option></select>
		</td>
	</tr>
	
	</form>
</table>
<table width="99%" class="subtitle" style="margin-top:20px;">
	<tr height="20">
		<td class="subtitle_subject" width="230" valign="top" >신용조회 요청</td>
		<td class="subtitle_etc"></td>
	</tr>
</table>
<table width="99%" class="tp_list1">
	<tr height="30">
		<td class="listhead1" width="3%" style="font-size:8pt;">순번</td>
		<td class="listhead1" width="4%" style="font-size:8pt;">등록일자</td>
		
		<td class="listhead1" width="6%" style="font-size:8pt;">
		지사
		</td>
		
		<td class="listhead1" width="4%" style="font-size:8pt;">판매유형</td>
		<td class="listhead1" width="5%" style="font-size:8pt;">고객명</td>
		<td class="listhead1" width="7%" style="font-size:8pt;">주민번호</td>
		<td class="listhead1" width="10%" style="font-size:8pt;">상담메모</td>
		<td class="listhead1" width="7%" style="font-size:8pt;">조회상태</td>
		<td class="listhead0" width="80" style="font-size:8pt;">관리</td>
		<td class="listhead1" style="font-size:8pt;">본사메모</td>
	</tr>
	
	<tr height="30">
		<td class="list1 ffmver fsz11">4158</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.05.15</td>
		
		<td class="list1 pdt3">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91949766','','','_S120',650,500);" class="cshand" title="클릭후 강민 고객 정보수정">강민</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    910110-1069329<br>
		    010-7777-8655
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		
		    <span onclick="popPostFieldSize('/_Member/?prgid=C1101','C1101','WKRS91949766','','','_C1101',1010,790);" class="cshand"><span style='color:#000080'>신규등록</span></span>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_new_01.gif" border="0">
		    
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button02 h20 cshand" value="유치실패" onclick="window.dummyMain.location.href='./?prgid=S1312&gNo=WKRS91949766&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="신용정상 / 1회선사용중 / 할부가능(3) / 착한대상 / 잔여9개월 246,294 / 올인원54 / 월6만5천원">
		    신용정상 / 1회선사용중 / 할부가능(3) / 착한대상 / 잔여9개월 246,294 / 올인원54 / 월6만5천원..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4157</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.05.08</td>
		
		<td class="list1 pdt3">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91949443','','','_S120',650,500);" class="cshand" title="클릭후 이덕원 고객 정보수정">이덕원</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    950908-1774518<br>
		    010-6329-7384
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		
		    <span onclick="popPostFieldSize('/_Member/?prgid=C1101','C1101','WKRS91949443','','','_C1101',1010,790);" class="cshand"><span style='color:#000080'>신규등록</span></span>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_new_01.gif" border="0">
		    
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button02 h20 cshand" value="유치실패" onclick="window.dummyMain.location.href='./?prgid=S1312&gNo=WKRS91949443&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="위약금 14,430/잔여 19개월 495.248">
		    위약금 14,430/잔여 19개월 495.248
		</td>
	</tr>
    
	<tr height="30">
		<td bgcolor="#FFFF94" align="center">4156</td>
		<!-- 등록일자 //-->
		<td bgcolor="#FFFF94" align="center">13.05.08</td>
		
		<td bgcolor="#FFFF94" align="center">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td bgcolor="#FFFF94" align="center">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td bgcolor="#FFFF94" align="center"><b>
		
			<span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91949120','','','_S120',650,500);" class="cshand" title="클릭후 윤정빈 고객 정보수정">윤정빈</span>
			
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td bgcolor="#FFFF94" align="center">
		    821126-2850116<br>
		    010-5237-1321
		</td>
		<!-- 상담메모 //-->
		<td bgcolor="#FFFF94" align="center" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td bgcolor="#FFFF94" align="center">
		<span style='color:#0000ff'>접수완료</span>
		</td>
		<!-- 관리 //-->
		<td bgcolor="#FFFF94" align="center" align="center" width="80">
		
		    <input type="button" class="button02 h20 cshand" value="보기" onclick="popPostFieldSize('/_Member/?prgid=C1107','C1107','','WKRM91482765','','_C1107',900,790);" >
		    
		</td>
		<!-- 본사메모 //-->
		<td bgcolor="#FFFF94" align="center" title="신용정상/1회선사용중/할부가능(4)/아이폰4/3지/자사번호/올인원54/월7만원">
		    신용정상/1회선사용중/할부가능(4)/아이폰4/3지/자사번호/올인원54/월7만원..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4155</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.05.06</td>
		
		<td class="list1 pdt3">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91540202','','','_S120',650,500);" class="cshand" title="클릭후 김정웅 고객 정보수정">김정웅</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    740123-1782820<br>
		    010-9444-4393
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91540202&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="신용정상/1회선사용중/할부가능(0)/착한기변/온가족20%/자사번호/올인원54/잔여16개월 411.844/월7만">
		    신용정상/1회선사용중/할부가능(0)/착한기변/온가족20%/자사번호/올인원54/잔여16개월 411.844/월7만..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4154</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.26</td>
		
		<td class="list1 pdt3">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91948797','','','_S120',650,500);" class="cshand" title="클릭후 금대석 고객 정보수정">금대석</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    580407-1777817<br>
		    010-0002-0002
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91948797&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="신용정상/3회선사용중/할부가능(0)">
		    신용정상/3회선사용중/할부가능(0)
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4153</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.22</td>
		
		<td class="list1 pdt3">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91948474','','','_S120',650,500);" class="cshand" title="클릭후 김구범 고객 정보수정">김구범</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    980427-1853217<br>
		    010-6228-9107
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91948474&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="법대/2회선사용제한/1회선사용중/할부가능(2)/명의자/LTE팅42/자사/4지/잔여34개월 995,338/월 5만원">
		    법대/2회선사용제한/1회선사용중/할부가능(2)/명의자/LTE팅42/자사/4지/잔여34개월 995,338/월 5만원..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4152</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.16</td>
		
		<td class="list1 pdt3">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91947505','','','_S120',650,500);" class="cshand" title="클릭후 아침에영광 고객 정보수정">아침에영광</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    230111-0105021<br>
		    010-4820-9263
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91947505&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="사업자번호도 입력해주세요">
		    사업자번호도 입력해주세요
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4151</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.16</td>
		
		<td class="list1 pdt3">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91947828','','','_S120',650,500);" class="cshand" title="클릭후 백옥종 고객 정보수정">백옥종</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    570108-2390321<br>
		    010-3760-5522
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		
		    <span onclick="popPostFieldSize('/_Member/?prgid=C1101','C1101','WKRS91947828','','','_C1101',1010,790);" class="cshand"><span style='color:#000080'>신규등록</span></span>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_new_01.gif" border="0">
		    
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button02 h20 cshand" value="유치실패" onclick="window.dummyMain.location.href='./?prgid=S1312&gNo=WKRS91947828&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="신용정상 / 1회선사용중 / 할부가능(2) / 표준요금제 / 위약금 38,360 / 자사번호 / 월2~3만원 / 잔여할부없음">
		    신용정상 / 1회선사용중 / 할부가능(2) / 표준요금제 / 위약금 38,360 / 자사번호 / 월2~3만원 / 잔여할부없음..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4150</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.15</td>
		
		<td class="list1 pdt3">JNJ<br>JNJ</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:#0000ff;'>T-gate</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91820566','','','_S120',650,500);" class="cshand" title="클릭후 윤병호 고객 정보수정">윤병호</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    000000-1155015<br>
		    010-2366-5030
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91820566&oCode=WKRE90907791';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="010 2366 5030 SK번호가 아님">
		    010 2366 5030 SK번호가 아님
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4149</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.12</td>
		
		<td class="list1 pdt3">JNJ<br>JNJ</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:#0000ff;'>T-gate</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91946859','','','_S120',650,500);" class="cshand" title="클릭후 지종길 고객 정보수정">지종길</span>
		
		</b><br>
		<span style='color:#0000ff;'>KT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    520814-1036933<br>
		    010-8517-5777
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91946859&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="신용정상 / 1회선정지 / 할부가능(0) / 자시미납456.260">
		    신용정상 / 1회선정지 / 할부가능(0) / 자시미납456.260..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4148</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.12</td>
		
		<td class="list1 pdt3">JNJ<br>JNJ</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:#0000ff;'>T-gate</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91947182','','','_S120',650,500);" class="cshand" title="클릭후 이동우 고객 정보수정">이동우</span>
		
		</b><br>
		<span style='color:#0000ff;'>KT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    750725-1802412<br>
		    010-8576-3467
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		
		    <span onclick="popPostFieldSize('/_Member/?prgid=C1101','C1101','WKRS91947182','','','_C1101',1010,790);" class="cshand"><span style='color:#000080'>신규등록</span></span>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_new_01.gif" border="0">
		    
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button02 h20 cshand" value="유치실패" onclick="window.dummyMain.location.href='./?prgid=S1312&gNo=WKRS91947182&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="신용정상/사용회선없음/할부가능(4)">
		    신용정상/사용회선없음/할부가능(4)
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4147</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.11</td>
		
		<td class="list1 pdt3">JNJ<br>JNJ</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:#0000ff;'>T-gate</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91946536','','','_S120',650,500);" class="cshand" title="클릭후 이철환 고객 정보수정">이철환</span>
		
		</b><br>
		<span style='color:#0000ff;'>KT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    621103-1446810<br>
		    010-6398-2261
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91946536&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="1회선제한/사용회선없음/할부부적격(보험사고자,금융기관신용관리대상)/자사미납 220 / LG파워콤체납 449.440">
		    1회선제한/사용회선없음/할부부적격(보험사고자,금융기관신용관리대상)/자사미납 220 / LG파워콤체납 449.440..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4146</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.11</td>
		
		<td class="list1 pdt3">JNJ<br>JNJ</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:#0000ff;'>T-gate</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91946213','','','_S120',650,500);" class="cshand" title="클릭후 민병건 고객 정보수정">민병건</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    730806-1850115<br>
		    010-8758-0806
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91946213&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="신용정상/사용회선없음/할부가능(2)/자사미납 170 / 해지된번호">
		    신용정상/사용회선없음/할부가능(2)/자사미납 170 / 해지된번호..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4145</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.04.11</td>
		
		<td class="list1 pdt3">JNJ<br>JNJ</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:#0000ff;'>T-gate</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91945890','','','_S120',650,500);" class="cshand" title="클릭후 민선식 고객 정보수정">민선식</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    420714-1850115<br>
		    010-7355-1812
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91945890&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="1회선제한/1회선사용중/할부부적격(금융기관신용관리대상)/ 자사미납 21.210">
		    1회선제한/1회선사용중/할부부적격(금융기관신용관리대상)/ 자사미납 21.210..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4144</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.03.28</td>
		
		<td class="list1 pdt3">미래비즈<br>개통팀</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:#0000ff;'>T-gate</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91945567','','','_S120',650,500);" class="cshand" title="클릭후 김태우 고객 정보수정">김태우</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    821020-1923810<br>
		    010-3133-1101
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title=" ">
		     
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91945567&oCode=WKRE90907791';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="2회선사용제한/3회선사용중/할부가능(0)/자사미납520/lte100/4지/자사번호/잔여18개월 555.290/월250만원">
		    2회선사용제한/3회선사용중/할부가능(0)/자사미납520/lte100/4지/자사번호/잔여18개월 555.290/월250만원..
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4143</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.03.27</td>
		
		<td class="list1 pdt3">sjc01<br>에스제이</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:#0000ff;'>T-gate</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91945244','','','_S120',650,500);" class="cshand" title="클릭후 김아무 고객 정보수정">김아무</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    111111-2023910<br>
		    010-4151-9700
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91945244&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="비밀번호 신청고객">
		    비밀번호 신청고객
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4142</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.03.27</td>
		
		<td class="list1 pdt3">sjc01<br>에스제이</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:#0000ff;'>T-gate</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91944921','','','_S120',650,500);" class="cshand" title="클릭후 김정은 고객 정보수정">김정은</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    790128-2023913<br>
		    010-4576-2940
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		
		    <span onclick="popPostFieldSize('/_Member/?prgid=C1101','C1101','WKRS91944921','','','_C1101',1010,790);" class="cshand"><span style='color:#000080'>신규등록</span></span>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_new_01.gif" border="0">
		    
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button02 h20 cshand" value="유치실패" onclick="window.dummyMain.location.href='./?prgid=S1312&gNo=WKRS91944921&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="신용정상/1회선사용중/할부가능(3)/착한기변대상 실버/위약금8,130/3지/자사번호/올인원34/잔여4개월 84.704/tb끼리온가족/월4만원">
		    신용정상/1회선사용중/할부가능(3)/착한기변대상 실버/위약금8,130/3지/자사번호/올인원34/잔여4개월 84.704/tb끼리온가족/월4만원..
		</td>
	</tr>
    
	<tr height="30">
		<td bgcolor="#FFFF94" align="center">4141</td>
		<!-- 등록일자 //-->
		<td bgcolor="#FFFF94" align="center">13.03.20</td>
		
		<td bgcolor="#FFFF94" align="center">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td bgcolor="#FFFF94" align="center">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td bgcolor="#FFFF94" align="center"><b>
		
			<span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91944598','','','_S120',650,500);" class="cshand" title="클릭후 김도희 고객 정보수정">김도희</span>
			
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td bgcolor="#FFFF94" align="center">
		    890203-2852410<br>
		    010-9128-0474
		</td>
		<!-- 상담메모 //-->
		<td bgcolor="#FFFF94" align="center" title="미납 53020원/할부가능(4)/2회선대상자/착한기변대상자/일반/올인원54/자사번호/월평균55000원사용/1회선사용중">
		    미납 53020원/..
		</td>
		<!-- 조회상태 //-->
		<td bgcolor="#FFFF94" align="center">
		<span style='color:#0000ff'>접수완료</span>
		</td>
		<!-- 관리 //-->
		<td bgcolor="#FFFF94" align="center" align="center" width="80">
		
		    <input type="button" class="button02 h20 cshand" value="보기" onclick="popPostFieldSize('/_Member/?prgid=C1107','C1107','','WKRM91435287','','_C1107',900,790);" >
		    
		</td>
		<!-- 본사메모 //-->
		<td bgcolor="#FFFF94" align="center" title="미납 53020원/할부4회선가능/2회선대상자/착한기변대상자/일반/올인원54/자사번호/월평균55000원사용/">
		    미납 53020원/할부4회선가능/2회선대상자/착한기변대상자/일반/올인원54/자사번호/월평균55000원사용/..
		</td>
	</tr>
    
	<tr height="30">
		<td bgcolor="#FFFF94" align="center">4140</td>
		<!-- 등록일자 //-->
		<td bgcolor="#FFFF94" align="center">13.03.18</td>
		
		<td bgcolor="#FFFF94" align="center">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td bgcolor="#FFFF94" align="center">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td bgcolor="#FFFF94" align="center"><b>
		
			<span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91944275','','','_S120',650,500);" class="cshand" title="클릭후 강연호 고객 정보수정">강연호</span>
			
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td bgcolor="#FFFF94" align="center">
		    640812-1920613<br>
		    010-2348-5077
		</td>
		<!-- 상담메모 //-->
		<td bgcolor="#FFFF94" align="center" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td bgcolor="#FFFF94" align="center">
		<span style='color:#0000ff'>접수완료</span>
		</td>
		<!-- 관리 //-->
		<td bgcolor="#FFFF94" align="center" align="center" width="80">
		
		    <input type="button" class="button02 h20 cshand" value="보기" onclick="popPostFieldSize('/_Member/?prgid=C1107','C1107','','WKRM91432089','','_C1107',900,790);" >
		    
		</td>
		<!-- 본사메모 //-->
		<td bgcolor="#FFFF94" align="center" title="착한대상/할부금무/할부정상/tb끼리온가족/월3만">
		    착한대상/할부금무/할부정상/tb끼리온가족/월3만
		</td>
	</tr>
    
	<tr height="30">
		<td class="list1 ffmver fsz11">4139</td>
		<!-- 등록일자 //-->
		<td class="list1 pdt3">13.03.08</td>
		
		<td class="list1 pdt3">라온네트웍스<br>김희정본부장</td>
		
		<!-- 지사 //-->
		<!-- 판매유형 //-->
		<td class="list1 pdt3">
			<span style='color:rgb(0,0,0);'>오프라인</span>
		</td>
		<!-- 고객명 //-->
		<td class="list1 pdt3"><b>
		
		    <span onclick="popPostFieldSize('./?prgid=S120','S120','WKRS91943952','','','_S120',650,500);" class="cshand" title="클릭후 박미자 고객 정보수정">박미자</span>
		
		</b><br>
		<span style='color:#ff0000;'>SKT</span>
		</td>
		<!-- 주민번호 //-->
		<td class="list1 pdt3">
		    500815-2121217<br>
		    010-9279-6495
		</td>
		<!-- 상담메모 //-->
		<td class="list1 pdt3 cshand" title="">
		    
		</td>
		<!-- 조회상태 //-->
		<td class="list1 pdt3">
		<span style='color:rgb(142,164,255)'>보류</span>
		</td>
		<!-- 관리 //-->
		<td class="list0" align="center" width="80">
		
		    <input type="button" class="button03 h20 cshand" value="재접수" onclick="window.dummyMain.location.href='./?prgid=S1332&gNo=WKRS91943952&oCode=WKRE90907790';">
		
		</td>
		<!-- 본사메모 //-->
		<td class="list1 pdt3 cshand" title="신용정상 / 1회선사용중 / 할부가능(1) / lte62 / 잔여31개월 882,900 / 스마트세이트 / 파손보험 /">
		    신용정상 / 1회선사용중 / 할부가능(1) / lte62 / 잔여31개월 882,900 / 스마트세이트 / 파손보험 /..
		</td>
	</tr>
    
</table>

<form name="pagingFrm">
<input type="hidden" name="prgid" value="S110">
<input type="hidden" name="pageno">
<input type="hidden" name="pagesize" value="20">
<input type="hidden" name="fraCode" value="">
<input type="hidden" name="branchCode" value="">
<input type="hidden" name="teCode" value="">
<input type="hidden" name="counselorCode" value="">
<input type="hidden" name="creState" value="">
<input type="hidden" name="sitem" value="">
<input type="hidden" name="stext" value="">
<input type="hidden" name="sDate" value="">
<input type="hidden" name="eDate" value="">
<input type="hidden" name="openCode" value="">
<input type="hidden" name="tongsinSa" value="">
<input type="hidden" name="eventCode" value="">
</form>
<div id="areaFootPaging" style="both:clear;">
	<table cellpadding="0" cellspacing="0">
		<tr>
			<td width="99%" height="30">
				<table cellpadding='0' cellspacing='0' id='tbl_paging'><tr><td width='21' height='20' align='left'><img src='http://smtech.kradmin.co.kr/images/board/back_blue.gif' border='0' align='absmiddle' onclick="goPage('1');" alt='이전' style='_cursor:hand;cursor:pointer;'></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td1'>1</td></tr></table></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td2 cshand' onclick=goPage('2'); onmouseover=this.style.borderColor='#F00F00'; onmouseout=this.style.borderColor='#DDDDDD';>2</td></tr></table></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td2 cshand' onclick=goPage('3'); onmouseover=this.style.borderColor='#F00F00'; onmouseout=this.style.borderColor='#DDDDDD';>3</td></tr></table></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td2 cshand' onclick=goPage('4'); onmouseover=this.style.borderColor='#F00F00'; onmouseout=this.style.borderColor='#DDDDDD';>4</td></tr></table></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td2 cshand' onclick=goPage('5'); onmouseover=this.style.borderColor='#F00F00'; onmouseout=this.style.borderColor='#DDDDDD';>5</td></tr></table></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td2 cshand' onclick=goPage('6'); onmouseover=this.style.borderColor='#F00F00'; onmouseout=this.style.borderColor='#DDDDDD';>6</td></tr></table></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td2 cshand' onclick=goPage('7'); onmouseover=this.style.borderColor='#F00F00'; onmouseout=this.style.borderColor='#DDDDDD';>7</td></tr></table></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td2 cshand' onclick=goPage('8'); onmouseover=this.style.borderColor='#F00F00'; onmouseout=this.style.borderColor='#DDDDDD';>8</td></tr></table></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td2 cshand' onclick=goPage('9'); onmouseover=this.style.borderColor='#F00F00'; onmouseout=this.style.borderColor='#DDDDDD';>9</td></tr></table></td><td style='padding:0 8px 0 0;'><table><tr><td align='center' valign='top' class='paging_td2 cshand' onclick=goPage('10'); onmouseover=this.style.borderColor='#F00F00'; onmouseout=this.style.borderColor='#DDDDDD';>10</td></tr></table></td><td width='21' height='20' align='left'><img src='http://smtech.kradmin.co.kr/images/board/next_blue.gif' border='0' align='absmiddle' onclick="goPage('2');" alt='다음' style='_cursor:hand;cursor:pointer;'></td><td height='20' align='left' valign='top' style='padding:6px 0 0 0;vertical-align:top;'><a href='javascript:;' onclick=goPage('208'); alt='끝' style='font-size:11px;'>끝</a></td></tr></table>
			</td>
		</tr>
	</table>
</div>

<form name="delFrm">
<input type="hidden" name="idxNo">
<input type="hidden" name="pageno" value="1">
<input type="hidden" name="branchCode" value="">
<input type="hidden" name="creState" value="">
<input type="hidden" name="sDate" value="">
<input type="hidden" name="eDate" value="">
<input type="hidden" name="openCode" value="">
<input type="hidden" name="tongsinSa" value="">
<input type="hidden" name="eventCode" value="">
</form>
<form name="postFrm">
<input type="hidden" name="prgid">
<input type="hidden" name="gNo">
<input type="hidden" name="idxNo">
<input type="hidden" name="oCode">
</form>

<!-- 컨텐츠 끝 -->
		</td>
		<td></td>
	</tr>
</table>
</body>

</html>
<iframe width="100%" height="100" border="0" frameborder="0" name="dummyMain" id="dummyMain" src="about:blank" style="display:none;"></iframe>
<iframe width="0" height="0" border="0" frameborder="0" src="/lib/session_update.asp" style="display:none;"></iframe>
