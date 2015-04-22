<?php  
class ControllerCommonBanner extends Controller {
	public function index() {
		$this->load->model('design/banner');
		//banner
		$this->data['banner'] = $this->model_design_banner->getBanner(9);
		
		$this->document->addScript('catalog/view/theme/dared/js/slider/jquery.bxslider.min.js');
		$this->document->addStyle('catalog/view/theme/dared/js/slider/jquery.bxslider.css');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/banner.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/banner.tpl';
		} else {
			$this->template = 'default/template/common/banner.tpl';
		}
										
		$this->response->setOutput($this->render());
	}
}
?>