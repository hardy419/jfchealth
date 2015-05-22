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
      <h1><img src="view/image/product.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><?php echo 'Name:'; ?></td>
            <td><input type="text" name="name" value="<?php echo $name; ?>" size="40" /></td>
          </tr>
          <tr>
            <td><?php echo 'Telephone:'; ?></td>
            <td><input type="text" name="phone" value="<?php echo $phone; ?>" size="40" /></td>
          </tr>
          <tr>
            <td><?php echo 'Email:'; ?></td>
            <td><input type="text" name="email" value="<?php echo $email; ?>" size="40" /></td>
          </tr>
          <tr>
            <td><?php echo 'Member Name:'; ?></td>
            <td><input type="text" name="member_name" value="<?php echo $member_name; ?>" size="40" /></td>
          </tr>
          <tr>
            <td><?php echo 'Course:'; ?></td>
            <td>
              <select name="course_id">
                <?php foreach ($course_info as $c) { ?>
                <option value="<?php echo $c['course_id']; ?>" <?php if($c['course_id']===$course_id) echo 'selected'; ?>><?php echo $c['name'].' '.$c['date']; ?></option>
                <?php } ?>
              </select>
            </td>
          </tr>
        </table>
      </form>
    </div>
</div>
</div>
<?php echo $footer; ?>