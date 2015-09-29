<?php echo $header; ?>

<div class="content product-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<?php echo $column_left; ?>
	</div>
	<div class="right-content fr">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_product<?php echo $category_sort_order; ?>_detail_title.png" width="850" height="34"  border="0" usemap="#Map" />
			<map name="Map" id="Map">
				<area shape="rect" coords="1,7,69,35" href="?route=product/category&path=<?PHP echo $_GET['path'] ?>" target="_parent" />
			</map>
		</div>
		<div class="content-detail">
			<div class="product-img">
				<img class="fl" id="imgmain" src="<?PHP echo $images[0]['thumb']; ?>" width="320" height="415" />
				<?PHP
					for($idx=0; $idx<3; ++$idx) if(isset($images[$idx])) {
				?>
					<img class="fr" style="cursor:pointer" src="<?PHP echo $images[$idx]['thumb']; ?>" width="103" height="133" onclick="changepic(<?PHP echo $idx; ?>);" />
				<?PHP
					}
				?>
			</div>
			<div class="product-right-desc">
				<div class="product_name"><?PHP echo $model; ?></div>
				<div class="product_name"><?PHP echo $heading_title; ?></div>
				<div class="description index_content_txt"><?php echo $description; ?></div>
				<p align="right" valign="top"><a href="?route=information/enquiry&model=<?PHP echo $model ?>" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_enquiry.png" border="0" /></a></p>
			</div>
			<div class="cb"></div>
			<div class="product-bottom-desc">
				<?PHP echo $feature; ?>
			</div>
		</div>
	</div>
	<div class="cb"></div>
</div><!-- div content -->
<script>
function changepic(id) {
  var a = ["<?PHP if(isset($images[0])) { echo $images[0]['thumb']; } ?>","<?PHP if(isset($images[1])) { echo $images[1]['thumb']; } ?>","<?PHP if(isset($images[2])) { echo $images[2]['thumb']; } ?>"];
  document.getElementById("imgmain").src = a[id];
}
</script>

<div class="bottom-bar">
<?php echo $footer; ?>
</div>

<script>
$(function(){
  // Menu highlight
  $('#Image1').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_home.png');
  $('#Image4').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_product_mo.png');
  // Sub menu
  show_submenu('img_products_sub.png','#product_map');
  // Backend contents
  $('td.product_name').removeAttr('style');
  $('div.product-bottom-desc table,div.product-bottom-desc table img').attr('width','850px');
  $('.product-bottom-desc style').remove();
});
</script>

</body>
</html>
