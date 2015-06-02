<?php echo $header; ?>

<div class="content">
	<div class="left-nav">
		<?php echo $column_left; ?>
	</div>
	<div class="right-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_product<?php echo $category_sort_order; ?>_detail_title.png" width="670" height="34"  border="0" usemap="#Map" />
			<map name="Map" id="Map">
				<area shape="rect" coords="1,7,69,35" href="?route=product/category&path=<?PHP echo $_GET['path'] ?>" target="_parent" />
			</map>
		</div>
		<div class="content-detail">
			<div class="product-img">
				<img id="imgmain" src="<?PHP echo $images[0]['thumb']; ?>" width="310" height="350" />
				<table width="310" border="0" cellpadding="0" cellspacing="0"><tr>
				  <?PHP
					for($idx=0; $idx<3; ++$idx) if(isset($images[$idx])) {
				  ?>
					  <td width="90"><img style="cursor:pointer" src="<?PHP echo $images[$idx]['thumb']; ?>" width="90" height="102" onclick="changepic(<?PHP echo $idx; ?>);" /></td>
				  <?PHP
					  if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
					} else {
				  ?>
					  <td width="90">&nbsp;</td>
				  <?PHP
					  if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
					}
				  ?>
				</tr></table>
			</div>
			<div class="product-right-desc">
				<div class="product_name"><?PHP echo $model; ?></div>
				<div class="product_name"><?PHP echo $heading_title; ?></div>
				<div class="description index_content_txt"><?php echo $description; ?></div>
				<p align="right" valign="top"><a href="?route=information/enquiry&model=<?PHP echo $model ?>" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_enquiry.png" width="163" height="46" border="0" /></a></p>
			</div>
			<div style="clear:both"></div>
			<div class="product-bottom-desc">
				<?PHP echo $feature; ?>
			</div>
		</div>
	</div>
	<div style="clear:both"></div>
</div><!-- div content -->
<script>
function changepic(id) {
  var a = ["<?PHP if(isset($images[0])) { echo $images[0]['thumb']; } ?>","<?PHP if(isset($images[1])) { echo $images[1]['thumb']; } ?>","<?PHP if(isset($images[2])) { echo $images[2]['thumb']; } ?>"];
  document.getElementById("imgmain").src = a[id];
}
</script>

<div class="bottom-bar" style="margin-top:90px;">
<?php echo $footer; ?>
</div>

</body>
</html>
