<?php
class ControllerCatalogMainpageSetting extends Controller {
	private $error = array();  

	public function index() {
		$this->language->load('catalog/option');

		$this->document->setTitle('Main Page Settings'/*$this->language->get('heading_title')*/);

		$this->load->model('catalog/mainpage_setting');

		$this->getList();
	}

	public function update() {
		$this->language->load('catalog/option');

		$this->document->setTitle('Main Page Settings'/*$this->language->get('heading_title')*/);

		$this->load->model('catalog/mainpage_setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_mainpage_setting->editSetting($this->request->get['main_setting_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->redirect($this->url->link('catalog/mainpage_setting', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	protected function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'main_setting_id';
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

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => 'Main Page Settings', //$this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/mainpage_setting', 'token=' . $this->session->data['token'] . $url, 'SSL'),
			'separator' => ' :: '
		);

		$this->data['settings'] = array();

		$data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_admin_limit'),
			'limit' => $this->config->get('config_admin_limit')
		);

		$setting_total = $this->model_catalog_mainpage_setting->getTotalSettings();

		$results = $this->model_catalog_mainpage_setting->getSettings($data);

		foreach ($results as $result) {
			$action = array();

			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('catalog/mainpage_setting/update', 'token=' . $this->session->data['token'] . '&main_setting_id=' . $result['main_setting_id'] . $url, 'SSL')
			);

			$this->data['settings'][] = array(
				'main_setting_id'  => $result['main_setting_id'],
				'key'       => $result['key'],
				'value'     => $this->model_catalog_mainpage_setting->getCourseName($result['value']),
				'selected'   => isset($this->request->post['selected']) && in_array($result['main_setting_id'], $this->request->post['selected']),
				'action'     => $action
			);
		}

		$this->data['heading_title'] = 'Main Page Settings'; //$this->language->get('heading_title');

		$this->data['text_no_results'] = $this->language->get('text_no_results');

		$this->data['column_name'] = $this->language->get('column_name');
		$this->data['column_sort_order'] = $this->language->get('column_sort_order');
		$this->data['column_action'] = $this->language->get('column_action');	

		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$this->data['sort_name'] = $this->url->link('catalog/mainpage_setting', 'token=' . $this->session->data['token'] . '&sort=od.name' . $url, 'SSL');
		$this->data['sort_sort_order'] = $this->url->link('catalog/mainpage_setting', 'token=' . $this->session->data['token'] . '&sort=o.sort_order' . $url, 'SSL');

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $setting_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('catalog/mainpage_setting', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$this->data['pagination'] = $pagination->render();

		$this->data['sort'] = $sort;
		$this->data['order'] = $order;

		$this->template = 'catalog/mainpage_setting_list.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	protected function getForm() {
		$this->data['heading_title'] = 'Main Page Settings'; //$this->language->get('heading_title');

		$this->data['text_choose'] = $this->language->get('text_choose');
		$this->data['text_select'] = $this->language->get('text_select');
		$this->data['text_radio'] = $this->language->get('text_radio');
		$this->data['text_checkbox'] = $this->language->get('text_checkbox');
		$this->data['text_image'] = $this->language->get('text_image');
		$this->data['text_input'] = $this->language->get('text_input');
		$this->data['text_text'] = $this->language->get('text_text');
		$this->data['text_textarea'] = $this->language->get('text_textarea');
		$this->data['text_file'] = $this->language->get('text_file');
		$this->data['text_date'] = $this->language->get('text_date');
		$this->data['text_datetime'] = $this->language->get('text_datetime');
		$this->data['text_time'] = $this->language->get('text_time');
		$this->data['text_image_manager'] = $this->language->get('text_image_manager');
		$this->data['text_browse'] = $this->language->get('text_browse');
		$this->data['text_clear'] = $this->language->get('text_clear');	

		$this->data['entry_name'] = $this->language->get('entry_name');
		$this->data['entry_type'] = $this->language->get('entry_type');
		$this->data['entry_option_value'] = $this->language->get('entry_option_value');
		$this->data['entry_image'] = $this->language->get('entry_image');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_option_value'] = $this->language->get('button_add_option_value');
		$this->data['button_remove'] = $this->language->get('button_remove');

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		if (isset($this->error['name'])) {
			$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = array();
		}	

		if (isset($this->error['option_value'])) {
			$this->data['error_option_value'] = $this->error['option_value'];
		} else {
			$this->data['error_option_value'] = array();
		}	

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => 'Main Page Settings', //$this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/mainpage_setting', 'token=' . $this->session->data['token'] . $url, 'SSL'),
			'separator' => ' :: '
		);

		if (!isset($this->request->get['main_setting_id'])) {
			$this->data['action'] = $this->url->link('catalog/mainpage_setting/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else { 
			$this->data['action'] = $this->url->link('catalog/mainpage_setting/update', 'token=' . $this->session->data['token'] . '&main_setting_id=' . $this->request->get['main_setting_id'] . $url, 'SSL');
		}

		$this->data['cancel'] = $this->url->link('catalog/mainpage_setting', 'token=' . $this->session->data['token'] . $url, 'SSL');

		if (isset($this->request->get['main_setting_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$setting_info = $this->model_catalog_mainpage_setting->getSetting($this->request->get['main_setting_id']);
		}

		$this->data['token'] = $this->session->data['token'];

		if (isset($this->request->post['key'])) {
			$this->data['key'] = $this->request->post['key'];
		} elseif (!empty($setting_info)) {
			$this->data['key'] = $setting_info['key'];
		} else {
			$this->data['key'] = '';
		}

		if (isset($this->request->post['value'])) {
			$this->data['value'] = $this->request->post['value'];
		} elseif (!empty($setting_info)) {
			$this->data['value'] = $setting_info['value'];
		} else {
			$this->data['value'] = '';
		}

        $this->data['course_info'] = $this->model_catalog_mainpage_setting->getCourses ();

		$this->template = 'catalog/mainpage_setting_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'catalog/mainpage_setting')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}
?>