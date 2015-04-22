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
	<div class="img-warp left">
		<div class="big-img-warp">
			<?php if ($thumb) { ?>
				<a href="<?php echo $thumb; ?>" class="MagicZoom"><img class="big-img" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a>
				<a href="<?php echo $thumb; ?>" class="big-img-a" data-lightbox="roadtrip" ></a>
			<?php } ?>
		</div>
		<div class="small-warp">
			<ul>
				<?php if ($images) { ?>
						<?php 
							foreach ($images as $k => $image) {
						?>
								<li class="s-l">
									<a class="clear colorbox" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" onclick="return false;"><img class="s-p" width=59 src="<?php echo $image['thumb']; ?>" src2="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
								</li>
						<?php } ?>
				<?php } ?>
			</ul>
		</div><!--small-warp-->
	</div><!--img-warp-->
	<div class="txt-warp right">
	    <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
		<table width="100%" class="pro-info">
			<tr>
				<td valign="top" class="fb" width=25%><?php echo $text_title; ?></td>
				<td valign="top" class="fb" width=5%>：</td>
				<td width=70%><?php echo $heading_title; ?></td>
			</tr>
			<?php if($price_d>0){?>
			<tr>
				<td valign="top" class="fb"><?php echo $text_price; ?></td>
				<td valign="top" class="fb">：</td>
				<td>
					<?php if ($price) { ?>
						<?php if (!$special) { ?>
						<?php echo $price; ?>
						<?php } else { ?>
						<span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
						<?php } ?>
					<?php } ?>
				</td>
			</tr>
			<?php }?>
			<tr>
				<td valign="top" class="fb"><?php echo $tab_description; ?></td>
				<td valign="top" class="fb">：</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan=3>	<?php echo $description; ?>
				</td>
			</tr>
			<?php if($price_d>0){?>
			<tr>
				<td valign="top" class="fb">数量</td>
				<td valign="top" class="fb">：</td>
				<td>
					<ul class="clearfix">
					  <li class="zj">-</li>
					  <li class="gs"><input type="text" name="quantity" size="2" maxlength=2 value="1" class="ipt_count">
				<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" /></li>
					  <li class="jl">+</li>
					</ul>
					<script>
						$(function(){
							var count = $(".ipt_count").val();
							$(".zj").click(function(){
								if(count>=1){
									$(".ipt_count").val(--count);
								}
							});
							
							$(".jl").click(function(){
								$(".ipt_count").val(++count);
							});
						});
					</script>
				</td>
			</tr>
			<tr>
				<td colspan=3 style="padding-top:10px;">
					<?php if($stock>0){?><a class="add_cart" href="javascript:;" id="button-cart" ><?php echo $button_cart; ?></a><?php }else{?>
					<span style="font-size: 18px; color: rgb(255, 0, 0); font-weight: bold;">缺貨</span><?php }?>
				</td>
			</tr>
			<?php }?>
		</table>
	</div><!--txt-warp-->
	<div class="porduct_net">
		<div class="net_title"><img class="t" src="catalog/view/theme/dared/images/title-recommended-products_zh_HK.png"></div>
		<div class="net_html"><?php echo $net_html;?></div>
	</div>
	<div class="clear"></div>
</div></div><!--content-inside-->
<script type="text/javascript"><!--
    
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.txt-warp input[type=\'text\'], .txt-warp input[type=\'hidden\'], .txt-warp input[type=\'radio\']:checked, .txt-warp input[type=\'checkbox\']:checked, .txt-warp select, .txt-warp textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
                
                if (json['error']['profile']) {
                    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<?php echo $footer; ?>