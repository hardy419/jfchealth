<?php
class ControllerModuleLatest extends Controller {
	protected function index($setting) {
		$this->language->load('product/category');
		
		$this->language->load('module/latest');
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->data['txt_category_t'] = $this->language->get('txt_category_t');
		
		$this->data['txt_show_page'] = $this->language->get('txt_show_page');
		
		$this->data['txt_add_cart'] = $this->language->get('txt_add_cart');

		$this->load->model('catalog/category');
				
		$this->load->model('catalog/product');
		
		$this->load->model('catalog/information');
		
		$this->load->model('tool/image');
		
		$this->data['url_about']=$this->url->link('information/about');
		
		$this->data['url_news']=$this->url->link('information/news');
		
		$data = array(
		   'start'  =>0,
		   'limit'  =>2
		);
		
		foreach($this->model_catalog_information->getNews($data) as $news)
		{
			$news_image=$this->model_catalog_information->getNewsImage($news['news_id']);
			foreach ($news_image as $result) {
				$news['images'][] = array(
					'thumb' => $this->model_tool_image->resize($result['image'], 136, 84)
				);
			}
			
			if(empty($news_image))
			{
				$news['images'][] = array(
						'thumb' => $this->model_tool_image->resize('no_image.jpg', 136, 84)
					);
				}
			$this->data['list'][]=$news;
		}
		
		if (isset($this->request->get['filter'])) {
			$filter = $this->request->get['filter'];
		} else {
			$filter = '';
		}

		if (isset($this->request->get['path'])) {
			$sort = $this->request->get['path'];
		} else {
			$sort = '0';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}	

		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_catalog_limit');
		}

		if (isset($this->request->get['path'])) {
			$category_id = $this->request->get['path'];
		} else {
			$category_id = '';
		}		
		
		$this->data['products'] = array();
		
		$data = array(
			'filter_category_id' => $category_id,
			'filter_filter'      => $filter, 
			'sort'               => $sort,
			'order'              => $order,
			'start'              => 0,
			'limit'              => 10
		);
		
		//original
		/*$data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']
		);*/

		$product_total = $this->model_catalog_product->getTotalProducts($data); 

		$results = $this->model_catalog_product->getProducts($data);

		foreach ($results as $result) {			
			
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], 180, 115);
			} else {
				$image = false;
			}
						
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
					
			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
			
			$this->data['products'][] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => utf8_substr($result['name'],0,40),
				'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
			);
		}

		$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$this->data['sorts'] = array();
			
			//get product category
			$field = 'category_id,name';
			$lang = $this->language->get('code') == 'en' ? '1' : '2';
			
			$this->data['category_name'] = $this->model_catalog_category->getCategories_ALL($field,$lang);
			
			$this->data['sorts'][] = array(
				'text' => $this->language->get('txt_option'),
				'value' => '',
				'href'  => $this->url->link('common/home', $url)
			);
			
			foreach($this->data['category_name'] as $v){				
				$this->data['sorts'][] = array(
					'text'  => $v['name'],
					'value' => $v['category_id'],
					'href'  => $this->url->link('common/home', 'path=' . $v['category_id'] . $url)
				);
			}
			//get product category end

			$url = '';

			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$this->data['limits'] = array();

			$limits = array_unique(array($this->config->get('config_catalog_limit'), 25, 50, 75, 100));

			sort($limits);

			foreach($limits as $value){
				$this->data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('common/home', $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $category_id;
			}	

			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->text = $this->language->get('text_pagination');
			$pagination->url = $this->url->link('common/home', $url . '&page={page}');

			$this->data['pagination'] = $pagination->render();

			$this->data['sort'] = $sort;
			$this->data['order'] = $order;
			$this->data['limit'] = $limit;
		
		$this->children = array(
			'common/banner'
		);

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/latest.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/latest.tpl';
		} else {
			$this->template = 'default/template/module/latest.tpl';
		}

		$this->render();
	}
}
?>