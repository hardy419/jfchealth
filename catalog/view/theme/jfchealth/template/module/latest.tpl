<div class="cont-right pad-T5 right">
	<?php echo $banner; ?>
</div>

	<div class="index_about">
		<div class="index_about_title"></div>
		<div class="index_about_content">Dared Audio was founded in 1995. It's Mission:To design and manufacture the best and most widely affordable yet technologically advanced High-End, High Fidelity audio equipment. Our product line includes:Vacuum tube amplifiers, Guitar amplifiers, as well as Multimedia speaker systems. DARED is the registered trademark of our Company and is universally recognized for its achievements in the design of innovative as well as affordable audio products. We constantly create new innovations that are pleasing to the eye and for the ear to hear the "Purity of Sound"</div>
		<a href="<?php echo $url_about;?>"><div class="blue_more"></div></a>
	</div>
	<div class="index_news">
		<div class="index_news_title"></div>
		<?php foreach($list as $news){?>
		<div class="index_news_content">
			<span class="index_news_c_t"><?php echo $news['title'];?></span>
			<span class="index_news_c_i"><img width="136" height="84" src="<?php echo $news['images'][0]['thumb'];?>" /></span>
			<span class="index_news_c_c"><?php echo html_entity_decode($news['description']);?></span>
		</div>
		<?php }?>
		<div class="clear"></div>
		<a href="<?php echo $url_news;?>"><div class="red_more"></div></a>
	</div>
	<div class="foot_p">
		<span class="foot_p_l"></span>
		<div class="foot_p_d">
			<ul>
			<?php foreach($products as $product){?>
			<li><a href="<?php echo $product['href'];?>"><img width="180" height="115" src="<?php echo $product['thumb'];?>" /></a></li>
			<?php }?>
			</ul>
		</div>
		<span class="foot_p_r"></span>
	</div>
<div class="clear"></div>
