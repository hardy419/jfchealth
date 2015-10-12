<?php  
class ControllerCommonHome extends Controller {
    private function getIntro($html) {
        $start = strpos ($html, '>', strpos ($html, 'index_content_txt'))+1;
        $end = strpos ($html, '<', $start);
        $i = 0;
        while($end-$start < 10 && $i<10) {
            $start = strpos ($html, '>', $end)+1;
            $end = strpos ($html, '<', $start);
            ++$i;
        }
        return substr($html, $start, $end-$start);
    }

	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');

		$this->load->model('catalog/product');

		$this->load->model('tool/image'); 

        $products = $this->model_catalog_product->getProductInfoList();
        $this->data['product_urls'] = array();
        $this->data['product_ids'] = array();
        $this->data['product_cids'] = array();
        $this->data['product_images'] = array();
        $this->data['product_names'] = array();
        $this->data['product_description'] = array();
        foreach ($products as $product) {
            $this->data['product_urls'][] = $this->url->link('product/product');
            $this->data['product_ids'][] = $product['product_id'];
            $this->data['product_cids'][] = $product['category_id'];
            $this->data['product_images'][] = DIR_IMAGE.$product['filename'];//$this->model_tool_image->resize($product['filename'], 260, 297);
            $this->data['product_names'][] = $product['name'];
            $this->data['product_description'][] = html_entity_decode($product['description'], ENT_QUOTES, 'UTF-8');
        }

        $this->data['main_settings'] = $this->model_catalog_product->getMainSettings();
        foreach ($this->data['main_settings'] as &$setting) {
            $setting['description'] = explode (';', html_entity_decode ($setting['description']));
            $setting['images'] = explode (',', $setting['description'][0]);
            $setting['links'] = explode (',', $setting['description'][1]);
        }
        $this->data['news_info'] = $this->model_catalog_product->getNewestNews();
        foreach ($this->data['news_info'] as &$news) {
            $news['description'] = $this->getIntro (html_entity_decode ($news['description']));
        }
        $this->data['course_info'] = $this->model_catalog_product->getNewestCourse();
        $this->data['user_article_info'] = $this->model_catalog_product->getNewestUserArticle();
        $this->data['video_info'] = $this->model_catalog_product->getNewestVideo();
        $this->data['magazine_info'] = $this->model_catalog_product->getMagazines();
        foreach ($this->data['magazine_info'] as &$magz) {
            $magz['image'] = DIR_IMAGE.$magz['image'];
        }

        $this->document->addScript('catalog/view/theme/jfchealth/js/home.js');
        $this->document->addStyle('catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/home.css');
        $this->document->addStyle('catalog/view/theme/jfchealth/css/common.css');
        //$this->data['dir_image'] = DIR_TEMPLATE . $this->config->get('config_template') . '/images/';
        //$this->data['dir_pdf'] = DIR_PDF;
        $this->data['dir_image'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/';
        $this->data['dir_image_lang'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/'.$this->language->get('code').'/';
        $this->data['dir_pdf'] = 'pdf/';
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		$this->children = array(
			//'common/column_left',
			//'common/column_right',
			//'common/content_top',
			//'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}
}
?>