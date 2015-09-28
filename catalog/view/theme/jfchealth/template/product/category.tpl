<?php echo $header; ?>

<div class="content product-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<?php echo $column_left; ?>
	</div>
	<div class="right-content fr">
		<div class="product-list">
		  <table width="849" border="0" cellpadding="0" cellspacing="0"><tr>
			<td align="left" valign="top"><table width="849" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<?PHP
				for($idx=0; $idx<3; ++$idx) if(isset($products[$idx])) {
				?>
					<td width="269"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><img src="<?php echo $products[$idx]['thumb']; ?>" width="269" height="350" border="0" /></a></td>
				<?PHP
					if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
				} else {
				?>
					<td width="269">&nbsp;</td>
				<?PHP
					if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
				}
				?>
			  </tr>
			  <tr>
				<?PHP
				for($idx=0; $idx<3; ++$idx) if(isset($products[$idx])) {
				?>
					<td height="40" class="index_content_txt" align="center"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><font color="#252525"><?php echo $products[$idx]['name']; ?><br />
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
					<td width="269"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><img src="<?php echo $products[$idx]['thumb']; ?>" width="269" height="350" border="0" /></a></td>
				<?PHP
					if($idx<5) { echo '<td width="20">&nbsp;</td>'; }
				} else {
				?>
					<td width="269">&nbsp;</td>
				<?PHP
					if($idx<5) { echo '<td width="20">&nbsp;</td>'; }
				}
				?>
			  </tr>
			  <tr>
				<?PHP
				for($idx=3; $idx<6; ++$idx) if(isset($products[$idx])) {
				?>
					<td height="40" class="index_content_txt" align="center"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><font color="#252525"><?php echo $products[$idx]['name']; ?><br />
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
<?PHP
  if (99 == $_GET['path']) {
?>
			  <tr>
				<td><img src="<?PHP echo $dir_image_lang; ?>img_report.png" /></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td height="40" class="index_content_txt">&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td width="269"><img src="<?PHP echo $dir_image; ?>img_SGSBacterial_01.jpg" width="269" height="350" /></td>
				<td width="20">&nbsp;</td>
				<td width="269"><img src="<?PHP echo $dir_image; ?>img_SGSMetal_01.jpg" width="269" height="350" /></td>
				<td width="20">&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td height="40" class="index_content_txt" align="center"><a href="javascript:void(0);" target="_parent"><font color="#252525">SGS-駿豐頻譜水-<br />細菌類化驗報告</font></a></td>
				<td class="index_content_txt">&nbsp;</td>
				<td height="40" class="index_content_txt" align="center"><a href="javascript:void(0);" target="_parent"><font color="#252525">SGS-駿豐頻譜水-<br />重金屬類化驗報告</font></a></td>
				<td class="index_content_txt">&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td height="40" class="index_content_txt">&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
<?PHP
  }
?>
			</table></td></tr>
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
  $('#Image4').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_product_mo.png');
});
</script>

</body>
</html>
