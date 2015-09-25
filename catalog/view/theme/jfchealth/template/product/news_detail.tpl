<?php echo $header; ?>

<div class="content news-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
		</ul>
	</div>
	<div class="right-content fr">
		<h3><?PHP echo $title; ?><span class="fr"><a href="?route=product/news"><img src="<?PHP echo $dir_image; ?>btn_back.png" /></a></span></h3>
		<?PHP echo $description; ?>
	</div>
	<div class="cb"></div>
</div><!-- div content -->

<div class="bottom-bar" style="margin-top:90px;position:relative;">
<?php echo $footer; ?>
</div>

<map name="Map" id="Map"><area shape="rect" coords="850,35,919,68" href="?route=product/news" target="_parent"></map>

<script>
$(function(){
  // Menu highlight
  $('#Image1').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_home.png');
  $('#Image3').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_news_mo.png');
});
</script>

</body>
</html>
