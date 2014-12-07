<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<table width="100%" align="center" class="subtitle">
	<tbody><tr height="26">
		<td class="subtitle_subject" width="230" valign="top">고객정보 보기</td>
		<td class="subtitle_etc"></td>
	</tr>
</tbody></table>
    
<table cellpadding="0" cellspacing="0" align="center" width="100%">
    <tbody><tr>
        <td valign="top">
            <table cellpadding="0" cellspacing="0" width="100%">
                <tbody><tr>
                    <td align="left" valign="bottom" class="pdt3">
                        <span name="skLogo" id="skLogo"><img src="/images/skLogo.gif" border="0"></span>
            		    <span name="ktLogo" id="ktLogo" style="display:none;"><img src="/images/ktLogo.gif" border="0"></span>
            		    <span name="lgLogo" id="lgLogo" style="display:none;"><img src="/images/lgLogo.gif" border="0"></span>
                    </td>
                </tr>
            </tbody></table>
            
            <%@ include file="department_info.jsp" %>
			
            <%@ include file="nominee_info.jsp" %>
            <%@ include file="applier_info.jsp" %>
           <%@ include file="payment_info.jsp" %>
            <table width="400" cellpadding="0" cellspacing="0" height="22" class="pdt3 tp_form1">
                <tbody><tr>
                    <td valign="middle" class="addhead">ㆍ메모</td>
                    <td valign="middle" class="pdt3 pdl7">
                        
                    </td>
                </tr>
            </tbody></table>
        </td>
        <td valign="top" align="left" width="260">
           <%@ include file="celphone_info.jsp" %>
        </td>
        <td valign="top" align="left" style="padding-top:10px;">
        	<span style="height:42px;">
        	
        	</span>
            <%@ include file="process_info.jsp" %>
            
        </td><td>
    </td></tr>
    
    <tr>
    	<td valign="top">
    		
           <%@ include file="virtual_number.jsp" %>
            
    	</td>
    	<td valign="top">
            <%@ include file="receipt_info.jsp" %>
    	</td>
    </tr>
    
    <tr>
        <td colspan="2" valign="top">
	        <%@ include file="consulting_info.jsp" %>
	    </td>
	    <td valign="top">
	        <%@ include file="ip_info.jsp" %>
	    </td>
	</tr>
    <tr height="45">
        <td align="center" colspan="3">
            <input type="button" value=" 신용조회 " style="width:60px;height:30px;" class="button06 cshand" onfocus="blur();" onclick="popPostFieldSize('/_Credibility/?prgid=S120','S120','','','','_popEdit2',650,500);">&nbsp;&nbsp;&nbsp;
            <input type="button" value=" 인쇄 " style="width:60px;height:30px;" class="button02 cshand" onfocus="blur();" onclick="print();">&nbsp;&nbsp;&nbsp;
                
                <input type="button" value=" 문자발송 " style="width:60px;height:30px;" onfocus="blur();" class="button03 cshand" onclick="popFieldSize('/_Sms/?reName=%B1%E8%C1%D8%C7%F5&amp;rePhone=010-4819-2635&amp;uNo=WKRM92069844','_SmsView',650,520);">&nbsp;&nbsp;&nbsp;
                
                <input type="button" value=" 진행상태 " style="width:60px;height:30px;" onfocus="blur();" class="button04 cshand" onclick="popPostFieldSize('./?prgid=C510','C510','','WKRM92069844','','stateView2',700,600);">&nbsp;&nbsp;&nbsp;
                
                <input type="button" value=" 배송 " style="width:60px;height:30px;" onfocus="blur();" class="button05 cshand" onclick="popPostFieldSize('./?prgid=C580','C580','','WKRM92069844','','_basongViwe2',700,600);">&nbsp;&nbsp;&nbsp;
                
                    <input type="button" value=" 수정 " style="width:60px;height:30px;" class="button06 cshand" onclick="popPostFieldSize('./?prgid=C1105','C1105','','WKRM92069844','','ModifyView2',1024,790);" onfocus="blur();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            <input type="button" value=" 닫기 " style="width:60px;height:30px;" onfocus="blur();" class="button07 cshand" onclick="self.close();">
        </td>
    </tr>
</tbody></table>