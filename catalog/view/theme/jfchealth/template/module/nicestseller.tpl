<div class="cont-box overhide pad-B20">
  <div class="title overhide"><img class="t" src="catalog/view/theme/dared/images/title-popular-products_<?php echo $lang; ?>.png"/></div>
  <div class="cont overhide">
	<ul class="list">
      <?php if(!empty($products)){ foreach ($products as $product) { ?>
      <li class="h">
        <?php if ($product['thumb']) { ?>
		<a class="left" href="<?php echo $product['href']; ?>"><img width=52 class="pro" src="<?php echo $product['thumb']; ?>"/></a>
        <?php } ?>
		<div class="txt left">
			<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
			<?php if (!$product['special']) { ?>
			<p class="price"><?php echo $product['price']; ?></p>
			<?php } else { ?>
			<p class="price"><span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span></p>
			<?php } ?>
		</div>
      </li>
      <?php }} ?>
	</ul>
  </div>
</div>
