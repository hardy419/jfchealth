<ul>
<?php foreach ($categories as $category) {  ?>
    <?php if ($category['category_id'] == $category_id) { ?>
    <li><img src="<?PHP echo $dir_image_lang; ?>btn_product_<?php echo $category['name']; ?>_mo.png" width="99" height="18" border="0" /></li>
    <?php } else { ?>
    <li><a href="<?php echo $category['href']; ?>" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_product_<?php echo $category['name']; ?>.png" width="99" height="18" border="0" id="Image<?php echo $category['category_id']; ?>" onmouseover="MM_swapImage('Image<?php echo $category['category_id']; ?>','','<?PHP echo $dir_image_lang; ?>btn_product_<?php echo $category['name']; ?>_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
    <?php } ?>
<?php } ?>
</ul>

<script>
	var current_url = window.location.href;
	$("#li a").each(function(){
		if($(this).attr('href')==current_url){
			$(this).addClass("on");
		}else{
			$(this).removeClass("on");
		}
	});
</script>
