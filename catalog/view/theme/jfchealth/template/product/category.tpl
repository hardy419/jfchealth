<?php echo $header; ?>
<div class="cont-right right">

<div class="product_title"></div>
<?php echo $column_left; ?>
<div class="product_line2"></div>
<div class="content-inside pad-LR20 left">
<div class="cata_name"><?php echo $heading_title;?></div>
  <?php if ($products) { ?>
	<div class="content">
		<ul class="list">
    <?php foreach ($products as $product) { ?>
			<li>
				<?php if ($product['thumb']) { ?>
					<a href="<?php echo $product['href']; ?>"><img class="pic" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
				<?php } ?>
				<p class="title fb"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></p>
				
			</li>
    <?php } ?>
		</ul>
	</div><!--content-->
  <?php } ?>
</div>
  </div>
<?php echo $footer; ?>