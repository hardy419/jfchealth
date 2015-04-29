<!DOCTYPE HTML>

<!-- Location: assets/public/ -->
<html>

<HEAD>
<meta http-equiv = "X-UA-Compatible" content = "IE=7" >
<?PHP foreach ($css_ref as $css) { ?>
<link rel="stylesheet" href="<?PHP echo $css; ?>" type="text/css" />
<?PHP } ?>
<script src="catalog/view/theme/jfchealth/js/jquery-1.11.0.min.js"></script>
</HEAD>

<BODY>
<div class="apply-div">
    <div class="head-div">
        <p style="font-size:22px;color:white;float:left;position:relative;left:20px;top:-15px;">即時報名</p>
        <a href="javascript:parent.js_op_close(false)"><img src="<?PHP echo $dir_image; ?>btn_close.png" style="float:right;position:relative;left:-10px;top:6px;"></img></a>
    </div>
    <div style="clear:both;"></div>
    <div class="apply-form">
        <FORM id="apply_form" method="post" action="?route=product/apply_course">
            <TABLE cellSpacing="10" cellPadding="0" width="60%" align="center" border="0" style="margin:auto;">
            <TBODY>
            <TR>
            <TD height="30" width="100" align="left">姓名：</TD>
            <TD><INPUT id="form_name" size="20" name='name' /></TD></TR>
            <TR>
            <TD><?PHP echo $text_phone; ?></TD>
            <TD><INPUT id="form_phone" size="20" name='phone' /></TD></TR>
            <TR>
            <TD><?PHP echo $text_email; ?></TD>
            <TD><INPUT id="form_email" size="20" name='email' /></TD></TR>
            <TR>
            <TD><?PHP echo $text_customername; ?></TD>
            <TD><INPUT id="form_customername" size="20" name='customername'></TD></TR>
            <TR>
            <TD colspan="2" height="30" width="60" align="left">請注意，有<span style="color:#ff0000">*</span>號的必須填寫。</TD></TR>
            <TR>
            <TD>&nbsp;</TD>
            <TD><a href="javascript:course_submit();"><img src="<?PHP echo $dir_image_lang; ?>btn_submit.png"></img></a></TD></TR>
            </TBODY></TABLE></FORM>
</div></div>
<SCRIPT language='JavaScript' type='text/javascript'>
function course_submit(){
    parent.js_op_close(false);
    $.ajax({
        cache: false,
        type: "POST",
        url:"?route=product/apply_course/formSubmit",
        data:$('#apply_form').serialize(),
        error: function(request) {
        },
        success: function(data) {
            alert(data);
        }
    });
    parent.js_iframe_info('?route=product/apply_course/info');
}
</SCRIPT>
</BODY>

</html>