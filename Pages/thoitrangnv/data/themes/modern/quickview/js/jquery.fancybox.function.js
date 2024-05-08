// JavaScript Document
function OpenPopupUrl(url){
	$.fancybox({
	href: url,
	type: 'iframe',
	openEffect: 'elastic', 
	closeEffect: 'elastic',
	autoSize: false,
	width: 875,
	height: 420
	});
}