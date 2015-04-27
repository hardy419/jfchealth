<?php 
class ControllerInformationContactUs extends Controller {
	public function index() {
        $this->load->language ('information/information');
        $this->load->model ('catalog/information');
        $information_id = 10;
        $information_info = $this->model_catalog_information->getInformation ($information_id);

		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
		$this->data['description'] = html_entity_decode ($information_info['description'], ENT_QUOTES, 'UTF-8');

        $this->document->addScript('catalog/view/theme/jfchealth/js/home.js');
        $this->document->addStyle('catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/contactus.css');
        $this->document->addStyle('catalog/view/theme/jfchealth/css/common.css');
        //$this->data['dir_image'] = DIR_TEMPLATE . $this->config->get('config_template') . '/images/';
        //$this->data['dir_pdf'] = DIR_PDF;
        $this->data['dir_image'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/';
        $this->data['dir_image_lang'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/'.$this->language->get('code').'/';
        $this->data['dir_pdf'] = 'pdf/';
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/contactus.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/contactus.tpl';
		} else {
			$this->template = 'default/template/information/contactus.tpl';
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