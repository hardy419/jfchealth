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
		<div class="article-list">
			<table width="850" border="0" cellspacing="0" cellpadding="0">
			<?PHP for ($idx=0; $idx<6; ++$idx) if(isset($news[$idx])) { ?>
			  <tr>
				<td><table width="850" border="0" cellspacing="0" cellpadding="0">
				  <tr style="height:50px">
					<td class="index_discription_title"><?PHP echo $news[$idx]['title']; ?></td>
				  </tr>
				  <tr>
					<td width="850" align="left" valign="top" class="index_content_txt"><?PHP echo $news[$idx]['infod']; ?>...... <span class="index_read_txt"><a class="readmore" href="?route=product/naturopathy/detail&nid=<?PHP echo $news[$idx]['news_id']; ?>" target="_parent">閱讀全文</a></span><br />                                          </td>
				  </tr>
				</table></td>
				</tr>
			  <tr>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td><img src="<?PHP echo $dir_image; ?>img_naturopathy_line.png" width="850" height="1" /></td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
				</tr>
			  <?PHP } else {break;} ?>
			</table>
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
