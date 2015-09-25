<?php echo $header; ?>

<div class="content JFChealth-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
			<li><a href="?route=product/article" target="_parent"><img <?PHP if('en' == $this->language->get('code')) { echo 'style="position:relative;left:-20px"'; } ?> src="<?PHP echo $dir_image_lang; ?>btn_article_user.png" border="0" id="Image111" onmouseover="MM_swapImage('Image111','','<?PHP echo $dir_image_lang; ?>btn_article_user_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><a href="?route=product/expert_article" target="_parent"><img <?PHP if('en' == $this->language->get('code')) { echo 'style="position:relative;left:-20px"'; } ?> src="<?PHP echo $dir_image_lang; ?>btn_article_expert.png" name="Image10" border="0" id="Image10" onmouseover="MM_swapImage('Image10','','<?PHP echo $dir_image_lang; ?>btn_article_expert_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><img <?PHP if('en' == $this->language->get('code')) { echo 'style="position:relative;left:-20px"'; } ?> src="<?PHP echo $dir_image_lang; ?>btn_article_video_mo.png" name="Image1211" border="0" id="Image1211" /></li>
		</ul>
	</div>
	<div class="magazine-content right-content fr">
		<div class="magazine-list">
		  <table width="920" border="0" cellpadding="0" cellspacing="0">
			  <?PHP $idx=0; while(isset($news[$idx])) { ?>
			  <tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td height="20">&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td width="215"><?PHP if(isset($news[$idx])) { ?><img src="<?PHP echo $news[$idx]['image']; ?>" width="215" height="290" /><?PHP } ?></td>
				<td width="20">&nbsp;</td>
				<td width="215" height="20"><?PHP if(isset($news[$idx+1])) { ?><img src="<?PHP echo $news[$idx+1]['image']; ?>" width="215" height="290" /><?PHP } ?></td>
				<td width="20">&nbsp;</td>
				<td width="215"><?PHP if(isset($news[$idx+2])) { ?><img src="<?PHP echo $news[$idx+2]['image']; ?>" width="215" height="290" /><?PHP } ?></td>
				<td width="20">&nbsp;</td>
				<td width="215"><?PHP if(isset($news[$idx+3])) { ?><img src="<?PHP echo $news[$idx+3]['image']; ?>" width="215" height="290" /><?PHP } ?></td>
			  </tr>
			  <tr>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx])) { ?><table width="215" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="40">&nbsp;</td>
					<td width="106" height="60" align="center" valign="middle"><span class="index_content_txt"><?PHP echo $news[$idx]['title']; ?><br />
					  <?PHP $news[$idx]['description']; ?></span></td>
					<td width="69"><a href="<?PHP echo $news[$idx]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_pdf.png" width="48" height="47" border="0" /></a></td>
				  </tr>
				</table><?PHP } ?></td>
				<td>&nbsp;</td>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx+1])) { ?><table width="215" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="40">&nbsp;</td>
					<td width="106" height="60" align="center" valign="middle"><span class="index_content_txt"><?PHP echo $news[$idx+1]['title']; ?><br />
					  <?PHP $news[$idx+1]['description']; ?></span></td>
					<td width="69"><a href="<?PHP echo $news[$idx+1]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_pdf.png" width="48" height="47" border="0" /></a></td>
				  </tr>
				</table><?PHP } ?></td>
				<td>&nbsp;</td>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx+2])) { ?><table width="215" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="40">&nbsp;</td>
					<td width="106" height="60" align="center" valign="middle"><span class="index_content_txt"><?PHP echo $news[$idx+2]['title']; ?><br />
					  <?PHP $news[$idx+2]['description']; ?></span></td>
					<td width="69"><a href="<?PHP echo $news[$idx+2]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_pdf.png" width="48" height="47" border="0" /></a></td>
				  </tr>
				</table><?PHP } ?></td>
				<td>&nbsp;</td>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx+3])) { ?><table width="215" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="40">&nbsp;</td>
					<td width="106" height="60" align="center" valign="middle"><span class="index_content_txt"><?PHP echo $news[$idx+3]['title']; ?><br />
					  <?PHP $news[$idx+3]['description']; ?></span></td>
					<td width="69"><a href="<?PHP echo $news[$idx+3]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_pdf.png" width="48" height="47" border="0" /></a></td>
				  </tr>
				</table><?PHP } ?></td>
			  </tr>
			  <?PHP $idx+=4; } ?>
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
});
</script>

</body>
</html>
