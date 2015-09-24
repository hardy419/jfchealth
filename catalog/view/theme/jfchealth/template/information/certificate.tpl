<?php echo $header; ?>

<div class="content aboutus-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
			<li><a href="index.php?route=information/aboutus" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_aboutus_intro.png" border="0" id="Image11" onmouseover="MM_swapImage('Image11','','<?PHP echo $dir_image_lang; ?>btn_aboutus_intro_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><a href="index.php?route=information/culture" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_aboutus_culture.png" border="0" id="Image12" onmouseover="MM_swapImage('Image12','','<?PHP echo $dir_image_lang; ?>btn_aboutus_culture_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_aboutus_cert_mo.png" id="Image10" /></li>
		</ul>
	</div>
	<div class="right-content fr">
		<div class="description">
			<?PHP echo $description; ?>
		</div>
	</div>
	<div class="cb"></div>
</div><!-- div content -->

<div class="bottom-bar">
<?php echo $footer; ?>
</div>

<script>
$(function(){
  // Menu highlight
  $('#Image1').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_home.png');
  $('#Image2').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_aboutus_mo.png');
});
</script>

</body>
</html>
