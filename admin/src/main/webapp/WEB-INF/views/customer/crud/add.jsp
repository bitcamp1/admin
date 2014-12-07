<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../../common/body/up.jsp" %> 

<script>
<!--

//라디오버튼(통신사별) 클릭시
function radio_ImgView(No)
{
	var frm = document.addFrm;
	var opeCode = document.getElementById("opcode").value;
	if (frm.TongSinView[0].checked) {
	    document.getElementById("skLogo").style.display = '';
		document.getElementById("ktLogo").style.display = 'none';
		document.getElementById("lgLogo").style.display = 'none';
		var ocnt = document.getElementById("modelCode").options.length;
        for (j=0; j<ocnt; j++) {
        document.getElementById("modelCode").options.remove(0);
		document.getElementById("modelCode").options[0] = new Option('::모델별::','');
        }

        var ocnt0 = document.getElementById("colorCode").options.length;
        for (j=0; j<ocnt0; j++) {
        	document.getElementById("colorCode").options.remove(0);
        	document.getElementById("colorCode").options[0] = new Option('::색상::','');
        }

        var ocnt1 = document.getElementById("gaimCode").options.length;
        for (j=0; j<ocnt1; j++) {
        	document.getElementById("gaimCode").options.remove(0);
        	document.getElementById("gaimCode").options[0] = new Option('::가입유형::','');
        }

        var ocnt2 = document.getElementById("feeCode").options.length;
        for (j=0; j<ocnt2; j++) {
        	document.getElementById("feeCode").options.remove(0);
        	document.getElementById("feeCode").options[0] = new Option('::요금제::','');
        }

        var ocnt3 = document.getElementById("bugaCode").options.length;
        for (j=0; j<ocnt3; j++) {
        	document.getElementById("bugaCode").options.remove(0);
        	document.getElementById("bugaCode").options[0] = new Option('::할인유형::','');
        }

        var ocnt4 = document.getElementById("bugaCode2").options.length;
        for (j=0; j<ocnt4; j++) {
        	document.getElementById("bugaCode2").options.remove(0);
        	document.getElementById("bugaCode2").options[0] = new Option('::부가2::','');
        }

        var ocnt5 = document.getElementById("costCode").options.length;
        for (j=0; j<ocnt5; j++) {
        	document.getElementById("costCode").options.remove(0);
        	document.getElementById("costCode").options[0] = new Option('::가입비::','');
        }

        var ocnt6 = document.getElementById("guCellphone").options.length;
        for (j=0; j<ocnt6; j++) {
        	document.getElementById("guCellphone").options.remove(0);
        	document.getElementById("guCellphone").options[0] = new Option('::구)단말기::','');
        }

        var ocnt7 = document.getElementById("usimCode").options.length;
        for (j=0; j<ocnt7; j++) {
        	document.getElementById("usimCode").options.remove(0);
        	document.getElementById("usimCode").options[0] = new Option('::유심카드::','');
        }
/*
        var ocnt8 = document.getElementById("contractCode").options.length;
        for (j=0; j<ocnt8; j++) {
        	document.getElementById("contractCode").options.remove(0);
        	document.getElementById("contractCode").options[0] = new Option('::약정사항::','');
        }
*/
        var ocnt9 = document.getElementById("cerCode").options.length;
        for (j=0; j<ocnt9; j++) {
        	document.getElementById("cerCode").options.remove(0);
        	document.getElementById("cerCode").options[0] = new Option('::인증방법::','');
        }

        var ocnt10 = document.getElementById("mnpCode").options.length;
        for (j=0; j<ocnt10; j++) {
        	document.getElementById("mnpCode").options.remove(0);
        	document.getElementById("mnpCode").options[0] = new Option('::MNP인증::','');
        }

        var ocnt11 = document.getElementById("giftCode").options.length;
        for (j=0; j<ocnt11; j++) {
        	document.getElementById("giftCode").options.remove(0);
        	document.getElementById("giftCode").options[0] = new Option('::사은품::','');
        }

        var ocnt12 = document.getElementById("gitaCode").options.length;
        for (j=0; j<ocnt12; j++) {
        	document.getElementById("gitaCode").options.remove(0);
        	document.getElementById("gitaCode").options[0] = new Option('::기타::','');
        }

	} else if (frm.TongSinView[1].checked) {
	    document.getElementById("skLogo").style.display = 'none';
		document.getElementById("ktLogo").style.display = '';
		document.getElementById("lgLogo").style.display = 'none';
		var ocnt = document.getElementById("modelCode").options.length;
        for (j=0; j<ocnt; j++) {
        document.getElementById("modelCode").options.remove(0);
		document.getElementById("modelCode").options[0] = new Option('::모델별::','');
        }

        var ocnt0 = document.getElementById("colorCode").options.length;
        for (j=0; j<ocnt0; j++) {
        	document.getElementById("colorCode").options.remove(0);
        	document.getElementById("colorCode").options[0] = new Option('::색상::','');
        }

        var ocnt1 = document.getElementById("gaimCode").options.length;
        for (j=0; j<ocnt1; j++) {
        	document.getElementById("gaimCode").options.remove(0);
        	document.getElementById("gaimCode").options[0] = new Option('::가입유형::','');
        }

        var ocnt2 = document.getElementById("feeCode").options.length;
        for (j=0; j<ocnt2; j++) {
        	document.getElementById("feeCode").options.remove(0);
        	document.getElementById("feeCode").options[0] = new Option('::요금제::','');
        }

        var ocnt3 = document.getElementById("bugaCode").options.length;
        for (j=0; j<ocnt3; j++) {
        	document.getElementById("bugaCode").options.remove(0);
        	document.getElementById("bugaCode").options[0] = new Option('::할인유형::','');
        }

        var ocnt4 = document.getElementById("bugaCode2").options.length;
        for (j=0; j<ocnt4; j++) {
        	document.getElementById("bugaCode2").options.remove(0);
        	document.getElementById("bugaCode2").options[0] = new Option('::부가2::','');
        }

        var ocnt5 = document.getElementById("costCode").options.length;
        for (j=0; j<ocnt5; j++) {
        	document.getElementById("costCode").options.remove(0);
        	document.getElementById("costCode").options[0] = new Option('::가입비::','');
        }

        var ocnt6 = document.getElementById("guCellphone").options.length;
        for (j=0; j<ocnt6; j++) {
        	document.getElementById("guCellphone").options.remove(0);
        	document.getElementById("guCellphone").options[0] = new Option('::구)단말기::','');
        }

        var ocnt7 = document.getElementById("usimCode").options.length;
        for (j=0; j<ocnt7; j++) {
        	document.getElementById("usimCode").options.remove(0);
        	document.getElementById("usimCode").options[0] = new Option('::유심카드::','');
        }
/*
        var ocnt8 = document.getElementById("contractCode").options.length;
        for (j=0; j<ocnt8; j++) {
        	document.getElementById("contractCode").options.remove(0);
        	document.getElementById("contractCode").options[0] = new Option('::약정사항::','');
        }
*/
        var ocnt9 = document.getElementById("cerCode").options.length;
        for (j=0; j<ocnt9; j++) {
        	document.getElementById("cerCode").options.remove(0);
        	document.getElementById("cerCode").options[0] = new Option('::인증방법::','');
        }

        var ocnt10 = document.getElementById("mnpCode").options.length;
        for (j=0; j<ocnt10; j++) {
        	document.getElementById("mnpCode").options.remove(0);
        	document.getElementById("mnpCode").options[0] = new Option('::MNP인증::','');
        }

        var ocnt11 = document.getElementById("giftCode").options.length;
        for (j=0; j<ocnt11; j++) {
        	document.getElementById("giftCode").options.remove(0);
        	document.getElementById("giftCode").options[0] = new Option('::사은품::','');
        }

        var ocnt12 = document.getElementById("gitaCode").options.length;
        for (j=0; j<ocnt12; j++) {
        	document.getElementById("gitaCode").options.remove(0);
        	document.getElementById("gitaCode").options[0] = new Option('::기타::','');
        }

	} else if (frm.TongSinView[2].checked) {
	    document.getElementById("skLogo").style.display = 'none';
		document.getElementById("ktLogo").style.display = 'none';
		document.getElementById("lgLogo").style.display = '';
		var ocnt = document.getElementById("modelCode").options.length;
        for (j=0; j<ocnt; j++) {
        document.getElementById("modelCode").options.remove(0);
		document.getElementById("modelCode").options[0] = new Option('::모델별::','');
        }

        var ocnt0 = document.getElementById("colorCode").options.length;
        for (j=0; j<ocnt0; j++) {
        	document.getElementById("colorCode").options.remove(0);
        	document.getElementById("colorCode").options[0] = new Option('::색상::','');
        }

        var ocnt1 = document.getElementById("gaimCode").options.length;
        for (j=0; j<ocnt1; j++) {
        	document.getElementById("gaimCode").options.remove(0);
        	document.getElementById("gaimCode").options[0] = new Option('::가입유형::','');
        }

        var ocnt2 = document.getElementById("feeCode").options.length;
        for (j=0; j<ocnt2; j++) {
        	document.getElementById("feeCode").options.remove(0);
        	document.getElementById("feeCode").options[0] = new Option('::요금제::','');
        }

        var ocnt3 = document.getElementById("bugaCode").options.length;
        for (j=0; j<ocnt3; j++) {
        	document.getElementById("bugaCode").options.remove(0);
        	document.getElementById("bugaCode").options[0] = new Option('::할인유형::','');
        }

        var ocnt4 = document.getElementById("bugaCode2").options.length;
        for (j=0; j<ocnt4; j++) {
        	document.getElementById("bugaCode2").options.remove(0);
        	document.getElementById("bugaCode2").options[0] = new Option('::부가2::','');
        }

        var ocnt5 = document.getElementById("costCode").options.length;
        for (j=0; j<ocnt5; j++) {
        	document.getElementById("costCode").options.remove(0);
        	document.getElementById("costCode").options[0] = new Option('::가입비::','');
        }

        var ocnt6 = document.getElementById("guCellphone").options.length;
        for (j=0; j<ocnt6; j++) {
        	document.getElementById("guCellphone").options.remove(0);
        	document.getElementById("guCellphone").options[0] = new Option('::구)단말기::','');
        }

        var ocnt7 = document.getElementById("usimCode").options.length;
        for (j=0; j<ocnt7; j++) {
        	document.getElementById("usimCode").options.remove(0);
        	document.getElementById("usimCode").options[0] = new Option('::유심카드::','');
        }
/*
        var ocnt8 = document.getElementById("contractCode").options.length;
        for (j=0; j<ocnt8; j++) {
        	document.getElementById("contractCode").options.remove(0);
        	document.getElementById("contractCode").options[0] = new Option('::약정사항::','');
        }
*/
        var ocnt9 = document.getElementById("cerCode").options.length;
        for (j=0; j<ocnt9; j++) {
        	document.getElementById("cerCode").options.remove(0);
        	document.getElementById("cerCode").options[0] = new Option('::인증방법::','');
        }

        var ocnt10 = document.getElementById("mnpCode").options.length;
        for (j=0; j<ocnt10; j++) {
        	document.getElementById("mnpCode").options.remove(0);
        	document.getElementById("mnpCode").options[0] = new Option('::MNP인증::','');
        }

        var ocnt11 = document.getElementById("giftCode").options.length;
        for (j=0; j<ocnt11; j++) {
        	document.getElementById("giftCode").options.remove(0);
        	document.getElementById("giftCode").options[0] = new Option('::사은품::','');
        }

        var ocnt12 = document.getElementById("gitaCode").options.length;
        for (j=0; j<ocnt12; j++) {
        	document.getElementById("gitaCode").options.remove(0);
        	document.getElementById("gitaCode").options[0] = new Option('::기타::','');
        }

	}
	this.window.dummyMain.location.href = 'changeTongSin.asp?selval='+ No +'&str='+ opeCode;
}


window.onload = function()
{

        window.moveTo(10,10);
    
    startBlink;

}

function openerReload()
{

//    opener.top.location.reload();

    self.close();
}

function openerParentReload()
{
    location.reload();
    opener.location.reload();
}
-->
</script>

<script language="JavaScript">
<!--
//엑셀생성
function xlsField(Str)
{
    var frm = document.execlFrm;
    var actUrl = "?prgid="+ Str;
    frm.prgid.value = Str;
    frm.action = actUrl;
    frm.method = "get";
    frm.submit();
}

function doBlink() {
var blink = document.all.tags("BLINK")
for (var i=0; i < blink.length; i++)
blink[i].style.visibility = blink[i].style.visibility == "" ? "hidden" : ""
}
function startBlink() {
if (document.all)
setInterval("doBlink()",500)
}
//-->
</script>

</head>

<body bgcolor="white" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<script language="javascript" src="/script/wz_tooltip.js"></script>
<table width="99%" align="center" class="subtitle">
	<tr height="26">
		<td class="subtitle_subject" width="230" valign="top" >신용조회기록</td>
		<td class="subtitle_etc"></td>
	</tr>
</table>
<table cellpadding="0" cellspacing="0" align="center" width="99%">
    <tr>
        <td valign="top" height="65">
            <table width="620">
            	<tr height="30">
            		<td valign="middle" style="padding-top:10px;padding-left:5px;"></td>
            	</tr>
            </table>
            <table width="620" class="subtitle" style="margin-top:40px;">
            	<tr>
            		<td valign="middle" style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:23px; padding-left:19px; color:#366CB3; font-weight:bold;">명의자 기본정보</td>
            	</tr>
            </table>
            <table cellpadding="0" cellspacing="0" width="620" class="tp_form1">
            	<form name="addFrm">
            	<input type="hidden" name="prgid" value="C1102">
            	<input type="hidden" name="gNoChk" value="">
                <tr height="30">
            		<td class="addhead">ㆍ소속</td>
            		<td class="pdl7">
            		
            		    <select name="diCode" onchange="chgdiCode();">
            	        <option value="">:::총판:::</option>
                    	<option value='WKRB90907792'>지인판매</option>
<option value='WKRB90907795'>레아모바일</option>
<option value='WKRB90907801'>폰스토어</option>
<option value='WKRB90907806'>기업</option>
<option value='WKRB90907808'>스피드모바일</option>
<option value='WKRB90907809'>민영통신</option>
<option value='WKRB90907814'>엠에스통신</option>
<option value='WKRB90907816'>가개통</option>
<option value='WKRB90907817'>타이거통신</option>
<option value='WKRB90907818'>가온네트웍스</option>
<option value='WKRB90907820'>스마트엔젤</option>
<option value='WKRB90907821'>에스텔레콤</option>
<option value='WKRB90907824'>에스제이커뮤니</option>
<option value='WKRB90907826'>SL네트웍스</option>
<option value='WKRB90907827'>하나통신</option>
<option value='WKRB90907828'>대원</option>
<option value='WKRB90907829'>(주)하농</option>
<option value='WKRB90907830'>JS커뮤니케이션</option>
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
<option value='WKRB90907790'style='color:red;'>휴대폰할인마트</option>
<option value='WKRB90907791'style='color:red;'>이에스 앤 컴퍼니</option>
<option value='WKRB90907793'style='color:red;'>에이스윈</option>
<option value='WKRB90907794'style='color:red;'>스카이텔레콤</option>
<option value='WKRB90907796'style='color:red;'>라온네트웍스</option>
<option value='WKRB90907797'style='color:red;'>스마트통신(인천)</option>
<option value='WKRB90907798'style='color:red;'>엠유네트웍스</option>
<option value='WKRB90907799'style='color:red;'>민서2텔레콤</option>
<option value='WKRB90907800'style='color:red;'>미소텔레콤</option>
<option value='WKRB90907802'style='color:red;'>오렌지통신</option>
<option value='WKRB90907803'style='color:red;'>부평SNS</option>
<option value='WKRB90907804'style='color:red;'>하모니통신</option>
<option value='WKRB90907805'style='color:red;'>JNJ</option>
<option value='WKRB90907807'style='color:red;'>텔마인드</option>
<option value='WKRB90907810'style='color:red;'>미래정보통신</option>
<option value='WKRB90907811'style='color:red;'>미래비즈</option>
<option value='WKRB90907812'style='color:red;'>(주)메디메트</option>
<option value='WKRB90907813'style='color:red;'>파이팅통신</option>
<option value='WKRB90907815'style='color:red;'>용산(왕찬호)</option>
<option value='WKRB90907819'style='color:red;'>편도</option>
<option value='WKRB90907822'style='color:red;'>오래기업</option>
<option value='WKRB90907823'style='color:red;'>에스앤지인터</option>
<option value='WKRB90907831'style='color:red;'>메가통신</option>

                    	</select>
                    	<select name="frCode" onchange="chgfrCode();">
            	        <option value="">:::지사:::</option>
            	        <option value='WKRC90907793'>지인판매</option>
<option value='WKRC90907795'>레아모바일</option>
<option value='WKRC90907802'>폰스토어</option>
<option value='WKRC90907809'>GS리테일</option>
<option value='WKRC90907810'>우리은행</option>
<option value='WKRC90907811'>하나은행</option>
<option value='WKRC90907812'>11번가</option>
<option value='WKRC90907813'>삼성탈레스</option>
<option value='WKRC90907816'>에듀코</option>
<option value='WKRC90907818'>스피드모바일</option>
<option value='WKRC90907824'>대교CNS</option>
<option value='WKRC90907825'>민영통신</option>
<option value='WKRC90907826'>한국능률협회</option>
<option value='WKRC90907828'>팝스킨</option>
<option value='WKRC90907829'>현대엠엔소프트</option>
<option value='WKRC90907830'>하나제약</option>
<option value='WKRC90907834'>동우화인켐</option>
<option value='WKRC90907835'>GS25</option>
<option value='WKRC90907837'>엠에스통신</option>
<option value='WKRC90907839'>신한은행</option>
<option value='WKRC90907840'>연세대학교</option>
<option value='WKRC90907841'>두잉</option>
<option value='WKRC90907842'>한전</option>
<option value='WKRC90907843'>가개통</option>
<option value='WKRC90907844'>타이거</option>
<option value='WKRC90907845'>한성자동차</option>
<option value='WKRC90907846'>현대모비스</option>
<option value='WKRC90907847'>가온</option>
<option value='WKRC90907849'>한의사협회</option>
<option value='WKRC90907850'>엔젤</option>
<option value='WKRC90907851'>에스</option>
<option value='WKRC90907854'>sjc01</option>
<option value='WKRC90907855'>타임교육</option>
<option value='WKRC90907857'>아주대학교</option>
<option value='WKRC90907858'>대사관</option>
<option value='WKRC90907859'>기업특판</option>
<option value='WKRC90907860'>CJ그룹</option>
<option value='WKRC90907861'>네트웍스</option>
<option value='WKRC90907862'>하나</option>
<option value='WKRC90907863'>대원</option>
<option value='WKRC90907864'>하농</option>
<option value='WKRC90907865'>제이에스</option>
<option value='WKRC90907867'>인포마당</option>
<option value='WKRC90907868'>잇츠</option>
<option value='WKRC90907869'>뉴지티</option>
<option value='WKRC90907870'>스트리처</option>
<option value='WKRC90907871'>우진</option>
<option value='WKRC90907872'>굿모닝</option>
<option value='WKRC90907873'>폰삼촌</option>
<option value='WKRC90907874'>원정보통신</option>
<option value='WKRC90907875'>태산</option>
<option value='WKRC90907876'>무한통신</option>
<option value='WKRC90907877'>휴대폰마켓(하계)</option>
<option value='WKRC90907878'>신창오렌지</option>
<option value='WKRC90907879'>BS정보통신</option>
<option value='WKRC90907880'>라라모바일</option>
<option value='WKRC90907881'>다오정보통신</option>
<option value='WKRC90907882'>에스엠티</option>
<option value='WKRC90907883'>폰앤폰</option>
<option value='WKRC90907884'>Mgarcen정보통신</option>
<option value='WKRC90907885'>오렌지홀딩스</option>
<option value='WKRC90907886'>제우스</option>
<option value='WKRC90907887'>베스트마트</option>
<option value='WKRC90907888'>세연정보</option>
<option value='WKRC90907889'>티비즈</option>
<option value='WKRC90907891'>초심</option>
<option value='WKRC90907892'>미래스미트</option>
<option value='WKRC90907893'>우리</option>
<option value='WKRC90907894'>H2</option>
<option value='WKRC90907790'style='color:red;'>검단점</option>
<option value='WKRC90907791'style='color:red;'>종로지점</option>
<option value='WKRC90907792'style='color:red;'>검단</option>
<option value='WKRC90907794'style='color:red;'>하하텔레콤</option>
<option value='WKRC90907797'style='color:red;'>라온네트웍스</option>
<option value='WKRC90907798'style='color:red;'>스마트플러스</option>
<option value='WKRC90907799'style='color:red;'>엠유네트웍스</option>
<option value='WKRC90907800'style='color:red;'>민서2텔레콤</option>
<option value='WKRC90907801'style='color:red;'>미소텔레콤</option>
<option value='WKRC90907803'style='color:red;'>오렌지직영</option>
<option value='WKRC90907804'style='color:red;'>(주)에스앤에스</option>
<option value='WKRC90907805'style='color:red;'>라온2호</option>
<option value='WKRC90907806'style='color:red;'>에이스윈</option>
<option value='WKRC90907807'style='color:red;'>하모니직영</option>
<option value='WKRC90907814'style='color:red;'>JNJ</option>
<option value='WKRC90907817'style='color:red;'>한얼1지사</option>
<option value='WKRC90907819'style='color:red;'>한얼1지사-NEW</option>
<option value='WKRC90907820'style='color:red;'>한얼1지사-JOY</option>
<option value='WKRC90907821'style='color:red;'>한얼1지사-KTC</option>
<option value='WKRC90907822'style='color:red;'>한얼1지사-다올</option>
<option value='WKRC90907823'style='color:red;'>한얼1지사-코리아테크</option>
<option value='WKRC90907827'style='color:red;'>미래정보통신</option>
<option value='WKRC90907831'style='color:red;'>미래비즈</option>
<option value='WKRC90907832'style='color:red;'>메디메트</option>
<option value='WKRC90907833'style='color:red;'>텔마인드-관리부</option>
<option value='WKRC90907836'style='color:red;'>파이팅통신</option>
<option value='WKRC90907838'style='color:red;'>용산</option>
<option value='WKRC90907848'style='color:red;'>편도</option>
<option value='WKRC90907852'style='color:red;'>오래</option>
<option value='WKRC90907853'style='color:red;'>에스앤지</option>
<option value='WKRC90907866'style='color:red;'>메가통신</option>

                    	</select>
                    
            		</td>
            		<td class="addhead">ㆍ담당자</td>
            		<td class="pdl7">
            		
            		    <select name="teCode" onchange="chgteCode();">
            	        <option value="">:::팀:::</option>
            	        <option value='WKRD90907794'>지인판매</option>
<option value='WKRD90907797'>레아</option>
<option value='WKRD90907803'>폰스토어</option>
<option value='WKRD90907813'>GS리테일</option>
<option value='WKRD90907814'>하나은행</option>
<option value='WKRD90907815'>11번가</option>
<option value='WKRD90907816'>우리은행</option>
<option value='WKRD90907817'>삼성탈레스</option>
<option value='WKRD90907819'>에듀코</option>
<option value='WKRD90907821'>스피드</option>
<option value='WKRD90907827'>대교CNS</option>
<option value='WKRD90907828'>민영통신</option>
<option value='WKRD90907829'>한국능률협회</option>
<option value='WKRD90907831'>팝스킨</option>
<option value='WKRD90907832'>현대엠엔소프트</option>
<option value='WKRD90907833'>하나제약</option>
<option value='WKRD90907837'>동우</option>
<option value='WKRD90907838'>GS</option>
<option value='WKRD90907841'>엠에스통신</option>
<option value='WKRD90907843'>신한</option>
<option value='WKRD90907844'>연세</option>
<option value='WKRD90907845'>두잉</option>
<option value='WKRD90907846'>한전</option>
<option value='WKRD90907847'>가개통</option>
<option value='WKRD90907848'>타이거</option>
<option value='WKRD90907849'>한성</option>
<option value='WKRD90907850'>모비스</option>
<option value='WKRD90907851'>가온</option>
<option value='WKRD90907853'>한의사</option>
<option value='WKRD90907854'>엔젤</option>
<option value='WKRD90907855'>에스</option>
<option value='WKRD90907858'>에스제이</option>
<option value='WKRD90907859'>타임</option>
<option value='WKRD90907861'>아주대</option>
<option value='WKRD90907862'>대사관</option>
<option value='WKRD90907863'>기업</option>
<option value='WKRD90907864'>CJ</option>
<option value='WKRD90907865'>네트웍스</option>
<option value='WKRD90907866'>하나</option>
<option value='WKRD90907867'>대원</option>
<option value='WKRD90907868'>하농</option>
<option value='WKRD90907869'>제이에스</option>
<option value='WKRD90907871'>인포</option>
<option value='WKRD90907872'>잇츠</option>
<option value='WKRD90907873'>뉴지티</option>
<option value='WKRD90907874'>스트리처</option>
<option value='WKRD90907875'>우진</option>
<option value='WKRD90907876'>굿모닝1</option>
<option value='WKRD90907877'>폰삼촌</option>
<option value='WKRD90907878'>원정보통신</option>
<option value='WKRD90907879'>태산</option>
<option value='WKRD90907880'>무한통신</option>
<option value='WKRD90907881'>1</option>
<option value='WKRD90907882'>티비즈</option>
<option value='WKRD90907883'>초심</option>
<option value='WKRD90907884'>미래스미트</option>
<option value='WKRD90907885'>우리</option>
<option value='WKRD90907886'>H2</option>

                    	</select>
                    	<select name="emCode">
            	        <option value="">:::상담원:::</option>
            	        <option value='WKRG90907790'>조상우</option>
<option value='WKRG90907791'>박진선</option>
<option value='WKRG90907797'>이영재상무</option>
<option value='WKRG90907799'>김진세</option>
<option value='WKRG90907801'>CEO</option>
<option value='WKRG90907803'>주현호</option>
<option value='WKRG90907804'>정설희</option>
<option value='WKRG90907805'>김대현</option>
<option value='WKRG90907806'>이효진</option>
<option value='WKRG90907807'>김주환</option>
<option value='WKRG90907808'>정경준</option>
<option value='WKRG90907794'>폰스토어</option>
<option value='WKRF90907823'>지인</option>
<option value='WKRF90907799'>김선화</option>
<option value='WKRF90907806'>폰스토어</option>
<option value='WKRF90907824'>GS리테일</option>
<option value='WKRF90907825'>하나은행</option>
<option value='WKRF90907826'>11번가</option>
<option value='WKRF90907827'>우리은행</option>
<option value='WKRF90907828'>삼성탈레스</option>
<option value='WKRF90907830'>에듀코</option>
<option value='WKRF90907833'>이준호</option>
<option value='WKRF90907840'>대교CNS</option>
<option value='WKRF90907841'>민영통신</option>
<option value='WKRF90907842'>한국능률협회</option>
<option value='WKRF90907845'>팝스킨</option>
<option value='WKRF90907846'>현대엠엔소프트</option>
<option value='WKRF90907847'>하나제약</option>
<option value='WKRF90907853'>동우</option>
<option value='WKRF90907854'>25</option>
<option value='WKRF90907860'>엠에스통신</option>
<option value='WKRF90907862'>신한</option>
<option value='WKRF90907863'>연세</option>
<option value='WKRF90907866'>두잉</option>
<option value='WKRF90907867'>한전</option>
<option value='WKRF90907868'>가개통</option>
<option value='WKRF90907869'>타이거</option>
<option value='WKRF90907870'>한성</option>
<option value='WKRF90907878'>모비스</option>
<option value='WKRF90907879'>가온</option>
<option value='WKRF90907881'>한의사</option>
<option value='WKRF90907882'>엔젤</option>
<option value='WKRF90907883'>에스</option>
<option value='WKRF90907886'>에스제이</option>
<option value='WKRF90907887'>타임</option>
<option value='WKRF90907889'>아주대</option>
<option value='WKRF90907890'>대사관</option>
<option value='WKRF90907891'>기업</option>
<option value='WKRF90907892'>CJ</option>
<option value='WKRF90907893'>손정훈</option>
<option value='WKRF90907894'>하나</option>
<option value='WKRF90907895'>대원</option>
<option value='WKRF90907896'>하농</option>
<option value='WKRF90907897'>제이에스</option>
<option value='WKRF90907899'>인포</option>
<option value='WKRF90907900'>잇츠</option>
<option value='WKRF90907901'>뉴지티</option>
<option value='WKRF90907902'>스트리처</option>
<option value='WKRF90907903'>우진</option>
<option value='WKRF90907904'>굿모닝01</option>
<option value='WKRF90907905'>폰삼촌</option>
<option value='WKRF90907906'>원정보통신</option>
<option value='WKRF90907907'>태산</option>
<option value='WKRF90907908'>무한통신</option>
<option value='WKRF90907909'>1</option>
<option value='WKRF90907910'>티비즈</option>
<option value='WKRF90907911'>초심</option>
<option value='WKRF90907912'>김학철</option>
<option value='WKRF90907913'>우리</option>
<option value='WKRF90907914'>H2</option>
<option value='WKRG90907795'style='color:red;'>안미리</option>
<option value='WKRG90907800'style='color:red;'>이은아</option>
<option value='WKRG90907798'style='color:red;'>한송이</option>
<option value='WKRG90907802'style='color:red;'>김학선ars</option>
<option value='WKRG90907792'style='color:red;'>이운식</option>
<option value='WKRG90907793'style='color:red;'>김성중</option>
<option value='WKRG90907796'style='color:red;'>안미리</option>
<option value='WKRF90907790'style='color:red;'>우종호</option>
<option value='WKRF90907791'style='color:red;'>허승범</option>
<option value='WKRF90907793'style='color:red;'>김경희</option>
<option value='WKRF90907807'style='color:red;'>최은수</option>
<option value='WKRF90907796'style='color:red;'>한애숙</option>
<option value='WKRF90907817'style='color:red;'>박상현</option>
<option value='WKRF90907818'style='color:red;'>남서연1</option>
<option value='WKRF90907864'style='color:red;'>오토1</option>
<option value='WKRF90907850'style='color:red;'>ARS1</option>
<option value='WKRF90907820'style='color:red;'>강건</option>
<option value='WKRF90907877'style='color:red;'>김학선</option>
<option value='WKRF90907874'style='color:red;'>소민1</option>
<option value='WKRF90907875'style='color:red;'>조은비</option>
<option value='WKRF90907876'style='color:red;'>김소민2</option>
<option value='WKRF90907872'style='color:red;'>윤아2</option>
<option value='WKRF90907873'style='color:red;'>이유나2</option>
<option value='WKRF90907821'style='color:red;'>김정아</option>
<option value='WKRF90907849'style='color:red;'>ARS2</option>
<option value='WKRF90907843'style='color:red;'>오토1</option>
<option value='WKRF90907816'style='color:red;'>한애숙2</option>
<option value='WKRF90907794'style='color:red;'>김은아</option>
<option value='WKRF90907792'style='color:red;'>김학선</option>
<option value='WKRF90907795'style='color:red;'>남서연</option>
<option value='WKRF90907797'style='color:red;'>이승탁</option>
<option value='WKRF90907798'style='color:red;'>강변</option>
<option value='WKRF90907811'style='color:red;'>김윤경팀장</option>
<option value='WKRF90907813'style='color:red;'>김성규팀장</option>
<option value='WKRF90907815'style='color:red;'>이상은팀장</option>
<option value='WKRF90907819'style='color:red;'>오부옥팀장</option>
<option value='WKRF90907808'style='color:red;'>김정호팀장</option>
<option value='WKRF90907800'style='color:red;'>김희정본부장</option>
<option value='WKRF90907801'style='color:red;'>김지언실장</option>
<option value='WKRF90907802'style='color:red;'>김정훈</option>
<option value='WKRF90907803'style='color:red;'>김정훈</option>
<option value='WKRF90907804'style='color:red;'>장필석</option>
<option value='WKRF90907805'style='color:red;'>정무선</option>
<option value='WKRF90907809'style='color:red;'>김인모</option>
<option value='WKRF90907810'style='color:red;'>김재현부장</option>
<option value='WKRF90907812'style='color:red;'>안미리</option>
<option value='WKRF90907814'style='color:red;'>반정호</option>
<option value='WKRF90907829'style='color:red;'>JNJ</option>
<option value='WKRF90907832'style='color:red;'>한얼 상담원1</option>
<option value='WKRF90907834'style='color:red;'>NEW 상담원</option>
<option value='WKRF90907835'style='color:red;'>NEW상담원</option>
<option value='WKRF90907836'style='color:red;'>JOY상담원</option>
<option value='WKRF90907837'style='color:red;'>KTC상담원</option>
<option value='WKRF90907838'style='color:red;'>다올상담원</option>
<option value='WKRF90907839'style='color:red;'>코리아상담원</option>
<option value='WKRF90907844'style='color:red;'>미래</option>
<option value='WKRF90907848'style='color:red;'>개통팀</option>
<option value='WKRF90907851'style='color:red;'>메디메트</option>
<option value='WKRF90907852'style='color:red;'>T상담원</option>
<option value='WKRF90907865'style='color:red;'>오토1</option>
<option value='WKRF90907855'style='color:red;'>김학선3팀</option>
<option value='WKRF90907856'style='color:red;'>김은아3팀</option>
<option value='WKRF90907857'style='color:red;'>남서연ars</option>
<option value='WKRF90907871'style='color:red;'>은비3</option>
<option value='WKRF90907859'style='color:red;'>한애숙3팀</option>
<option value='WKRF90907858'style='color:red;'>개통담당</option>
<option value='WKRF90907861'style='color:red;'>왕찬호</option>
<option value='WKRF90907880'style='color:red;'>편도</option>
<option value='WKRF90907884'style='color:red;'>오래</option>
<option value='WKRF90907885'style='color:red;'>에스앤지</option>
<option value='WKRF90907898'style='color:red;'>메가통신</option>

                		</select>
                	
            		</td>
            	</tr>

                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ등록일자</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="regDate" value="2013-10-25" class="input_text imed" size="10" readonly>
                    </td>
                    <td valign="middle" class="addhead">ㆍ기존통신사</td>
                    <td valign="middle" class="pdl7">
                    
                        <select name="guTongsin" onchange="document.addFrm.eventCode.focus();">
            		    <option value=''>::통신사::</option><option value='1002' style='color:#ff0000;'>SKT</option>
<option value='1003' style='color:#0000ff;'>KT</option>
<option value='1004' style='color:#ff00ff;'>LGU+</option>
<option value='1005' style='color:#cc99ff;'>MVNO</option>

                        </select>
                    
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ판매유형</td>
                    <td valign="middle" class="pdl7">
                    <select name="eventCode" onchange="document.addFrm.nomineeName.focus();">
            		<option value="">::판매유형::</option>
            		<option value='1001'>오프라인</option>
<option value='1002'>T-gate</option>

            		</select>
                    </td>
                    <td valign="middle" class="addhead">ㆍ명의자</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="nomineeName" value="" class="input_text imea" size="15">
                    </td>
                </tr>
                <tr>
                    <td valign="middle" class="addhead">ㆍ주민번호</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="nomineeSocno1" value="" class="input_text imed" size="8" maxlength="6" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.addFrm.nomineeSocno2.focus();}"> -
			            <input type="text" name="nomineeSocno2" value="" class="input_text imed" size="8" maxlength="7" onblur="numberCheck(this);" onkeyup="if (this.value.length==7){document.addFrm.nomineeCell1.focus();}">
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ휴대전화</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="nomineeCell1" value="" class="input_text imed" size="3" maxlength="3" onblur="numberCheck(this);" onkeyup="if (this.value.length==3){document.addFrm.nomineeCell2.focus();}"> -
			            <input type="text" name="nomineeCell2" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);" onkeyup="if (this.value.length==4){document.addFrm.nomineeCell3.focus();}"> -
			            <input type="text" name="nomineeCell3" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);" onkeyup="if (this.value.length==4){document.addFrm.openerCode.focus();}">
                    </td>
                </tr>
                <tr height="30">
            		<td class="addhead">ㆍ개통처</td>
            		<td  class="pdl7">
            			<select name="openerCode" onchange="openerSelect();">
                        <option value="">::선택::</option>
                        <option value='WKRE90907790'>S코드</option>
<option value='WKRE90907791'>Y코드</option>

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
                        <input type="text" name="hzip1" size="4" value="" class="input_text imed" maxlength="3" readonly>-<input type="text" name="hzip2" size="4" value="" class="input_text imed" maxlength="3" readonly>
        	            <input type="button" value="주소검색" class="button06 h20"  onclick="GlbZipcodeSearch('C11011');">
        	            <br>
        	            <input type="text" name="haddr1" size="50" value="" class="input_text imea" readonly>
        	            <br>
        	            <input type="text" name="haddr2" size="55" value="" class="input_text imea">
                    </td>
                </tr>
            </table>
            <table width="620" class="subtitle">
            	<tr height="45">
            		<td style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:25px; padding-left:19px; color:#366CB3; font-weight:bold;">신청자정보</td>
            		<td align="left" valign="bottom" class="pdt3"><input type="checkbox" name="chkApp" value="1" onclick="changeName();" id="chkApp_1"><label for="chkApp_1">명의자와 동일</label></td>
            		<td align="left" valign="bottom" class="pdt3"><input type="checkbox" name="chkLegal" value="1">법정대리인</td>
            	</tr>
            </table>
            <table cellpadding="0" cellspacing="0" width="620" class="tp_form1">

                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ신청자</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="appName" value="" class="input_text imea" size="15">
                    </td>
                    <td valign="middle" class="addhead">ㆍ주민번호</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="appSocno1" value="" class="input_text imed" size="8" maxlength="6" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.addFrm.appSocno2.focus();}"> -
			            <input type="text" name="appSocno2" value="" class="input_text imed" size="8" maxlength="7" onblur="numberCheck(this);" onkeyup="if (this.value.length==7){document.addFrm.chkBank[0].focus();}">
                    </td>
                </tr>
            </table>
            <table width="620" class="subtitle">
            	<tr height="45">
            		<td style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:25px; padding-left:19px; color:#366CB3; font-weight:bold;">납부정보</td>
            		<td align="left" valign="bottom" class="pdt3">
            			<input type="checkbox" name="chkBank" value="1" onclick="changeBank1();GlbCheckConvRadio('document.addFrm.chkBank','0');" id="chkBank_1"><label for="chkBank_1">명의자와 동일</label>&nbsp;
            			<input type="checkbox" name="chkBank" value="2" onclick="changeBank2();GlbCheckConvRadio('document.addFrm.chkBank','1');" id="chkBank_2"><label for="chkBank_2">신청자와 동일</label>
            		</td>
            	</tr>
            </table>
            <table cellpadding="0" cellspacing="0" width="620" class="tp_form1">
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ납부방법</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <input type="radio" name="bankMethod" value="bank" onclick="chkView();">자동이체&nbsp;&nbsp;
            			<input type="radio" name="bankMethod" value="card" onclick="chkView();">신용카드&nbsp;&nbsp;
            			<input type="radio" name="bankMethod" value="giro" onclick="chkView();">지로
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ예금주</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="bankUser" value="" class="input_text imea" size="15">
                    </td>
                    <td valign="middle" class="addhead">ㆍ주민번호</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="bankSocno1" value="" class="input_text imed" size="8" maxlength="6" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.addFrm.bankSocno2.focus();}"> -
			            <input type="text" name="bankSocno2" value="" class="input_text imed" size="8" maxlength="7" onblur="numberCheck(this);" onkeyup="if (this.value.length==7){document.addFrm.bankName.focus();}">
                    </td>
                </tr>
                <tr id="trView1">
                    <td height="25" valign="middle" class="addhead">ㆍ<span id="bNameView1">은행명</span><span id="bNameView2" style="display:none;">카드명</span></td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="bankName" value="" class="input_text imea" size="15">
                    </td>
                    <td valign="middle" class="addhead">ㆍ<span id="bNumView1">계좌번호</span><span id="bNumView2" style="display:none;">카드번호</span></td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="bankNumber" value="" class="input_text imed" size="25">
                    </td>
                </tr>
                <tr id="trView2">
                    <td height="25" valign="middle" class="addhead">ㆍ유효기간</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <input type="text" name="bankYear" value="" id="bYView" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);" onkeyup="if (this.value.length==6){document.addFrm.bankYear.focus();}">년 /
                        <input type="text" name="bankMonth" value="" id="bMView" class="input_text imed" size="2" maxlength="2" onblur="numberCheck(this);">월
                    </td>
                </tr>
            </table>
        </td>
        <td width="5" valign="middle"></td>
        <td valign="top">
            <table cellpadding="0" cellspacing="0" width="99%">
                <tr>
                    <td height="62" align="left" valign="bottom" class="pdt3">
                        <span name="skLogo" id="skLogo" style="display:none;"><img src="/images/skLogo.gif" border="0"></span>
            		    <span name="ktLogo" id="ktLogo" style="display:none;"><img src="/images/ktLogo.gif" border="0"></span>
            		    <span name="lgLogo" id="lgLogo" style="display:none;"><img src="/images/lgLogo.gif" border="0"></span>
                    </td>
                </tr>
            </table>
            <table width="99%" class="subtitle">
            	<tr height="45">
            		<td style="width:230px; background:url(/images/bg_subtitle.gif); background-position:bottom left; background-repeat:no-repeat; padding-top:25px; padding-left:19px; color:#366CB3; font-weight:bold;">휴대폰정보</td>
            	</tr>
            </table>
            <input type="hidden" id="opcode" name="opcode" value="">
            <table cellpadding="0" cellspacing="0" width="99%">
                <tr>
                    <td height="25" valign="middle">
                    <input type='radio' name='TongSinView' value='C11' onclick="radio_ImgView('C11');">SKT &nbsp;<input type='radio' name='TongSinView' value='C12' onclick="radio_ImgView('C12');">KT &nbsp;<input type='radio' name='TongSinView' value='C13' onclick="radio_ImgView('C13');">LG &nbsp;
                    </td>
                </tr>
            </table>
            <table cellpadding="0" cellspacing="0" width="99%" class="tp_form1">
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ신청모델</td>
                    <td valign="middle" class="pdl7">
                        <select name="modelCode" onchange="chgModelCode();">
                		<option value="">::모델별::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ출고색상</td>
                    <td valign="middle" class="pdl7">
                		<select name="colorCode">
                		<option value="">::색상::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ가입유형</td>
                    <td valign="middle" class="pdl7">
                        <select name="gaimCode" onchange="chgOpenReset();">
                		<option value="">::가입유형::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ요금제</td>
                    <td valign="middle" class="pdl7">
                		<select name="feeCode" onchange="chgMoney();">
                		<option value="">::요금제::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ할인유형</td>
                    <td valign="middle" class="pdl7">
                		<select name="bugaCode">
                		<option value="">::부가::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ부가서비스</td>
                    <td valign="middle" class="pdl7">
                		<select name="bugaCode2">
                		<option value="">::부가2::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ가입비</td>
                    <td valign="middle" class="pdl7">
                        <select name="costCode">
                		<option value="">::가입비::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ구)단말기</td>
                    <td valign="middle" class="pdl7">
                		<select name="guCellphone">
                		<option value="">::구)단말기::</option>
                		</select>
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ유심카드</td>
                    <td valign="middle" class="pdl7">
                		<select name="usimCode">
                		<option value="">::유심카드::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ약정사항</td>
                    <td valign="middle" class="pdl7">
                		<select name="contractCode">
                		<option value="">::약정사항::</option>
                		<option value='1001'>24개월할부</option>
<option value='1002'>30개월할부</option>
<option value='1003'>36개월할부</option>

                		</select>
                		</select>
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍUSIM번호</td>
                    <td valign="middle" colspan="3" class="pdl7">
                		<input type="text" name="usimNumber" value="" size="10" maxlength="20" class="input_text imed">
                    </td>
                </tr>
                <tr id="openTR" style="display:;">
                    <td height="25" valign="middle" class="addhead">ㆍ개통번호(HP)</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <input type="text" name="openingCell1" value="" class="input_text imed" size="3" maxlength="3" onblur="numberCheck(this);"> -
			            <input type="text" name="openingCell2" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);"> -
			            <input type="text" name="openingCell3" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ개통일련번호</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="serialNumber" value="" size="10" maxlength="20" class="input_text imed">
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ할부금액</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="feeMoney" value="" size="10" maxlength="20" class="input_text imed" onblur="numberCheck(this);">
                    </td>
                </tr>
                <tr id="hopeTR" style="display:none;">
                    <td height="25" valign="middle" class="addhead">ㆍ희망번호</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <input type="text" name="hopeCell1" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
			            <input type="text" name="hopeCell2" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
			            <input type="text" name="hopeCell3" value="" class="input_text imed" size="4" maxlength="4" onblur="numberCheck(this);">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ인증방법</td>
                    <td valign="middle" class="pdl7">
                		<select name="cerCode">
                		<option value="">::인증방법::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ발급일자</td>
                    <td valign="middle" class="pdl7">
                		<input type="text" name="cerField" value="" size="10" maxlength="20" class="input_text">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍMNP인증</td>
                    <td valign="middle" class="pdl7">
                        <select name="mnpCode">
                		<option value="">::MNP인증::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ인증번호</td>
                    <td valign="middle" class="pdl7">
                		<input type="text" name="mnpField" value="" size="10" maxlength="20" class="input_text">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ고객사은품</td>
                    <td valign="middle" class="pdl7">
                        <select name="giftCode">
                		<option value="">::사은품::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ금액</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="giftAmount" value="" onblur="numberCheck(this);" maxlength="20" size="10" class="input_text imed">
                    </td>
                </tr>
                <tr>
                    <td height="25" valign="middle" class="addhead">ㆍ기타</td>
                    <td valign="middle" class="pdl7">
                        <select name="gitaCode">
                		<option value="">::기타::</option>
                		</select>
                    </td>
                    <td height="25" valign="middle" class="addhead">ㆍ인증값</td>
                    <td valign="middle" class="pdl7">
                        <input type="text" name="gitaAmount" value="" onblur="numberCheck(this);" maxlength="20" size="10" class="input_text imed">
                    </td>
                </tr>
                <tr>
                    <td valign="middle" class="addhead">ㆍ메모</td>
                    <td valign="middle" colspan="3" class="pdl7">
                        <textarea name="user_memo" class="textarea imea" style="width:98%;height:100px;"></textarea>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    </form>
</table>
<table cellpadding="0" cellspacing="0" align="center" width="99%" height="65">
    <tr>
        <td valign="middle" align="right">
        <span id="btn_submit">
            <input type="button" value=" 저 장 " style="width:100px;height:50px;" class="cshand" onclick="checkMemsubmit('C110');">&nbsp;
            <input type="button" value=" 초기화 " style="width:100px;height:50px;" class="cshand" onclick="location.href='?prgid=C1101&gNo=';">&nbsp;
            <input type="button" value=" 닫기 " style="width:100px;height:50px;" class="cshand" onclick="self.close();">
        </span><span id="btn_view" style="display:none;"></span>
        </td>
    </tr>
</table>

</body>

</html>
<iframe width="100%" height="100%" name="dummyMain" id="dummyMain" src="about:blank" style="display:none;"></iframe>
<iframe width="0" height="0" border="0" frameborder="0" src="/lib/session_update.asp" style="display:none;"></iframe>
