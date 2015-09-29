<?php echo $header; ?>

<div class="content contactus-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_contactus_address_mo.png" /></li>
			<li><a href="index.php?route=information/enquiry" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_contactus_form.png" border="0" id="Image12" onmouseover="MM_swapImage('Image12','','<?PHP echo $dir_image_lang; ?>btn_contactus_form_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
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
  $('#Image9').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_contactus_mo.png');
  // Sub menu
  show_submenu('img_contactus_sub.png','#contactus_map');
});
</script>

</body>
</html>
