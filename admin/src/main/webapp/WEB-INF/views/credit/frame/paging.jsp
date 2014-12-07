<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
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