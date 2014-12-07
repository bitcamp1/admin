
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
<!--
#search{width:1200px;margin:0 auto;margin-bottom:20px;}
-->
</style>
<%@ include file="srchFrm.jsp" %>  
<table id='search' class="tp_form1">
	<tbody><tr height="30">
		<td class="formhead1">ㆍ검색날짜</td>
		<td width="937" colspan="3" class="pdl7">
            <select name="filterCode">
    		<option value="1">접수일자</option>
    		<option value="2" style="color:green;">진행일자</option>
    		<option value="3" style="color:blue;">개통일자</option>
    		<option value="4" style="color:blue;">해지일자</option>
    		</select>
            <input type="text" name="sDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.sDate);" readonly="">&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif" align="absmiddle" onclick="Calendar_D(schFrm.sDate);" class="cshand" border="0"> ~ <input type="text" name="eDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.eDate);" readonly="">&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif" align="absmiddle" onclick="Calendar_D(schFrm.eDate);" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://smtech.kradmin.co.kr/images/icon_date_today.gif" align="absmiddle" onclick="insertDate('2013-10-24','2013-10-24');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://smtech.kradmin.co.kr/images/icon_date_yesterday.gif" align="absmiddle" onclick="insertDate('2013-10-23','2013-10-23');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://smtech.kradmin.co.kr/images/icon_date_thisMonth.gif" align="absmiddle" onclick="insertDate('2013-10-01','2013-10-31');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://smtech.kradmin.co.kr/images/icon_date_lastMonth.gif" align="absmiddle" onclick="insertDate('2013-09-01','2013-09-30');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="http://smtech.kradmin.co.kr/images/icon_date_all.gif" align="absmiddle" onclick="resetState('0');" class="cshand" border="0" alt="새로고침">
            
		</td>
	</tr>
	<tr height="30">
		<td class="formhead1">ㆍ검색조건</td>
		<td colspan="3" class="pdl7">
		
		<select name="openCode">
		<option value="">::개통처::</option>
		<option value="WKRE90907790">S코드</option>
<option value="WKRE90907791">Y코드</option>

		</select>
		
		<select name="eventCode">
		<option value="">::판매유형::</option>
        <option value="1001">오프라인</option>
<option value="1002">T-gate</option>

		</select>
		
		<select name="supportCode">
		<option value="">::고객사은품::</option>
		<option value="1001">없음</option>
<option value="1002">필름,케이스</option>

		</select>
		
		<br>
		<select name="modelCode" onchange="chgListModelCode();">
		<option value="">::신청모델::</option>
		
		<option value="1001">SHW-M440S(S3-3G)</option>
<option value="1007">SHV-E210S_16G(S3-4G)</option>
<option value="1008">LG-F160S</option>
<option value="1009">LG-F100S(뷰)</option>
<option value="1012">SHV-E250S_32G(노트2)</option>
<option value="1016">IPHONE5_32G</option>
<option value="1017">IPHONE5_16G</option>
<option value="1018">IPHONE5_64G</option>
<option value="1023">LG-F240S(옵지프로)</option>
<option value="1025">SHV-E300S_32G(갤4)</option>
<option value="1027">SHV-E330S_32G(LTE-A)</option>
<option value="1028">LG-F320S(옵G2)</option>
<option value="1029">SM-N900S(노트3)</option>

		</select>
		<select name="colorCode">
		<option value="">::색상::</option>
		<option value="1001">블랙</option>
<option value="1002">화이트</option>
<option value="1003">레드</option>
<option value="1004">블루</option>
<option value="1005">핑크</option>
<option value="1006">카본블루</option>
<option value="1007">그레이</option>
<option value="1008">브라운</option>
<option value="1009">와인</option>

		</select>
		<select name="gaimCode">
		<option value="">::가입유형::</option>
		<option value="1001">보상기변</option>
<option value="1002">번호이동</option>
<option value="1003">행복기변</option>
<option value="1004">신규에이징</option>
<option value="1005">010신규</option>
<option value="1006">일반기변</option>
<option value="1007">착한기변</option>
<option value="1008">착한기변(VIP)</option>

		</select>
		<select name="feeCode">
		<option value="">::요금제::</option>
		<option value="1001">올인원34</option>
<option value="1002">올인원44</option>
<option value="1003">올인원54</option>
<option value="1004">올인원64</option>
<option value="1005">올인원79</option>
<option value="1006">올인원94</option>
<option value="1007">LTE 34</option>
<option value="1008">LTE 42</option>
<option value="1009">LTE 52</option>
<option value="1010">LTE 62</option>
<option value="1011">LTE 72</option>
<option value="1012">LTE 85</option>
<option value="1013">LTE 100</option>
<option value="1014">뉴태블릿29</option>
<option value="1015">LTE데이터전용2.5G</option>
<option value="1016">LTE데이터전용1G</option>
<option value="1017">LTE T끼리 35</option>
<option value="1018">LTE T끼리 45</option>
<option value="1019">LTE T끼리 55</option>
<option value="1020">LTE T끼리 65</option>
<option value="1021">LTE 전국민 무한 75</option>
<option value="1022">LTE 전국민 무한 85</option>
<option value="1023">LTE 전국민 무한 100</option>
<option value="1024">LTE데이터전용5G</option>
<option value="1025">LTE팅 34</option>
<option value="1026">LTE팅 42</option>
<option value="1027">LTE팅 52</option>
<option value="1028">LTE 전국민 무한 69</option>

		</select>
		<select name="costCode">
		<option value="">::가입비::</option>
		<option value="1001">없음</option>
<option value="1002">분납(고객)</option>
<option value="1003">면제(차감)</option>

		</select>
		<select name="usimCode">
		<option value="">::유심카드::</option>
		<option value="1001">없음</option>
<option value="1002">면제(차감)</option>
<option value="1003">후납(고객)</option>

		</select>
		
		<select name="bugaCode2">
		<option value="">::부가서비스::</option>
		<option value="1001">정책면제</option>
<option value="1002">폰세이프</option>
<option value="1003">컬러링</option>

		</select>
		<select name="contractCode">
		<option value="">::약정사항::</option>
		<option value="1001">24개월할부</option>
<option value="1002">30개월할부</option>
<option value="1003">36개월할부</option>

		</select>
		
		</td>
	</tr>
	<tr height="20">
		<td class="formhead1" rowspan="2">ㆍ진행상태</td>
		<td colspan="3" class="pdl7">
		    <table class="tp_oplist"><tbody><tr>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="110" id="stateCode_110"><span style="color:#000000;"><label for="stateCode_110">신규접수(0)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="113" id="stateCode_113"><span style="color:#008000;"><label for="stateCode_113">해피완료(0)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="116" id="stateCode_116"><span style="color:#339966;"><label for="stateCode_116">해피보류(0)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="118" id="stateCode_118"><span style="color:#993300;"><label for="stateCode_118">배송요청(0)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="139" id="stateCode_139"><span style="color:#ff6600;"><label for="stateCode_139">배정완료(0)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="136" id="stateCode_136"><span style="color:#ff0000;"><label for="stateCode_136">배정보류(21)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="144" id="stateCode_144"><span style="color:rgb(218,47,0);"><label for="stateCode_144">배송전취소(286)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="114" id="stateCode_114"><span style="color:#3366ff;"><label for="stateCode_114">배송중(2)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="120" id="stateCode_120"><span style="color:#0000ff;"><label for="stateCode_120">배송완료(0)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="138" id="stateCode_138"><span style="color:#ff0000;"><label for="stateCode_138">개통요청(0)</label></span>&nbsp;&nbsp;
</td>
</tr></tbody></table>
</td></tr><tr height="20">
    <td class="tp_oplist list0 pdl7">
<table class="tp_oplist"><tbody><tr>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="111" id="stateCode_111"><span style="color:#0000ff;"><label for="stateCode_111">전산개통(0)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="122" id="stateCode_122"><span style="color:#ff0000;"><label for="stateCode_122">개통보류(25)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="133" id="stateCode_133"><span style="color:#ff00ff;"><label for="stateCode_133">반품요청(11)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="140" id="stateCode_140"><span style="color:rgb(196,0,164);"><label for="stateCode_140">반품중(5)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="128" id="stateCode_128"><span style="color:#000000;"><label for="stateCode_128">반품완료(743)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="134" id="stateCode_134"><span style="color:#ff0000;"><label for="stateCode_134">교품요청(0)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="143" id="stateCode_143"><span style="color:#ff6600;"><label for="stateCode_143">교품발송(0)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="145" id="stateCode_145"><span style="color:#993300;"><label for="stateCode_145">교품개통(12)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="146" id="stateCode_146"><span style="color:rgb(0,0,0);"><label for="stateCode_146">교품처리완료(295)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="stateCode" value="151" id="stateCode_151"><span style="color:rgb(0,2,158);"><label for="stateCode_151">공판처리(4)</label></span>&nbsp;&nbsp;
</td>
</tr></tbody></table>
    </td>
</tr>

		
	

	<tr height="20">
		<td class="formhead1">ㆍ개통상태</td>
		<td colspan="3" class="pdl7">
		    <table class="tp_oplist"><tbody><tr>
<td width="120" class="tp_oplist list0">
<input type="radio" name="openingCode" value="121" id="openingCode_121"><span style="color:#0000ff;"><label for="openingCode_121">개통완료(8826)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" name="openingCode" value="141" id="openingCode_141"><span style="color:#ff0000;"><label for="openingCode_141">해지완료(6)</label></span>&nbsp;&nbsp;
</td>
<td width="120" class="tp_oplist list0">
<input type="radio" onclick="resetState(1);" id="openingCode_zero"><span style="color:red;"><label for="openingCode_zero">상태값 초기화</label></span>&nbsp;&nbsp;
</td>
</tr></tbody></table>

		</td>
	</tr>
	<tr height="20">
		<td class="formhead1">ㆍ취소상태</td>
		<td colspan="3" class="pdl7">
		    <table class="tp_oplist"><tbody><tr>
<td width="150" class="tp_oplist list0">
<input type="radio" name="openingCode" value="147" id="openingCode_147"><span style="color:#ff0000;"><label for="openingCode_147">개통취소요청(0)</label></span>&nbsp;&nbsp;
</td>
<td width="150" class="tp_oplist list0">
<input type="radio" name="openingCode" value="148" id="openingCode_148"><span style="color:#800080;"><label for="openingCode_148">개통취소완료(0)</label></span>&nbsp;&nbsp;
</td>
<td width="150" class="tp_oplist list0">
<input type="radio" name="openingCode" value="149" id="openingCode_149"><span style="color:#00ff00;"><label for="openingCode_149">개통취소보류(0)</label></span>&nbsp;&nbsp;
</td>
<td width="150" class="tp_oplist list0">
<input type="radio" name="openingCode" value="150" id="openingCode_150"><span style="color:#ff0000;"><label for="openingCode_150">개통취소처리완료(1)</label></span>&nbsp;&nbsp;
</td>
<td width="150" class="tp_oplist list0">
<input type="radio" name="openingCode" value="112" id="openingCode_112"><span style="color:#000000;"><label for="openingCode_112">미개통(0)</label></span>&nbsp;&nbsp;
</td>
</tr></tbody></table>

		</td>
	</tr>
	<tr height="30">
		
		<td class="formhead1">ㆍ담당부서</td>
		<td colspan="2" class="pdl7">
                
                        <select name="fraCode" onchange="chgfrListCode();">
                        <option value="">::총판그룹::</option>
                        <option value="WKRB90907790">휴대폰할인마트</option>
<option value="WKRB90907792">지인판매</option>
<option value="WKRB90907795">레아모바일</option>
<option value="WKRB90907796">라온네트웍스</option>
<option value="WKRB90907797">스마트통신(인천)</option>
<option value="WKRB90907798">엠유네트웍스</option>
<option value="WKRB90907800">미소텔레콤</option>
<option value="WKRB90907801">폰스토어</option>
<option value="WKRB90907806">기업</option>
<option value="WKRB90907808">스피드모바일</option>
<option value="WKRB90907809">민영통신</option>
<option value="WKRB90907810">미래정보통신</option>
<option value="WKRB90907814">엠에스통신</option>
<option value="WKRB90907816">가개통</option>
<option value="WKRB90907817">타이거통신</option>
<option value="WKRB90907818">가온네트웍스</option>
<option value="WKRB90907820">스마트엔젤</option>
<option value="WKRB90907821">에스텔레콤</option>
<option value="WKRB90907822">오래기업</option>
<option value="WKRB90907823">에스앤지인터</option>
<option value="WKRB90907824">에스제이커뮤니</option>
<option value="WKRB90907826">SL네트웍스</option>
<option value="WKRB90907827">하나통신</option>
<option value="WKRB90907828">대원</option>
<option value="WKRB90907829">(주)하농</option>
<option value="WKRB90907830">JS커뮤니케이션</option>
<option value="WKRB90907831">메가통신</option>
<option value="WKRB90907832">잇츠솔루션</option>
<option value="WKRB90907833">뉴지티에스</option>
<option value="WKRB90907834">스트리처</option>
<option value="WKRB90907835">우진통신</option>
<option value="WKRB90907836">티비즈</option>
<option value="WKRB90907837">굿모닝모바일</option>
<option value="WKRB90907838">폰삼촌</option>
<option value="WKRB90907839">원정보통신</option>
<option value="WKRB90907840">태산컴퍼니</option>
<option value="WKRB90907841">무한통신</option>
<option value="WKRB90907842">초심</option>
<option value="WKRB90907843">미래스미트코리아</option>
<option value="WKRB90907844">우리모바일</option>
<option value="WKRB90907845">H2정보통신</option>

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
		
		<td align="right">
            Page<select name="pagesize" onchange="document.schFrm.submit();">
            <option value="20" selected="">  20</option>
            <option value="30">  30</option>
            <option value="50">  50</option>
            <option value="100"> 100</option></select>
		</td>
	</tr>
	
</tbody></table>