<?php echo $header; ?>
<div class="cont-right right">

<div class="support_title"></div>
<?php echo $column_left; ?>
<div class="product_line2"></div>
<div class="content-inside pad-LR20 left mar-t10">
  <?php if ($products) { ?>
	<div class="content">
		<ul class="list2">
    <?php foreach ($products as $product) { ?>
			<li>
				<?php if ($product['thumb']) { ?>
					<img class="pic" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
				<?php } ?>
				<span class="title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></span>
				<div class="s_download">
				<span style="display:block;">Download:</span>
				<?php echo !empty($product['filename1'])?'<span><a href="download/support/'.$product['product_id'].'/'.$product['filename1'].'"><img src="catalog/view/theme/dared/images/btn_driver.png" /></a></span>':''; ?>
				<?php echo !empty($product['filename'])?'<span><a href="download/support/'.$product['product_id'].'/'.$product['filename'].'"><img src="catalog/view/theme/dared/images/btn_catalog.png" /></a></span>':''; ?>
				<?php echo !empty($product['filename2'])?'<span><a href="download/support/'.$product['product_id'].'/'.$product['filename2'].'"><img src="catalog/view/theme/dared/images/btn_datasheet.png" /></a></span>':''; ?>
				</div>
				<div class="support_line"></div>
			</li>
    <?php } ?>
		</ul>
	</div><!--content-->
  <?php } ?>
</div>
  </div>
<?php echo $footer; ?>