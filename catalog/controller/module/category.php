<?php  
class ControllerModuleCategory extends Controller {
	protected function index($setting) {
		$this->language->load('module/category');

		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['lang'] = $this->language->get('code');

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}
		
		if (isset($parts[0])) {
			$this->data['category_id'] = $parts[0];
		} else {
			$this->data['category_id'] = 0;
		}

		if (isset($parts[1])) {
			$this->data['child_id'] = $parts[1];
		} else {
			$this->data['child_id'] = 0;
		}

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');
		
		$this->load->model('catalog/support');

		$this->data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			// $total = $this->model_catalog_product->getTotalProducts(array('filter_category_id' => $category['category_id']));

			if($route=='product/support'){
				$total = $this->model_catalog_support->getTotalNetProduct(array('filter_category_id' => $category['category_id']));
			}else{
				$total = $this->model_catalog_product->getTotalProducts(array('filter_category_id' => $category['category_id']));
			}
			
			$children_data = array();

			$children = $this->model_catalog_category->getCategories($category['category_id']);

			foreach ($children as $child) {
				$data = array(
					'filter_category_id'  => $child['category_id'],
					'filter_sub_category' => true
				);

				$product_total = $this->model_catalog_product->getTotalProducts($data);

				$total += $product_total;

				$children_data[] = array(
					'category_id' => $child['category_id'],
					//'name'        => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
                    'name'        => $child['name'],
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
				);		
			}

			$this->data['categories'][] = array(
				'category_id' => $category['category_id'],
				//'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $total . ')' : ''),
                'name'        => $category['sort_order'],
				'children'    => $children_data,
				'href'        => $route=='product/support'?$this->url->link('product/support', 'path=' . $category['category_id']):$this->url->link('product/category', 'path=' . $category['category_id'])
			);	
		}

        $temp = $this->data['categories'][2];
        $this->data['categories'][2] = $this->data['categories'][3];
        $this->data['categories'][3] = $temp;

        $this->data['dir_image'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/';
        $this->data['dir_image_lang'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/'.$this->language->get('code').'/';
        
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/category.tpl';
		} else {
			$this->template = 'default/template/module/category.tpl';
		}

		$this->render();
	}
}
?>