<?php 
class ControllerModuleShare extends Controller {
	public function index() {

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/share.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/share.tpl';
		} else {
			$this->template = 'default/template/module/share.tpl';
		}

		$this->response->setOutput($this->render());		
	}
}
?>