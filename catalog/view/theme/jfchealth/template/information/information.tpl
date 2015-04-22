<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div class="cont-right right">
	<?php echo $content_top; ?>
	<div class="position pad-LR20">
	  <div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	  </div>
	</div><!--position-->
	<div class="content-inside pad-LR20">
	  <h1 class="h2"><?php echo $heading_title; ?></h1>
	  <div class="cont">
		<?php echo $description; ?>
	  </div>
	</div><!--content-inside-->
</div>
<?php echo $footer; ?>