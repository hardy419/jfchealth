<?php echo $header; ?>

<div class="content">
	<div class="left-nav nav-3">
		<ul>
			<li><a href="?route=product/article" target="_parent"><img <?PHP if('en' == $this->language->get('code')) { echo 'style="position:relative;left:-20px"'; } ?> src="<?PHP echo $dir_image_lang; ?>btn_article_user.png" border="0" id="Image111" onmouseover="MM_swapImage('Image111','','<?PHP echo $dir_image_lang; ?>btn_article_user_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><a href="?route=product/expert_article" target="_parent"><img <?PHP if('en' == $this->language->get('code')) { echo 'style="position:relative;left:-20px"'; } ?> src="<?PHP echo $dir_image_lang; ?>btn_article_expert.png" name="Image10" border="0" id="Image10" onmouseover="MM_swapImage('Image10','','<?PHP echo $dir_image_lang; ?>btn_article_expert_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><img <?PHP if('en' == $this->language->get('code')) { echo 'style="position:relative;left:-20px"'; } ?> src="<?PHP echo $dir_image_lang; ?>btn_article_video_mo.png" name="Image1211" border="0" id="Image1211" /></li>
		</ul>
	</div>
	<div class="right-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_video_title.png" width="670" height="34" />
		</div>
		<div class="article-list">
			<table width="670" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td><table width="670" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td class="index_course_title"><?PHP echo $news[0]['title']; ?></td>
					</tr>
				  <tr>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td width="670" align="left" valign="top" class="index_content_txt"><iframe width="400" height="230" src="<?PHP echo $news[0]['info']; ?>" frameborder="0" allowfullscreen></iframe></td>
				  </tr>
				</table></td>
				</tr>
			<?PHP for ($idx=1; $idx<3; ++$idx) if(isset($news[$idx])) { ?>
			  <tr>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td><img src="<?PHP echo $dir_image; ?>img_article_line.png" width="670" height="1" /></td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
				</tr>
			  <tr>
				<td><table width="670" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td class="index_course_title"><?PHP echo $news[$idx]['title']; ?></td>
				  </tr>
				  <tr>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td width="670" align="left" valign="top" class="index_content_txt"><iframe width="400" height="230" src="<?PHP echo $news[$idx]['info']; ?>" frameborder="0" allowfullscreen></iframe></td>
				  </tr>
				</table></td>
				</tr>
			  <?PHP } else {break;} ?>
			</table>
		</div>
	</div>
</div><!-- div content -->
<div style="clear:both"></div>

<div class="bottom-bar" style="margin-top:90px;position:absolute;top:1100px;z-index:2147483647;">
<?php echo $footer; ?>
</div>

</body>
</html>
