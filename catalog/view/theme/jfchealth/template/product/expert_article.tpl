<?php echo $header; ?>

<div class="content share-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
			<li><a href="?route=product/article" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_article_user.png" border="0" id="Image111" onmouseover="MM_swapImage('Image111','','<?PHP echo $dir_image_lang; ?>btn_article_user_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_article_expert_mo.png" name="Image10" border="0" id="Image10" onmouseover="MM_swapImage('Image10','','<?PHP echo $dir_image_lang; ?>btn_article_expert_mo.png',1)" onmouseout="MM_swapImgRestore()" /></li>
			<li><a href="?route=product/video" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_article_video.png" name="Image1211" border="0" id="Image1211" onmouseover="MM_swapImage('Image1211','','<?PHP echo $dir_image_lang; ?>btn_article_video_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
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
					<td width="850" align="left" valign="top" class="index_content_txt"><?PHP echo $news[$idx]['infod']; ?>...... <span class="index_read_txt"><a class="readmore" href="?route=product/expert_article/detail&nid=<?PHP echo $news[$idx]['news_id']; ?>" target="_parent">閱讀全文</a></span><br />                                          </td>
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
  $('#Image7').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_share_mo.png');
  // Sub menu
  show_submenu('img_share_sub.png','#share_map');
});
</script>

</body>
</html>
