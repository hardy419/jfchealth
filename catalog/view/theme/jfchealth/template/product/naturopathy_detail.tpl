<?php echo $header; ?>

<div class="content JFChealth-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_jfchealth_naturopathy_mo.png" border="0" id="Image111" /></li>
			<li><a href="?route=product/magazine" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_jfchealth_magazine.png" name="Image1211" border="0" id="Image1211" onmouseover="MM_swapImage('Image1211','','<?PHP echo $dir_image_lang; ?>btn_jfchealth_magazine_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
		</ul>
	</div>
	<div class="right-content fr">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_naturopathy_detail_title.png" width="850" height="34" border="0" usemap="#Map" />
			  <map name="Map" id="Map">
				<area shape="rect" coords="1,7,69,35" href="?route=product/naturopathy" target="_parent" />
			  </map>
		</div>
		<div class="article-list">
			<table width="850" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td class="index_discription_title"><?PHP echo $title; ?></td>
					</tr>
				</table>
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
  $('#Image8').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_magazine_mo.png');
  // Sub menu
  show_submenu('img_magazine_sub.png','#magazine_map');
});
</script>

</body>
</html>
