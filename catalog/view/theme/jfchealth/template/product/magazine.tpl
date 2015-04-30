<?php echo $header; ?>
	<div class="magazine-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_magazine_title.png" width="920" height="62" />
		</div>
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
				<td width="215"><?PHP if(isset($news[$idx])) { ?><img src="<?PHP $news[$idx]['image']; ?>" width="215" height="290" /><?PHP } ?></td>
				<td width="20">&nbsp;</td>
				<td width="215" height="20"><?PHP if(isset($news[$idx+1])) { ?><img src="<?PHP $news[$idx+1]['image']; ?>" width="215" height="290" /><?PHP } ?></td>
				<td width="20">&nbsp;</td>
				<td width="215"><?PHP if(isset($news[$idx+2])) { ?><img src="<?PHP $news[$idx+2]['image']; ?>" width="215" height="290" /><?PHP } ?></td>
				<td width="20">&nbsp;</td>
				<td width="215"><?PHP if(isset($news[$idx+3])) { ?><img src="<?PHP $news[$idx+3]['image']; ?>" width="215" height="290" /><?PHP } ?></td>
			  </tr>
			  <tr>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx])) { ?><table width="215" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="40">&nbsp;</td>
					<td width="106" height="60" align="center" valign="middle"><span class="index_content_txt"><?PHP $news[$idx]['title']; ?><br />
					  <?PHP $news[$idx]['description']; ?></span></td>
					<td width="69"><a href="<?PHP $news[$idx]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_pdf.png" width="48" height="47" border="0" /></a></td>
				  </tr>
				</table><?PHP } ?></td>
				<td>&nbsp;</td>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx+1])) { ?><table width="215" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="40">&nbsp;</td>
					<td width="106" height="60" align="center" valign="middle"><span class="index_content_txt"><?PHP $news[$idx+1]['title']; ?><br />
					  <?PHP $news[$idx+1]['description']; ?></span></td>
					<td width="69"><a href="<?PHP $news[$idx+1]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_pdf.png" width="48" height="47" border="0" /></a></td>
				  </tr>
				</table><?PHP } ?></td>
				<td>&nbsp;</td>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx+2])) { ?><table width="215" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="40">&nbsp;</td>
					<td width="106" height="60" align="center" valign="middle"><span class="index_content_txt"><?PHP $news[$idx+2]['title']; ?><br />
					  <?PHP $news[$idx+2]['description']; ?></span></td>
					<td width="69"><a href="<?PHP $news[$idx+2]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_pdf.png" width="48" height="47" border="0" /></a></td>
				  </tr>
				</table><?PHP } ?></td>
				<td>&nbsp;</td>
				<td align="center" valign="middle"><?PHP if(isset($news[$idx+3])) { ?><table width="215" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="40">&nbsp;</td>
					<td width="106" height="60" align="center" valign="middle"><span class="index_content_txt"><?PHP $news[$idx+3]['title']; ?><br />
					  <?PHP $news[$idx+3]['description']; ?></span></td>
					<td width="69"><a href="<?PHP $news[$idx+3]['filename']; ?>" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_pdf.png" width="48" height="47" border="0" /></a></td>
				  </tr>
				</table><?PHP } ?></td>
			  </tr>
			  <?PHP $idx+=4; } ?>
		  </table>
		</div>
	</div>
	<div style="clear:both"></div>
</div><!-- div content -->

<div class="bottom-bar" style="margin-top:90px;position:relative;top:790px;z-index:2147483647;">
<?php echo $footer; ?>
</div>

</body>
</html>
