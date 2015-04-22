<div class="top-menu right">
	<a class="facebook" href="https://www.facebook.com/pages/netnetgocom/245734972281260?fref=ts" target="_blank"></a>
	<a class="wechat" href="javascript:;"></a>
	<a class="whats" href="javascript:;"></a>
	<a class="gmail" href="mailto:sjsnetnetgo@gmail.com"></a>
	<div id="wechat" class="show-share">netnetgo.com</div>
	<div id="whats" class="show-share">6997 0992</div>
	<div class="clear"></div>
</div>
<script>
$(document).ready(function (){
	$('.top-menu > a').hover(function() {
		var classname=$(this).attr('class');
		//$('#'+classname).addClass('active');
		$(this).parent().find('#'+classname).css({visibility: "visible",display: "none"}).slideDown(100);
		},function(){
		var classname=$(this).attr('class');
		$(this).parent().find('#'+classname).css({visibility: "hidden"});
	});
})
</script>