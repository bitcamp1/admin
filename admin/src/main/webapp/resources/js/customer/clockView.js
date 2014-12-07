function calendarClock() {
	var time = new Date()
	var year = time.getYear()
	var month = time.getMonth() +1
	var day = time.getDate()

	var hour = time.getHours()
	var minute = time.getMinutes()
	var second = time.getSeconds()
	var store = " "
	var storeTxt = (hour > 19 || hour < 10) ? " <font color='red'>업무마감</font> " : " <font color='green'>업무가능</font> "

	store += (hour >= 12) ? " 오후 " : " 오전 "
	store += ((hour > 12) ? (hour - 12) : hour)
	store += ((minute < 10) ? ":0" : ":") + minute
	store += ((second < 10) ? ":0" : ":") + second

	document.getElementById("clockView").innerHTML = year + "년 " + month + "월 " + day + "일" + store + storeTxt;
	setTimeout("calendarClock()", 1000)
}