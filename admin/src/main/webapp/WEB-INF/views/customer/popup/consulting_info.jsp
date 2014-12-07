<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<table width="100%" class="subtitle">
            	<tbody><tr height="45">
            		<td style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:25px; padding-left:19px; color:#366CB3; font-weight:bold;">상담이력</td>
            	</tr>
            </tbody></table>
            <table width="100%" class="tp_form1" align="center">
                <form name="happyFrm"></form>
                <input type="hidden" name="prgid" value="C5109">
                <input type="hidden" name="uIDX" value="WKRM92069844">
                <tbody><tr>
            		<td class="formhead1">ㆍ상담이력</td>
            		<td style="padding:0 0 0 7px;" colspan="2">
            			<input type="radio" name="memoState" value="6" id="memoState_6"><span style="color:#ff00ff;"><label for="memoState_6">교품</label></span>&nbsp;&nbsp;
<input type="radio" name="memoState" value="5" id="memoState_5"><span style="color:#ff0000;"><label for="memoState_5">보류</label></span>&nbsp;&nbsp;
<input type="radio" name="memoState" value="4" id="memoState_4"><span style="color:#000000;"><label for="memoState_4">완료</label></span>&nbsp;&nbsp;
<input type="radio" name="memoState" value="3" id="memoState_3"><span style="color:#0000ff;"><label for="memoState_3">처리중</label></span>&nbsp;&nbsp;
<input type="radio" name="memoState" value="2" id="memoState_2"><span style="color:#ff0000;"><label for="memoState_2">민원</label></span>&nbsp;&nbsp;
<input type="radio" name="memoState" value="1" id="memoState_1"><span style="color:rgb(0,0,0);"><label for="memoState_1">기타</label></span>&nbsp;&nbsp;

            		</td>
            	</tr>
                <tr height="30">
            		<td class="formhead1">ㆍ상담내용</td>
            		<td style="padding:0 0 0 7px;" colspan="2">
            			<textarea name="happyMemo" class="textarea imea" style="width:380px;height:50px;"></textarea>
            			<input type="button" value=" 상 담 저 장 " style="width:80px;height:50px;font-weight:bold;" class="button07 cshand" onclick="checkMemsubmit('C5109');">
            		</td>
            	</tr>
        	    
        	</tbody></table>