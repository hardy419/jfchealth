<?php echo $header; ?>

<div class="content JFChealth-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
			<li><a href="?route=product/naturopathy" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_jfchealth_naturopathy.png" border="0" id="Image111" onmouseover="MM_swapImage('Image111','','<?PHP echo $dir_image_lang; ?>btn_jfchealth_naturopathy_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_jfchealth_magazine_mo.png" name="Image1211" border="0" id="Image1211" /></li>
		</ul>
	</div>
	<div class="magazine-content right-content fr">
		<div class="magazine-list">
		  <table width="850" border="0" cellpadding="0" cellspacing="0">
			  <?PHP $idx=0; while(isset($news[$idx])) { ?>
			  <tr>
				<td width="270"><?PHP if(isset($news[$idx])) { ?><img src="<?PHP echo $news[$idx]['image']; ?>" width="270" height="366" /><?PHP } ?></td>
				<td width="20">&nbsp;</td>
				<td width="270" height="20"><?PHP if(isset($news[$idx+1])) { ?><img src="<?PHP echo $news[$idx+1]['image']; ?>" width="270" height="366" /><?PHP } ?></td>
				<td width="20">&nbsp;</td>
				<td width="270"><?PHP if(isset($news[$idx+2])) { ?><img src="<?PHP echo $news[$idx+2]['image']; ?>" width="270" height="366" /><?PHP } ?></td>
			  </tr>
			  <tr>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx])) { ?><div class="magazine-info"><span class="index_content_txt"><?PHP echo empty($news[$idx]['title'])?'&nbsp;':$news[$idx]['title']; ?><br />
					  <?PHP echo empty($news[$idx]['intro'])?'&nbsp;':$news[$idx]['intro']; ?></span></div>
					  <a href="<?PHP echo $news[$idx]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image_lang; ?>btn_downloadPDF.png" /></a><?PHP } ?></td>
				<td>&nbsp;</td>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx+1])) { ?><div class="magazine-info"><span class="index_content_txt"><?PHP echo empty($news[$idx+1]['title'])?'&nbsp;':$news[$idx+1]['title']; ?><br />
					  <?PHP echo empty($news[$idx+1]['intro'])?'&nbsp;':$news[$idx+1]['intro']; ?></span></div>
					  <a href="<?PHP echo $news[$idx+1]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image_lang; ?>btn_downloadPDF.png" /></a><?PHP } ?></td>
				<td>&nbsp;</td>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx+2])) { ?><div class="magazine-info"><span class="index_content_txt"><?PHP echo empty($news[$idx+2]['title'])?'&nbsp;':$news[$idx+2]['title']; ?><br />
					  <?PHP echo empty($news[$idx+2]['intro'])?'&nbsp;':$news[$idx+2]['intro']; ?></span></div>
					  <a href="<?PHP echo $news[$idx+2]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image_lang; ?>btn_downloadPDF.png" /></a><?PHP } ?></td>
			  </tr>
			  <tr>
			    <td colspan="5">&nbsp;</td>
			  </tr>
			  <?PHP $idx+=3; } ?>
		  </table>
	  <style>
      .links a:visited,.links a:link {
        color:#000000 !important;
      }
      </style>
	  <?php echo $pagination; ?>
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
