<?php echo $header; ?>

<div class="content">
	<div class="left-nav">
		<ul>
			<li><a href="index.php?route=information/aboutus" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_aboutus_intro.png" width="100" height="20" border="0" id="Image11" onmouseover="MM_swapImage('Image11','','<?PHP echo $dir_image_lang; ?>btn_aboutus_intro_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_aboutus_cert_mo.png" width="160" height="20" id="Image10" /></li>
		</ul>
	</div>
	<div class="right-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_cert_title.png" width="670" height="34" />
		</div>
		<div class="description">
			<?PHP echo $description; ?>
		</div>
	</div>
	<div style="clear:both"></div>
</div><!-- div content -->

<div class="bottom-bar" style="margin-top:30px;">
<?php echo $footer; ?>
</div>

</body>
</html>
