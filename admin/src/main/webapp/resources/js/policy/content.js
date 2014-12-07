$(function(){
	
	$('.tab_ctn').hide();
	$('ul.tabs li:first').addClass('active').show();
	$('.tab_ctn:first').show();
	
	$('ul.tabs li').click(function(){
		$('ul.tabs li').removeClass('active');
		$(this).addClass('active');
		$('.tab_ctn').hide();
		
		var activeTab = $(this).find('a').attr('href');
		$(activeTab).fadeIn();
		return false;
	});
});