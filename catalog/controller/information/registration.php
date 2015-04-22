<?php 
class ControllerInformationRegistration extends Controller {
	private $error = array(); 
	
	public function index() {  
		$this->language->load('information/contact');

		$this->load->model('catalog/information');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');				
			$mail->setTo($this->config->get('config_email'));
	  		$mail->setFrom($this->request->post['Email']);
	  		$mail->setSender($this->request->post['Last_Name'].' '.$this->request->post['First_Name']);
	  		$mail->setSubject('Registration');
	  		$mail->setText(html_entity_decode('
			Last Name:'.$this->request->post['Last_Name'].'
			First Name:'.$this->request->post['First_Name'].'
			Email:'.$this->request->post['Email'].'
			Name of Dealer:'.$this->request->post['Name_of_Dealer_d'].'-'.$this->request->post['Name_of_Dealer_m'].'-'.$this->request->post['Name_of_Dealer_y'].'
			Purchase Price:'.$this->request->post['Purchase_Price'].'
			Date of Purchase:'.$this->request->post['Date_of_Purchase'].'
			Warranty Card Number:'.$this->request->post['Warranty_Card_Number'].'
			Model Number:'.$this->request->post['Model_Number'].'
			Serial Number:'.$this->request->post['Serial_Number'], ENT_QUOTES, 'UTF-8'));
      		$mail->send();

	  		// $this->redirect($this->url->link('information/contact/success'));
    	}
		
		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
			'separator' => false
		);

		if (isset($this->error['name'])) {
			$this->data['Last_Name'] = $this->error['name'];
		} else {
			$this->data['Last_Name'] = '';
		}
		
		if (isset($this->error['name1'])) {
			$this->data['First_Name'] = $this->error['name1'];
		} else {
			$this->data['First_Name'] = '';
		}
		
		if (isset($this->error['email'])) {
			$this->data['Email'] = $this->error['email'];
		} else {
			$this->data['Email'] = '';
		}
		
		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}
		
		$information_id=7;
		$information_info = $this->model_catalog_information->getInformation($information_id);
		if ($information_info) {
			$this->document->setTitle($information_info['title']);

			$this->data['breadcrumbs'][] = array(
				'text'      => $information_info['title'],
				'href'      => $this->url->link('information/registration', 'information_id=' .  $information_id),      		
				'separator' => $this->language->get('text_separator')
			);

			$this->data['heading_title'] = $information_info['title'];

			$this->data['button_continue'] = $this->language->get('button_continue');

			$this->data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

			$this->data['continue'] = $this->url->link('common/home');

			$this->data['action'] = $this->url->link('information/registration');
			
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/registration.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/information/registration.tpl';
			} else {
				$this->template = 'default/template/information/registration.tpl';
			}

			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'
			);

			$this->response->setOutput($this->render());
		} else {
			$this->data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_error'),
				'href'      => $this->url->link('information/registration', 'information_id=' . $information_id),
				'separator' => $this->language->get('text_separator')
			);

			$this->document->setTitle($this->language->get('text_error'));

			$this->data['heading_title'] = $this->language->get('text_error');

			$this->data['text_error'] = $this->language->get('text_error');

			$this->data['button_continue'] = $this->language->get('button_continue');

			$this->data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . '/1.1 404 Not Found');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/error/not_found.tpl';
			} else {
				$this->template = 'default/template/error/not_found.tpl';
			}

			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'
			);

			$this->response->setOutput($this->render());
		}
	}
	
	  	protected function validate() {
    	if ((utf8_strlen($this->request->post['Last_Name']) < 3) || (utf8_strlen($this->request->post['Last_Name']) > 32)) {
      		$this->error['name'] = $this->language->get('error_name');
    	}
		
    	if ((utf8_strlen($this->request->post['First_Name']) < 3) || (utf8_strlen($this->request->post['First_Name']) > 32)) {
      		$this->error['name1'] = $this->language->get('error_name');
    	}

    	if (!preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['Email'])) {
      		$this->error['email'] = $this->language->get('error_email');
    	}
		if (!$this->error) {
	  		return true;
		} else {
	  		return false;
		}  	  
  	}
}
?>