<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<table width="620" class="subtitle" style="margin-top:40px;">
            	<tbody><tr>
            		<td valign="middle" style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:23px; padding-left:19px; color:#366CB3; font-weight:bold;">명의자 기본정보</td>
            	</tr>
</tbody></table>
   
<table cellpadding="0" cellspacing="0" width="620" class="tp_form1">
            	<form name="addFrm"></form>
            	<input type="hidden" name="prgid" value="C1102">
            	<input type="hidden" name="gNoChk" value="WKRS91949443">
                <tbody><tr height="30">
            		<td class="addhead">ㆍ소속</td>
            		<td class="pdl7">
            		
            		    <select name="diCode" onchange="chgdiCode();">
            	        <option value="">:::총판:::</option>
                    	<option value="WKRB90907796" style="color:red;" selected="">라온네트웍스</option>

                    	</select>
                    	<select name="frCode" onchange="chgfrCode();">
            	        <option value="">:::지사:::</option>
            	        <option value="WKRC90907797" style="color:red;" selected="">라온네트웍스</option>
<option value="WKRC90907805" style="color:red;">라온2호</option>

                    	</select>
                    
            		</td>
            		<td class="addhead">ㆍ담당자</td>
            		<td class="pdl7">
            		
            		    <select name="teCode" onchange="chgteCode();">
            	        <option value="">:::팀:::</option>
            	        
                    	</select>
                    	<select name="emCode">
            	        <option value="">:::상담원:::</option>
            	        <option value="WKRF90907800" style="color:red;" selected="">김희정본부장</option>
<option value="WKRF90907801" style="color:red;">김지언실장</option>
<option value="WKRF90907808" style="color:red;">김정호팀장</option>
<option value="WKRF90907811" style="color:red;">김윤경팀장</option>
<option value="WKRF90907813" style="color:red;">김성규팀장</option>
<option value="WKRF90907815" style="color:red;">이상은팀장</option>
<option value="WKRF90907819" style="color:red;">오부옥팀장</option>

                		</select>
                	
            		</td>
            	</tr>

                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ등록일자</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="regDate" value="2013-10-25" class="input_text imed" size="10" readonly="">
                    </td>
                    <td valign="middle" class="addhead">ㆍ기존통신사</td>
                    <td valign="middle" class="pdl7">
                    
                        <select name="guTongsin" onchange="document.addFrm.eventCode.focus();">
            		    <option value="">::통신사::</option><option value="1002" style="color:#ff0000;" selected="">SKT</option>
<option value="1003" style="color:#0000ff;">KT</option>
<option value="1004" style="color:#ff00ff;">LGU+</option>
<option value="1005" style="color:#cc99ff;">MVNO</option>

                        </select>
                    
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ판매유형</td>
                    <td valign="middle" class="pdl7">
                    <select name="eventCode" onchange="document.addFrm.nomineeName.focus();">
            		<option value="">::판매유형::</option>
            		<option value="1001" selected="">오프라인</option>
<option value="1002">T-gate</option>

            		</select>
                    </td>
                    <td valign="middle" class="addhead">ㆍ명의자</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="nomineeName" value="이덕원" class="input_text imea" size="15">
                    </td>
                </tr>
                <tr>
                    <td valign="middle" class="addhead">ㆍ주민번호</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="nomineeSocno1" value="950908" class="input_text imed" size="8" maxlength="6" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.addFrm.nomineeSocno2.focus();}"> -
			            <input type="text" name="nomineeSocno2" value="1774518" class="input_text imed" size="8" maxlength="7" onblur="numberCheck(this);" onkeyup="if (this.value.length==7){document.addFrm.nomineeCell1.focus();}">
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ휴대전화</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="nomineeCell1" value="010" class="input_text imed" size="3" maxlength="3" onblur="numberCheck(this);" readonly="" onkeyup="if (this.value.length==3){document.addFrm.nomineeCell2.focus();}"> -
			            <input type="text" name="nomineeCell2" value="6329" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);" readonly="" onkeyup="if (this.value.length==4){document.addFrm.nomineeCell3.focus();}"> -
			            <input type="text" name="nomineeCell3" value="7384" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);" readonly="" onkeyup="if (this.value.length==4){document.addFrm.openerCode.focus();}">
                    </td>
                </tr>
                <tr height="30">
            		<td class="addhead">ㆍ개통처</td>
            		<td class="pdl7">
            			<select name="openerCode" onchange="openerSelect();">
                        <option value="">::선택::</option>
                        <option value="WKRE90907790" selected="">S코드</option>
<option value="WKRE90907791">Y코드</option>

                        </select>
            		</td>
            		<td class="addhead">ㆍ비상연락처</td>
            		<td class="pdl7">
            		    <input type="text" name="emerCell1" value="" class="input_text imed" size="3" maxlength="3" onblur="numberCheck(this);" onkeyup="if (this.value.length==3){document.addFrm.emerCell2.focus();}"> -
			            <input type="text" name="emerCell2" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);" onkeyup="if (this.value.length==4){document.addFrm.emerCell3.focus();}"> -
			            <input type="text" name="emerCell3" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
            		</td>
            	</tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ배송주소</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <input type="text" name="hzip1" size="4" value="680" class="input_text imed" maxlength="3" readonly="">-<input type="text" name="hzip2" size="4" value="010" class="input_text imed" maxlength="3" readonly="">
        	            <input type="button" value="주소검색" class="button06 h20" onclick="GlbZipcodeSearch('C11011');">
        	            <br>
        	            <input type="text" name="haddr1" size="50" value="울산 남구 신정동" class="input_text imea" readonly="">
        	            <br>
        	            <input type="text" name="haddr2" size="55" value="547-5번지" class="input_text imea">
                    </td>
                </tr>
            </tbody></table>