<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<style>
   	#gnb{width:1200px;height:20px;color:#505050;font-size:14px;font-weight:bold;background-color: #ddd;marign:0 auto;}
   	#gnb ul{list-style:none;margin:0;padding:0;}
   	#gnb ul li{float:left;font-weigth:bold; color:#505050;font-size:12px;margin-right:10px;padding:0 20px; cursor:pointer;}
   					
</style>
   
<div id='gnb'>
                <ul>
                    
                    <li id="credit">신용조회</li>
                    <li id="customer">고객리스트</li>
                    <li id="delivery">배송관리</li>
                    <li id="policy" >정책</li>
                    <li id="closure" >개통마감</li>
                    <li id="inventory" >재고관리</li>
                    <li id="receipt" >요금수납</li>
                    <li id="management" >관리자</li>
                    <li id="b2b" style='float:right;color:red;'>B2B사이트관리</li>
                </ul>
</div>
<script>
$(function(){
	$('#credit').click(function(){location.href='${pageContext.request.contextPath}/credit/main.do';});
	$('#customer').click(function(){location.href='${pageContext.request.contextPath}/customer/main.do';});
	$('#delivery').click(function(){location.href='${pageContext.request.contextPath}/delivery/main.do';});
	$('#policy').click(function(){location.href='${pageContext.request.contextPath}/policy/main.do';});
	$('#closure').click(function(){location.href='${pageContext.request.contextPath}/deadline/main.do';});
	$('#inventory').click(function(){location.href='${pageContext.request.contextPath}/inventory/main.do';});
	$('#receipt').click(function(){location.href='${pageContext.request.contextPath}/receipt/main.do';});
	$('#management').click(function(){location.href='${pageContext.request.contextPath}/manager/main.do';});
	
	
});

</script>