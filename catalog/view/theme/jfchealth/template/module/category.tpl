  <!--tr>
    <td><img src="<?PHP echo $dir_image; ?>btn_product_01_mo.png" name="Image13" width="99" height="18" border="0" id="Image13" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><a href="product01.html" tppabs="http://jfchealth.com/new/product01.html" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_product_02.png" name="Image10" width="99" height="18" border="0" id="Image10" onmouseover="MM_swapImage('Image10','','<?PHP echo $dir_image; ?>btn_product_02_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><a href="product03.html" tppabs="http://jfchealth.com/new/product03.html" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_product_03.png" width="99" height="18" border="0" id="Image11" onmouseover="MM_swapImage('Image11','','<?PHP echo $dir_image; ?>btn_product_03_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><a href="product04.html" tppabs="http://jfchealth.com/new/product04.html" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_product_04.png" width="99" height="18" border="0" id="Image12" onmouseover="MM_swapImage('Image12','','<?PHP echo $dir_image; ?>btn_product_04_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
    <td>&nbsp;</td>
  </tr-->

<?php foreach ($categories as $category) {  ?>
  <tr>
    <?php if ($category['category_id'] == $category_id) { ?>
    <td><img src="<?PHP echo $dir_image; ?>btn_product_<?php echo $category['name']; ?>_mo.png" width="99" height="18" border="0" /></td>
    <?php } else { ?>
    <td><a href="<?php echo $category['href']; ?>" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_product_<?php echo $category['name']; ?>.png" width="99" height="18" border="0" id="Image<?php echo $category['category_id']; ?>" onmouseover="MM_swapImage('Image<?php echo $category['category_id']; ?>','','<?PHP echo $dir_image; ?>btn_product_<?php echo $category['name']; ?>_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
    <?php } ?>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
<?php } ?>

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
