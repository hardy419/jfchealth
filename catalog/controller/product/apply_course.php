<?php 
class ControllerProductApplyCourse extends Controller {
	public function index() {
		$this->language->load('product/course');

        $this->data['course_id'] = $this->request->get['cid'];

        $this->data['css_ref'] = array();
        $this->data['css_ref'][] = 'catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/apply_course.css';
        $this->data['css_ref'][] = 'catalog/view/theme/jfchealth/css/common.css';

        $this->data['dir_image'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/';
        $this->data['dir_image_lang'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/'.$this->language->get('code').'/';
        $this->data['dir_pdf'] = 'pdf/';
        
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/apply_course.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/product/apply_course.tpl';
        } else {
            $this->template = 'default/template/product/apply_course.tpl';
        }
        
        $this->children = array(
            //'common/column_left',
            //'common/column_right',
            //'common/content_top',
            //'common/content_bottom',
            //'common/footer',
            //'common/header'
        );
                                        
        $this->response->setOutput($this->render());
	}

	public function info() {
		$this->language->load('product/course');

        $this->data['css_ref'] = array();
        $this->data['css_ref'][] = 'catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/apply_course.css';
        $this->data['css_ref'][] = 'catalog/view/theme/jfchealth/css/common.css';

        $this->data['dir_image'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/';
        $this->data['dir_image_lang'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/'.$this->language->get('code').'/';
        $this->data['dir_pdf'] = 'pdf/';
        
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/apply_info.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/product/apply_info.tpl';
        } else {
            $this->template = 'default/template/product/apply_info.tpl';
        }
        
        $this->children = array(
            //'common/column_left',
            //'common/column_right',
            //'common/content_top',
            //'common/content_bottom',
            //'common/footer',
            //'common/header'
        );
                                        
        $this->response->setOutput($this->render());
	}

    public function formSubmit()
    {
        echo 'Name : '.$_POST['name'];
    }
}
?>