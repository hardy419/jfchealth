<?php echo $header; ?>

<div class="content">
    <div class="news-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_news_title_detail.png" width="920" height="63" border="0" usemap="#Map" />
		</div>
		<div class="news-list">
		  <table width="920" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td class="index_course_title"><span class="index_title_date"><?PHP echo $date_added; ?></span></td>
			</tr>
		  <tr>
			<td class="index_course_title"><?PHP echo $title; ?></td>
			</tr>
		  <tr>
			<td height="20">&nbsp;</td>
			</tr>
		  <tr>
			<td><?PHP echo $description; ?></td>
			</tr>
          </table>
        </div>
    </div>
	<div style="clear:both"></div>
</div><!-- div content -->

<div class="bottom-bar" style="margin-top:90px;position:relative;">
<?php echo $footer; ?>
</div>

<map name="Map" id="Map"><area shape="rect" coords="850,35,919,68" href="?route=product/news" target="_parent"></map>

</body>
</html>
