<?php echo $header; ?>

<div class="content">
	<div class="left-nav" style="margin-top:100px">
		<ul>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_aboutus_intro_mo.png" /></li>
			<li><a href="index.php?route=information/culture" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_aboutus_culture.png" border="0" id="Image9" onmouseover="MM_swapImage('Image9','','<?PHP echo $dir_image_lang; ?>btn_aboutus_culture_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><a href="index.php?route=information/certificate" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_aboutus_cert.png" border="0" id="Image10" onmouseover="MM_swapImage('Image10','','<?PHP echo $dir_image_lang; ?>btn_aboutus_cert_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
		</ul>
	</div>
	<div class="right-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_company_title.png" width="670" height="34" />
		</div>
		<div class="description">
			<?PHP echo $description; ?>
		</div>
	</div>
	<div style="clear:both"></div>
</div><!-- div content -->

<div class="bottom-bar" style="margin-top:100px;">
<?php echo $footer; ?>
</div>

</body>
</html>
