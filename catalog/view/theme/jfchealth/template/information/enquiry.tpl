<?php echo $header; ?>

<div class="content contactus-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
			<li><a href="index.php?route=information/contactus" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_contactus_address.png" border="0" id="Image11" onmouseover="MM_swapImage('Image11','','<?PHP echo $dir_image_lang; ?>btn_contactus_address_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_contactus_form_mo.png" /></li>
		</ul>
	</div>
	<div class="right-content fr">
		<div class="description">
            <p class="index_content_txt"><?PHP echo $text_notice; ?></p>
            <p class="index_content_txt"><?PHP echo $text_notice_required; ?></p>
            <form action="?route=information/enquiry/formSubmit" method="POST" id="enquiry_form">
                <table width="670" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="100"><p class="index_content_txt"><?PHP echo $text_name; ?><span style="color:#ff0000">*</span>：</p></td>
                    <td><input type="text" name="name" id="form_name"></input></td>
                  </tr>
                  <tr>
                    <td><p class="index_content_txt"><?PHP echo $text_email; ?><span style="color:#ff0000">*</span>：</p></td>
                    <td><input type="text" name="email" id="form_email"></input></td>
                  </tr>
                  <tr>
                    <td><p class="index_content_txt"><?PHP echo $text_phone; ?><span style="color:#ff0000">*</span>：</p></td>
                    <td><input type="text" name="phone" id="form_phone"></input></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td valign="top"><p class="index_content_txt"><?PHP echo $text_enquiry; ?>：</p></td>
                    <td><textarea cols="30" rows="5" name="message" id="form_message"><?PHP if(''!==$model) {echo $model.': ';} ?></textarea></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><p class="index_content_txt"><a href="javascript:enquiry_form_submit()"><img src="<?PHP echo $dir_image_lang; ?>btn_contact_enquiry.png"></img></a></p></td>
                  </tr>
                  <?PHP
                  ?>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><p class="index_content_txt" style="color:#ff0000;"><?PHP echo $mail_msg; ?></p></td>
                  </tr>
                  <?
                  ?>
                </table>
            </form>
		</div>
	</div>
	<div class="cb"></div>
</div><!-- div content -->

<script>
function enquiry_form_submit(){
	if(''==$('#form_name').val()||''==$('#form_email').val()||''==$('#form_phone').val()){
		alert('<?PHP echo $text_error_required; ?>');
	}
	else{
		$('#enquiry_form').submit();
	}
}
</script>

<div class="bottom-bar">
<?php echo $footer; ?>
</div>

<script>
$(function(){
  // Menu highlight
  $('#Image1').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_home.png');
  $('#Image9').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_contactus_mo.png');
  // Sub menu
  show_submenu('img_contactus_sub.png','#contactus_map');
});
</script>

</body>
</html>
