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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/information.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_insert; ?></a><a onclick="$('form').submit();" class="button"><?php echo $button_delete; ?></a><a onclick="export_csv();" class="button"><?php echo 'Export csv'; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>

              <td class="left"><?php if ($sort == 'name') { ?>
                <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
                <?php } ?></td>
              <td class="right"><?php if ($sort == 'phone') { ?>
                <a href="<?php echo $sort_phone; ?>" class="<?php echo strtolower($order); ?>"><?php echo 'Telephone'; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_phone; ?>"><?php echo 'Telephone'; ?></a>
                <?php } ?></td>
              <td class="right"><?php if ($sort == 'email') { ?>
                <a href="<?php echo $sort_email; ?>" class="<?php echo strtolower($order); ?>"><?php echo 'Email'; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_email; ?>"><?php echo 'Email'; ?></a>
                <?php } ?></td>
              <td class="right"><?php if ($sort == 'member_name') { ?>
                <a href="<?php echo $sort_member_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo 'Member Name'; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_member_name; ?>"><?php echo 'Member Name'; ?></a>
                <?php } ?></td>
              <td class="right"><?php if ($sort == 'course_id') { ?>
                <a href="<?php echo $sort_course_id; ?>" class="<?php echo strtolower($order); ?>"><?php echo 'Course'; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_course_id; ?>"><?php echo 'Course'; ?></a>
                <?php } ?></td>

              <td class="right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($course_customer) { ?>
            <?php foreach ($course_customer as $information) { ?>
            <tr>
              <td style="text-align: center;"><?php if ($information['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $information['course_customer_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $information['course_customer_id']; ?>" />
                <?php } ?></td>

              <td class="left"><?php echo $information['name']; ?></td>
              <td class="right"><?php echo $information['phone']; ?></td>
              <td class="right"><?php echo $information['email']; ?></td>
              <td class="right"><?php echo $information['member_name']; ?></td>
              <td class="right"><?php echo $information['course']; ?></td>

              <td class="right"><?php foreach ($information['action'] as $action) { ?>
                [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                <?php } ?></td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="7"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>
<?php echo $footer; ?>