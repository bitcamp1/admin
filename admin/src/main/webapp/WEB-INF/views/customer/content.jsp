<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	#content tr{background-color:#FFFF94;}
	#cust_ctn_cancelstate span{color:red;}
	#gOpeningName_10337{width:200px; height:40px; position:absolute; left:15px; top:25px; z-index:1; display:none;}
	#gOpeningName_10337 table{border:1; cellspacing:0; bordercolordark:white; width:200; bordercolorlight:black;}
	#gfrnName_10337{width:200px; height:40px; position:absolute; left:15px; top:25px; z-index:1; display:none;}
	#gfrnName_10337{border:1; cellspacing:0; bordercolordark:white; width:200; bordercolorlight:black;}
</style>
<table id='content' class="tp_list1">
	<tbody><tr>
		<th class="listhead1" width="30"></th>
		<th class="listhead1" width="40">번호</th>
		<th class="listhead1" width="60">등록일자</th>
		<th class="listhead1" width="80">판매유형</th>
		<th class="listhead1">총판</th>
		<th class="listhead1">명의자</th>
		<th class="listhead1">고객번호<br>/전화번호</th>
		<th class="listhead1">신청모델/색상</th>
		<th class="listhead1" width="80">가입유형</th>
		<th class="listhead1" width="100">요금제/할부원금</th>
		<th class="listhead1" width="100">진행상태</th>
		<th class="listhead1" width="70">개통상태</th>
		<th class="listhead1" width="70">취소상태</th>
		<th class="listhead1" width="60">CIA</th>
		
	</tr>
	<form name="memFrm"></form>
    <input type="hidden" name="prgid">
    <input type="hidden" name="stateCode" value="">
	
	<tr height="30">
		<!-- 체크박스--><td id='cust_ctn_checkbox' class="list1 ffmver fsz11"><input type="checkbox"/></td>
		<!-- 순번--><td id='cust_ctn_seq' class="list1 ffmver fsz11">10237</td>
		<!-- 등록일자--><td id='cust_ctn_registdate' class="list1 pdt3">13.10.23</td>
		<!-- 판매유형--><td id='cust_ctn_saletype' class="list1 pdt3"> <span style="color:rgb(0,0,0);">오프라인</span></td>
		<!-- 총판--><td id='cust_ctn_agency' class="list1 pdt3">
		        		<div style="position:relative;"><span onmouseover="showMouseStr('gfrnName_10337',true);" onmouseout="showMouseStr('gfrnName_10337',false);" class="cshand">폰스토어</span><br>폰스토어
		        		<div id="gfrnName_10337" style="">
		                    <table >
		                        <tbody><tr> <td height="20" style="background-color:black;" align="center" colspan="2"><font color="white">미리보기</font></td></tr>
		                        <tr><td height="20" bgcolor="black" align="center"><font color="white">연락처</font></td>
		                            <td height="20" bgcolor="yellow" align="center"><font color="black"><b>0-0-0</b></font></td></tr></tbody></table></div></div></td>
		<!-- 명의자--><td id='cust_ctn_custname' class="list1 pdt3 cshand" onclick="popPostFieldSize('./?prgid=C1107', 'C1107', '', 'WKRM92062464', '', 'memView2','930','790');" title="최승환 고객 정보열람"> 최승환</td>
		<!-- 주민번호/전화번호--><td id='cust_ctn_ssn_tel' class="list1 pdt3">*******<br>010-5555-6666</td>
        <!-- 신청모델/색상 //-->
		<td id='cust_ctn_model_color' class="list1 pdt3">
    		<div style="position:relative;"><span onmouseover="showMouseStr('gOpeningName_10337',true);" onmouseout="showMouseStr('gOpeningName_10337',false);" class="cshand">SHV-E300S_32G(갤4)</span>
            <br>블랙
            <div id="gOpeningName_10337">
                <table>
                    <tbody><tr>
                        <td height="20" style="background-color:black;" align="center" colspan="2"><font color="white">미리보기</font></td>
                    </tr>
                    
                    <tr>
                        <td height="20" bgcolor="black" align="center"><font color="white">개통처명</font></td>
                        <td height="20" bgcolor="yellow" align="center"><font color="black"><b>S코드</b></font></td>
                    </tr>
                    <tr>
                        <td height="20" bgcolor="black" align="center"><font color="white">연락처</font></td>
                        <td height="20" bgcolor="yellow" align="center"><font color="black"><b>0-0-0</b></font></td>
                    </tr>
                    
                    <tr>
                        <td height="20" bgcolor="black" align="center"><font color="white">최종코드변경자</font></td>
                        <td height="20" bgcolor="yellow" align="center"><font color="black"><b>본사</b></font></td>
                    </tr>
                </tbody></table>
            </div>
            </div>
            
		</td>
		<!-- 가입유형--><td id='cust_ctn_jointype' class="list1 pdt3"> <span style="color:#ff00ff">번호이동</span></td>
		<!-- 요금제/할부원금--><td id='cust_ctn_tariff_totalpay'class="list1 pdt3 cshand" onfocus="blur();" onclick="popPostFieldSize('./?prgid=C580', 'C580', '', 'WKRM92062464', '', '_basongView','690','550');"> <span style="color:#0000ff">LTE 전국민 무한 75</span><br>450,000</td>
		<!-- 진행상태--><td id='cust_ctn_procstate' class="list1 pdt3 cshand" onclick="popPostFieldSize('./?prgid=C510', 'C510', '', 'WKRM92062464', '', 'stateView','690','550');"> <span >개통완료</span><br></td>
		<!-- 개통상태--><td id='cust_ctn_openstate' class="list1 pdt3"><span  onclick="popPostFieldSize('./?prgid=C590', 'C590', '', 'WKRM92062464', '', '_openView','690','550');">2013.10.23</span></td>
		<!-- 취소상태--><td id='cust_ctn_cancelstate' class="list1 pdt3"><span>미개통</span></td>
		<!-- CIA--><td id='cust_ctn_cia' class="list0"><input type="button" class="button03 h20 cshand" value=" 삭제 " onclick="delectField('C110s9','WKRM92062464','WKRD90907803');"></td>
	</tr></tbody></table>


<script>
$(function(){
	
	
	
});
</script>