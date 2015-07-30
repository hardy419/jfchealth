<?php echo $header; ?>

<script>
function button1_click() {
  $('.product-list').css('text-align', 'center');
  $('.product-list').html('<img src="<?PHP echo $dir_image; ?>img_SGSBacterial_01.jpg" /><br/><br/><br/><img src="<?PHP echo $dir_image; ?>img_SGSBacterial_02.jpg" /><br/><br/><br/><img src="<?PHP echo $dir_image; ?>img_SGSBacterial_03.jpg" />');
  $('.content-title').find('img').attr('src', '<?PHP echo $dir_image_lang; ?>img_title_report.png');
  $('.content-title').find('img').attr('usemap', '#Map');
  $('.bottom-bar').css('top', '3080px');
  $(document).bind('contextmenu',function(e){
    return false;
  });
}
function button2_click() {
  $('.product-list').css('text-align', 'center');
  $('.product-list').html('<img src="<?PHP echo $dir_image; ?>img_SGSMetal_01.jpg" /><br/><br/><br/><img src="<?PHP echo $dir_image; ?>img_SGSMetal_02.jpg" /><br/><br/><br/><img src="<?PHP echo $dir_image; ?>img_SGSMetal_03.jpg" /><br/><br/><br/><img src="<?PHP echo $dir_image; ?>img_SGSMetal_04.jpg" />');
  $('.content-title').find('img').attr('src', '<?PHP echo $dir_image_lang; ?>img_title_report.png');
  $('.content-title').find('img').attr('usemap', '#Map');
  $('.bottom-bar').css('top', '3980px');
  $(document).bind('contextmenu',function(e){
    return false;
  });
}
</script>

<div class="content">
	<div class="left-nav">
		<?php echo $column_left; ?>
<?PHP if (!isset($_GET['path']) || 99 == $_GET['path']) { ?>
		<div class="extra-buttons"><br/><br/><br/><br/><br/><br/>
			<div class="button1-div">&nbsp;&nbsp;<a href="javascript:void(0)" onclick="button1_click();"><img src="<?PHP echo $dir_image_lang; ?>btn_SGSBacterial.png" /></a></div>
			<br/>
			<div class="button2-div">&nbsp;&nbsp;<a href="javascript:void(0)" onclick="button2_click();"><img src="<?PHP echo $dir_image_lang; ?>btn_SGSMetal.png" /></a></div>
			<map name="Map" id="Map">
				<area shape="rect" coords="1,7,69,35" href="?route=product/category" target="_parent" />
			</map>
		</div>
<?PHP } ?>
	</div>
	<div class="right-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_product<?php echo $sort_order; ?>_title.png" width="670" height="34" />
		</div>
		<div class="product-list">
		  <table width="670" border="0" cellpadding="0" cellspacing="0"><tr>
			<td align="left" valign="top"><table width="670" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<?PHP
				for($idx=0; $idx<3; ++$idx) if(isset($products[$idx])) {
				?>
					<td width="210"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><img src="<?php echo $products[$idx]['thumb']; ?>" width="210" height="250" border="0" /></a></td>
				<?PHP
					if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
				} else {
				?>
					<td width="210">&nbsp;</td>
				<?PHP
					if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
				}
				?>
			  </tr>
			  <tr>
				<?PHP
				for($idx=0; $idx<3; ++$idx) if(isset($products[$idx])) {
				?>
					<td height="40" class="index_content_txt"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><font color="#252525"><?php echo $products[$idx]['name']; ?><br />
					  (<?php echo $products[$idx]['model']; ?>)</font></a></td>
				<?PHP
					if($idx<2) { echo '<td class="index_content_txt">&nbsp;</td>'; }
				} else {
				?>
					<td height="40" class="index_content_txt">&nbsp;</td>
				<?PHP
					if($idx<2) { echo '<td class="index_content_txt">&nbsp;</td>'; }
				}
				?>
			  </tr>
			  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
			  <tr>
				<?PHP
				for($idx=3; $idx<6; ++$idx) if(isset($products[$idx])) {
				?>
					<td width="210"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><img src="<?php echo $products[$idx]['thumb']; ?>" width="210" height="250" border="0" /></a></td>
				<?PHP
					if($idx<5) { echo '<td width="20">&nbsp;</td>'; }
				} else {
				?>
					<td width="210">&nbsp;</td>
				<?PHP
					if($idx<5) { echo '<td width="20">&nbsp;</td>'; }
				}
				?>
			  </tr>
			  <tr>
				<?PHP
				for($idx=3; $idx<6; ++$idx) if(isset($products[$idx])) {
				?>
					<td height="40" class="index_content_txt"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><font color="#252525"><?php echo $products[$idx]['name']; ?><br />
					  (<?php echo $products[$idx]['model']; ?>)</font></a></td>
				<?PHP
					if($idx<5) { echo '<td class="index_content_txt">&nbsp;</td>'; }
				} else {
				?>
					<td height="40" class="index_content_txt">&nbsp;</td>
				<?PHP
					if($idx<5) { echo '<td class="index_content_txt">&nbsp;</td>'; }
				}
				?>
			  </tr>
			  <tr>
				<td height="40" class="index_content_txt">&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			</table></td></tr>
		  </table>
		</div>
	</div>
	<div style="clear:both"></div>
</div><!-- div content -->

<div class="bottom-bar" style="position:absolute;top:880px;">
<?php echo $footer; ?>
</div>

</body>
</html>
