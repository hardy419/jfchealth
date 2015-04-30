<?php echo $header; ?>

<div class="content">
	<div class="left-nav nav-3">
		<ul>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_article_user_mo.png" width="100" height="20" border="0" id="Image111" /></li>
			<li><a href="?route=product/expert_article" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_article_expert.png" name="Image10" width="100" height="20" border="0" id="Image10" onmouseover="MM_swapImage('Image10','','<?PHP echo $dir_image_lang; ?>btn_article_expert_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><a href="?route=product/video" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_article_video.png" name="Image1211" width="99" height="19" border="0" id="Image1211" onmouseover="MM_swapImage('Image1211','','<?PHP echo $dir_image_lang; ?>btn_article_video_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
		</ul>
	</div>
	<div class="right-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_expertshare_detail_title.png" width="670" height="34" border="0" usemap="#Map" />
			  <map name="Map" id="Map">
				<area shape="rect" coords="1,7,69,35" href="?route=product/expert_article" target="_parent" />
			  </map>
		</div>
		<div class="article-list">
			<table width="670" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td class="index_discription_title"><?PHP echo $title; ?></td>
					</tr>
				  <tr>
					<td>&nbsp;</td>
					 </tr>
				</table>
			<?PHP echo $description; ?>
		</div>
	</div>
</div><!-- div content -->
<div style="clear:both"></div>

<div class="bottom-bar" style="margin-top:150px;position:relative;">
<?php echo $footer; ?>
</div>

</body>
</html>
