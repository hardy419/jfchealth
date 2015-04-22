<?php
class ControllerModuleNicestSeller extends Controller {
	protected function index($setting) {

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$this->load->model('tool/image'); 
		
		$this->data['lang'] = $this->language->get('code');
		
		$category_id = 69;
		
		$filter = '';
		$sort   = 'p.sort_order';
		$order  = 'ASC';
		$start  = '0';
		$limit  = '5';
		
		//²éÑ¯Ìõ¼þ
		$data = array(
			'filter_category_id' => $category_id,
			'filter_filter'      => $filter, 
			'sort'               => $sort,
			'order'              => $order,
			'start'              => $start,
			'limit'              => $limit
		);
		
		$results = $this->model_catalog_product->getProducts($data);
		foreach ($results as $product_id) {
		
			if ($product_id) {
				if ($product_id['image']) {
					$image = $this->model_tool_image->resize($product_id['image'], 80, 80);
				} else {
					$image = false;
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_id['price'], $product_id['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
						
				if ((float)$product_id['special']) {
					$special = $this->currency->format($this->tax->calculate($product_id['special'], $product_id['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
				
				if ($this->config->get('config_review_status')) {
					$rating = $product_id['rating'];
				} else {
					$rating = false;
				}
					
				$this->data['products'][] = array(
					'product_id' => $product_id['product_id'],
					'thumb'   	 => $image,
					'name'    	 => $product_id['name'],
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$product_id['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $product_id['product_id'])
				);
			}
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/nicestseller.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/nicestseller.tpl';
		} else {
			$this->template = 'default/template/module/nicestseller.tpl';
		}

		$this->render();
	}
}
?>