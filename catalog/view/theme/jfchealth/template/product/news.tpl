<?php echo $header; ?>

<div class="content">
    <div class="news-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_news_title.png" width="920" height="62" />
		</div>
		<div class="news-list">
		  <table width="920" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="210"><img src="<?PHP echo $news[0]['image']; ?>" width="210" height="210" /></td>
			<td width="20">&nbsp;</td>
			<td width="690" align="left" valign="top"><table width="690" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td class="index_course_title"><span class="index_title_date"><?PHP echo $news[0]['date_added']; ?></span></td>
			  </tr>
			  <tr>
				<td class="index_course_title"><?PHP echo $news[0]['title']; ?></td>
				</tr>
			  <tr>
				<td height="10">&nbsp;</td>
				</tr>
			  <tr>
				<td class="index_course_content_txt"><?PHP echo $news[0]['intro']; ?>......<a href="?route=product/news/detail&nid=<?PHP echo $news[0]['news_id']; ?>" target="_parent" class="index_read_txt"><font color="#4e4eff">&lt;&lt;閱讀全文&gt;&gt;</font></a></td>
				</tr>
			</table></td>
			</tr>
			  <?PHP for ($idx=1; $idx<3; ++$idx) if(isset($news[$idx])) { ?>
		  <tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td height="20">&nbsp;</td>
			</tr>
		  <tr>
			<td colspan="3" align="center" valign="middle"><img src="<?PHP echo $dir_image; ?>img_news_line.png" width="903" height="1" /></td>
			</tr>
		  <tr>
			<td align="center" valign="middle">&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			</tr>
		  <tr>
			<td><img src="<?PHP echo $news[$idx]['image']; ?>" width="210" height="210" /></td>
			<td>&nbsp;</td>
			<td height="20" align="left" valign="top"><table width="690" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td class="index_course_title"><span class="index_title_date"><?PHP echo $news[$idx]['date_added']; ?></span></td>
			  </tr>
			  <tr>
				<td class="index_course_title"><?PHP echo $news[$idx]['title']; ?></td>
				</tr>
			  <tr>
				<td height="10">&nbsp;</td>
				</tr>
			  <tr>
				<td class="index_course_content_txt"><?PHP echo $news[$idx]['intro']; ?>......<a href="?route=product/news/detail&nid=<?PHP echo $news[$idx]['news_id']; ?>" target="_parent" class="index_read_txt"><font color="#4e4eff">&lt;&lt;閱讀全文&gt;&gt;</font></a></td>
				</tr>
			</table></td>
		  </tr>
			  <?PHP } else {break;} ?>
			  <tr>
				<td height="20">&nbsp;</td>
				</tr>
		  <tr>
			<td colspan="3" align="center" valign="middle"><img src="<?PHP echo $dir_image; ?>img_news_line.png" width="903" height="1" /></td>
			</tr>
			  <tr>
				<td height="20">&nbsp;</td>
				</tr>
			  <tr>
				<style>
.results a:link {
	color: #000000;
}
.results a:visited {
	color: #000000;
}
.results a:hover {
	color: #000000;
}
.results a:active {
	color: #000000;
}
				</style>
				<td height="10" colspan="3" align="right"><?php echo $pagination; ?></td>
				</tr>
		  </table>
		</div>
    </div>
	<div style="clear:both"></div>
</div><!-- div content -->

<div class="bottom-bar" style="margin-top:90px;position:absolute;top:1100px;z-index:2147483647;">
<?php echo $footer; ?>
</div>

</body>
</html>
