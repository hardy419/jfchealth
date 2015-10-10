<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/information.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div id="tab-image">
          <div id="languages" class="htabs">
            <?php foreach ($languages as $language) { ?>
            <a href="#language<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="language<?php echo $language['language_id']; ?>">
          <table class="list">
            <thead>
              <tr>
                <td class="left"><?php echo $entry_image; ?></td>
                <td class="right"><?php echo 'Link'; ?></td>
                <td class="right"><?php echo $entry_sort_order; ?></td>
                <td></td>
              </tr>
            </thead>
            <?php $image_row = 0; ?>
            <?php foreach ($news_images[$language['language_id']] as $news_image) { ?>
            <tbody class="image-row<?php echo $image_row; ?>" id="image-row<?php echo $image_row; ?>-lang<?php echo $language['language_id']; ?>">
              <tr>
                <td class="left"><div class="image"><img src="<?php echo $news_image['thumb']; ?>" alt="" id="thumb<?php echo $image_row; ?>-lang<?php echo $language['language_id']; ?>" />
                    <input type="hidden" name="news_image[<?php echo $language['language_id']; ?>][<?php echo $image_row; ?>][image]" value="<?php echo $news_image['image']; ?>" id="image<?php echo $image_row; ?>-lang<?php echo $language['language_id']; ?>" />
                    <br />
                    <a onclick="image_upload('image<?php echo $image_row; ?>-lang<?php echo $language['language_id']; ?>', 'thumb<?php echo $image_row; ?>-lang<?php echo $language['language_id']; ?>');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('#thumb<?php echo $image_row; ?>-lang<?php echo $language['language_id']; ?>').attr('src', '<?php echo $no_image; ?>'); $('#image<?php echo $image_row; ?>-lang<?php echo $language['language_id']; ?>').attr('value', '');"><?php echo $text_clear; ?></a></div></td>
                <td class="right"><input type="text" name="news_image[<?php echo $language['language_id']; ?>][<?php echo $image_row; ?>][link]" value="<?php echo $news_image['link']; ?>" size="50" /></td>
                <td class="right"><input type="text" name="news_image[<?php echo $language['language_id']; ?>][<?php echo $image_row; ?>][sort_order]" value="<?php echo $news_image['sort_order']; ?>" size="2" /></td>
                <td class="left"><a onclick="$('.image-row<?php echo $image_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
              </tr>
            </tbody>
            <?php $image_row++; ?>
            <?php } ?>
            <tfoot>
              <tr>
                <td colspan="3"></td>
                <td class="left"><a onclick="addImage();" class="button"><?php echo $button_add_image; ?></a></td>
              </tr>
            </tfoot>
          </table>
          </div>
          <?php } ?>
        </div>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(text) {
						$('#' + thumb).replaceWith('<img src="' + text + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 
<script type="text/javascript"><!--
var image_row = <?php echo $image_row; ?>;

function addImage() {
  if(<?php echo $maxnum_images; ?>==$('#languages+div>table tbody').length) return;

    html  = '<tbody class="image-row' + image_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><div class="image"><img src="<?php echo $no_image; ?>" alt="" id="thumb' + image_row + '" /><input type="hidden" name="news_image[' + image_row + '][image]" value="" id="image' + image_row + '" /><br /><a id="upload-a" onclick="image_upload(\'image' + image_row + '\', \'thumb' + image_row + '\');"><?php echo $text_browse; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a id="clear-a" onclick="$(\'#thumb' + image_row + '\').attr(\'src\', \'<?php echo $no_image; ?>\'); $(\'#image' + image_row + '\').attr(\'value\', \'\');"><?php echo $text_clear; ?></a></div></td>';
	html += '    <td class="right"><input type="text" name="news_image[' + image_row + '][link]" value="http://" id="link-input" size="50" /></td>';
	html += '    <td class="right"><input type="text" name="news_image[' + image_row + '][sort_order]" value="" id="sort-input" size="2" /></td>';
	html += '    <td class="left"><a onclick="$(\'.image-row' + image_row  + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
<?php foreach ($languages as $language) { ?>
  $('#language<?PHP echo $language['language_id']; ?>>table tfoot').before(html);
  $('#language<?PHP echo $language['language_id']; ?> .image-row' + image_row).attr('id','image-row' + image_row + '-lang<?PHP echo $language['language_id']; ?>');
  $('#language<?PHP echo $language['language_id']; ?> #thumb' + image_row).attr('id','thumb' + image_row + '-lang<?PHP echo $language['language_id']; ?>');
  $('#language<?PHP echo $language['language_id']; ?> #image' + image_row).attr('id','image' + image_row + '-lang<?PHP echo $language['language_id']; ?>').attr('name','news_image[<?PHP echo $language['language_id']; ?>][' + image_row + '][image]');
  $('#language<?PHP echo $language['language_id']; ?> #upload-a').removeAttr('id').attr('onclick','image_upload(\'image' + image_row + '-lang<?PHP echo $language['language_id']; ?>\', \'thumb' + image_row + '-lang<?PHP echo $language['language_id']; ?>\');');
  $('#language<?PHP echo $language['language_id']; ?> #clear-a').removeAttr('id').attr('onclick','$(\'#thumb' + image_row + '-lang<?PHP echo $language['language_id']; ?>\').attr(\'src\', \'<?php echo $no_image; ?>\'); $(\'#image' + image_row + '-lang<?PHP echo $language['language_id']; ?>\').attr(\'value\', \'\');');
  $('#language<?PHP echo $language['language_id']; ?> #link-input').removeAttr('id').attr('name','news_image[<?PHP echo $language['language_id']; ?>][' + image_row + '][link]');
  $('#language<?PHP echo $language['language_id']; ?> #sort-input').removeAttr('id').attr('name','news_image[<?PHP echo $language['language_id']; ?>][' + image_row + '][sort_order]');
<?PHP } ?>
	
	image_row++;
}
//--></script> 
<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs(); 
$('#languages a').tabs(); 
$('#vtab-option a').tabs();
/*
var profileCount = <?php echo $profileCount ?>;

function addProfile() {
    profileCount++;
    
    var html = '';
    html += '<tr id="profile-row' + profileCount + '">';
    html += '  <td class="left">';
    html += '    <select name="news_profiles[' + profileCount + '][profile_id]">';
    <?php foreach ($profiles as $profile): ?>
    html += '      <option value="<?php echo $profile['profile_id'] ?>"><?php echo $profile['name'] ?></option>';
    <?php endforeach; ?>
    html += '    </select>';
    html += '  </td>';
    html += '  <td class="left">';
    html += '    <select name="news_profiles[' + profileCount + '][customer_group_id]">';
    <?php foreach ($customer_groups as $customer_group): ?>
    html += '      <option value="<?php echo $customer_group['customer_group_id'] ?>"><?php echo $customer_group['name'] ?></option>';
    <?php endforeach; ?>
    html += '    <select>';
    html += '  </td>';
    html += '  <td class="left">';
    html += '    <a class="button" onclick="$(\'#profile-row' + profileCount + '\').remove()"><?php echo $button_remove ?></a>';
    html += '  </td>';
    html += '</tr>';
    
    $('#tab-profile table tbody').append(html);
}
*/
<?php /* if (isset($this->request->get['news_id'])) { ?>
    function openbayLinkStatus(){
        var news_id = '<?php echo $this->request->get['news_id']; ?>';
        $.ajax({
            type: 'GET',
            url: 'index.php?route=extension/openbay/linkStatus&token=<?php echo $token; ?>&news_id='+news_id,
            dataType: 'html',
            success: function(data) {
                //add the button to nav
                $('<a href="#tab-openbay"><?php echo $tab_marketplace_links ?></a>').hide().appendTo("#tabs").fadeIn(1000);
                $('#tab-general').before(data);
                $('#tabs a').tabs();
            },
            failure: function(){

            },
            error: function() {

            }
        });
    }

    $(document).ready(function(){
        openbayLinkStatus();
    });
<?php }*/ ?>

//--></script>
<script type="text/javascript" src="view/javascript/jquery/ajaxupload.js"></script> 
<script type="text/javascript"><!--
new AjaxUpload('#button-upload', {
	action: 'index.php?route=catalog/news/upload&token=<?php echo $token; ?>&c=news&id=<?php echo $id;?>',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-upload').after('<img src="view/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-upload').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-upload').attr('disabled', false);
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'filename\']').attr('value', json['filename']);
		}
		
		if (json['error']) {
			alert(json['error']);
		}
		
		$('.loading').remove();	
	}
});
//--></script> 
<script>
$('#button-del').click(function (){
	if($('input[name=\'filename\']').attr('value')!=''){
		alert('The file has been deleted sucseefully.');
	}
	$('input[name=\'filename\']').attr('value','');
})
</script>

<?php echo $footer; ?>