
	  <ul class="bxslider">
		<?php foreach($banner as $v){ ?>
			<li><img src="./image/<?php echo $v['image']; ?>" /></li>
		<?php } ?>
	  </ul>
		<script>
		$(document).ready(function(){
		  $('.bxslider').bxSlider({
			auto: true,
			controls: false
		  });
		});
		</script>

