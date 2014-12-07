<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ include file="srchFrm.jsp" %> 
<table class="tp_form1">
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
		    <input type="text" name="sDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.sDate);" readonly>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif"  onclick="Calendar_D(schFrm.sDate);"class="cshand"  border="0"> ~
		    <input type="text" name="eDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.eDate);" readonly>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif"  onclick="Calendar_D(schFrm.eDate);"class="cshand"  border="0">
				<img src="http://smtech.kradmin.co.kr/images/icon_date_today.gif"  onclick="insertDate('2013-10-23','2013-10-23');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_yesterday.gif"  onclick="insertDate('2013-10-22','2013-10-22');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_thisMonth.gif"  onclick="insertDate('2013-10-01','2013-10-31');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_lastMonth.gif"  onclick="insertDate('2013-09-01','2013-09-30');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_all.gif"  onclick="location.href='./?prgid=S110';" class="cshand" border="0" alt="새로고침">
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
</table>