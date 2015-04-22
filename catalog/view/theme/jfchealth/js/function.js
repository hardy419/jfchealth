(function($){
	$(function(){
		//首页底部产品图片
		var w =$('.foot_p_d li').length*210;
		$('.foot_p_d ul').css('width',w +'px');
		$('.foot_p_d ul').css('left','0px');
		 $('.foot_p_r').click(function(){
		   if($('.foot_p_d li').length>1){
			ml = parseInt($('.foot_p_d ul').css('left'));
			if(ml<=0 && ml%210==0){
			 if(ml==(w -210)*-1){
			  return false;
			 }
			 $('.foot_p_d ul').animate({left: ml - 210 + 'px'},'slow');
			 
			}
		   }
		  })
		   $('.foot_p_l').click(function(){
		   if($('.foot_p_d li').length>1){
			ml = parseInt($('.foot_p_d ul').css('left'));
			if(ml<0 && ml%210==0){
			 $('.foot_p_d ul').animate({left: ml + 210 + 'px'},'slow');
			}
		   }
		  }) 
		
		//产品内页图片 start
		$("li[class='s-l']").bind({  
            click:function(){
				$(".big-img").stop();
				var s = $(this).find('img').attr("src2");
				$(".big-img").hide();
				$(".big-img").attr("src",s);
				$(".big-img-a").attr("href",s);
				$(".big-img").show();  
                $(".small-warp ul li").each(function(){
					$(this).find('img').removeClass("active");
				});
				$('.MagicZoomBigImageCont').find('img').attr("src",s);
            },  
            mouseleave:function(){
            }  
        })
		
		//产品图片滚动overlay
		$('#big_img').click(function (){
		
			$('#overlay').css('width',document.body.clientWidth+'px');
			$('#overlay').css('height',document.body.clientHeight+'px');
			$('#overlay2').css('width',document.body.clientWidth+'px');
			$('#overlay2').css('height',document.body.clientHeight+'px');
			$('#overlay').show();
			$('#overlay2').show();
			// $('.big_photo').css('left',document.body.clientWidth/3+'px');
			$('.big_photo').show();
			return false;
		})
		var w_=$('.big_img li').length*620;
		$('.big_img ul').css('width',w_ +'px');
		$('.big_img ul').css('left','0px');
		 $('#rbutton').click(function(){
		   if($('.big_img li').length>1){
			ml = parseInt($('.big_img ul').css('left'));
			if(ml<=0 && ml%620==0){
			 if(ml==(w_-620)*-1){
			  return false;
			 }
			 $('.big_img ul').animate({left: ml - 620 + 'px'},'slow');
			 
			}
		   }
		  })
		   $('#lbutton').click(function(){
		   if($('.big_img li').length>1){
			ml = parseInt($('.big_img ul').css('left'));
			if(ml<0 && ml%620==0){
			 $('.big_img ul').animate({left: ml + 620 + 'px'},'slow');
			}
		   }
		  }) 
		$('#cbutton').click(function (){
			$('#overlay').hide();
			$('.big_photo').hide();
			$('#overlay2').hide();
		})
	});
})(jQuery)