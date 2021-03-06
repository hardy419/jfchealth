<?php
class ControllerCatalogCourse extends Controller { 
	private $error = array();

	public function index() {
		$this->language->load('catalog/course');

		$this->document->setTitle($this->language->get('heading_title')); 

		$this->load->model('catalog/course');

		$this->getList();
	}

	public function insert() {
		$this->language->load('catalog/course');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/course');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_course->addCourse($this->request->post);

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

			$this->redirect($this->url->link('catalog/course', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
//$this->response->setOutput(var_export($this->error,1));return;
		$this->getForm();
	}

	public function update() {
		$this->language->load('catalog/course');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/course');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_course->editCourse($this->request->get['course_id'], $this->request->post);

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

			$this->redirect($this->url->link('catalog/course', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function delete() {
		$this->language->load('catalog/course');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/course');

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $course_id) {
				$this->model_catalog_course->deleteCourse($course_id);
			}

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

			$this->redirect($this->url->link('catalog/course', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}

	public function copy() {
		$this->language->load('catalog/course');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/course');

		if (isset($this->request->post['selected']) && $this->validateCopy()) {
			foreach ($this->request->post['selected'] as $course_id) {
				$this->model_catalog_course->copyCourse($course_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['filter_name'])) {
				$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
			}

			if (isset($this->request->get['filter_model'])) {
				$url .= '&filter_model=' . urlencode(html_entity_decode($this->request->get['filter_model'], ENT_QUOTES, 'UTF-8'));
			}

			if (isset($this->request->get['filter_price'])) {
				$url .= '&filter_price=' . $this->request->get['filter_price'];
			}

			if (isset($this->request->get['filter_quantity'])) {
				$url .= '&filter_quantity=' . $this->request->get['filter_quantity'];
			}	

			if (isset($this->request->get['filter_status'])) {
				$url .= '&filter_status=' . $this->request->get['filter_status'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->redirect($this->url->link('catalog/course', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}

	protected function getList() {
        // build url with sort, order, page
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'n.time';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'DESC';
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

        // Breadcrumbs
		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('catalog/category', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/course', 'token=' . $this->session->data['token'] . $url, 'SSL'),       		
			'separator' => ' :: '
		);

		$this->data['insert'] = $this->url->link('catalog/course/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$this->data['copy'] = $this->url->link('catalog/course/copy', 'token=' . $this->session->data['token'] . $url, 'SSL');	
		$this->data['delete'] = $this->url->link('catalog/course/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');

		$this->data['course'] = array();

		$data = array(
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $this->config->get('config_admin_limit'),
			'limit'           => $this->config->get('config_admin_limit')
		);

        // Retrieving data
		$this->load->model('tool/image');

		$course_total = $this->model_catalog_course->getTotalCourse($data);

		$results = $this->model_catalog_course->getCourses($data);

		foreach ($results as $result) {
			$action = array();

			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('catalog/course/update', 'token=' . $this->session->data['token'] . '&course_id=' . $result['course_id'] . $url, 'SSL')
			);

			$action[] = array(
				'text' => 'Customers',
				'href' => $this->url->link('catalog/course_customer', 'cid=' . $result['course_id'] . '&token=' . $this->session->data['token'] . '&course_id=' . $result['course_id'] . $url, 'SSL')
			);

			if ($result['image'] && file_exists(DIR_IMAGE . $result['image'])) {
				$image = $this->model_tool_image->resize($result['image'], 40, 40);
			} else {
				$image = $this->model_tool_image->resize('no_image.jpg', 40, 40);
			}

			$this->data['informations'][] = array(
				'course_id'  => $result['course_id'],
				'name'       => $result['name'],
				'time'       => $result['time'],
				'status'     => $result['status'],
				'selected'   => isset($this->request->post['selected']) && in_array($result['course_id'], $this->request->post['selected']),
				'action'     => $action
			);
		}

        // Assigning data
		$this->data['heading_title'] = $this->language->get('heading_title');		

		$this->data['text_enabled'] = $this->language->get('text_enabled');		
		$this->data['text_disabled'] = $this->language->get('text_disabled');		
		$this->data['text_no_results'] = $this->language->get('text_no_results');		
		$this->data['text_image_manager'] = $this->language->get('text_image_manager');		
		
		$this->data['column_name'] = $this->language->get('column_name');		
		$this->data['column_time'] = $this->language->get('column_time');		
		$this->data['column_status'] = $this->language->get('column_status');		
		$this->data['column_action'] = $this->language->get('column_action');		

		$this->data['button_copy'] = $this->language->get('button_copy');		
		$this->data['button_insert'] = $this->language->get('button_insert');		
		$this->data['button_delete'] = $this->language->get('button_delete');		
		$this->data['button_filter'] = $this->language->get('button_filter');

		$this->data['token'] = $this->session->data['token'];

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

        // Build url with sorts
		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$this->data['sort_name'] = $this->url->link('catalog/course', 'token=' . $this->session->data['token'] . '&sort=cd.name' . $url, 'SSL');
		$this->data['sort_time'] = $this->url->link('catalog/course', 'token=' . $this->session->data['token'] . '&sort=c.time' . $url, 'SSL');
		$this->data['sort_status'] = $this->url->link('catalog/course', 'token=' . $this->session->data['token'] . '&sort=c.status' . $url, 'SSL');

        // Build url for pagination
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $course_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('catalog/course', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$this->data['pagination'] = $pagination->render();

		$this->data['sort'] = $sort;
		$this->data['order'] = $order;

		$this->template = 'catalog/course_list.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
        //$this->response->setOutput(var_export($results,1));
	}

	protected function getForm() {
        // Texts
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_default'] = $this->language->get('text_default');
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_none'] = $this->language->get('text_none');
		$this->data['text_yes'] = $this->language->get('text_yes');
		$this->data['text_no'] = $this->language->get('text_no');
		$this->data['text_plus'] = $this->language->get('text_plus');
		$this->data['text_minus'] = $this->language->get('text_minus');
		$this->data['text_default'] = $this->language->get('text_default');
		$this->data['text_image_manager'] = $this->language->get('text_image_manager');
		$this->data['text_browse'] = $this->language->get('text_browse');
		$this->data['text_clear'] = $this->language->get('text_clear');
		$this->data['text_option'] = $this->language->get('text_option');
		$this->data['text_option_value'] = $this->language->get('text_option_value');
		$this->data['text_select'] = $this->language->get('text_select');
		$this->data['text_none'] = $this->language->get('text_none');
		$this->data['text_percent'] = $this->language->get('text_percent');
		$this->data['text_amount'] = $this->language->get('text_amount');

		$this->data['entry_name'] = $this->language->get('entry_name');
		$this->data['entry_course_date'] = $this->language->get('entry_course_date');
		$this->data['entry_location'] = $this->language->get('entry_location');
		$this->data['entry_speaker'] = $this->language->get('entry_speaker');
		$this->data['entry_image'] = $this->language->get('entry_image');
		$this->data['entry_time_period'] = $this->language->get('entry_time_period');
		$this->data['entry_seats'] = $this->language->get('entry_seats');
		$this->data['entry_phone'] = $this->language->get('entry_phone');
		$this->data['entry_filename'] = $this->language->get('entry_filename');
		$this->data['entry_store'] = $this->language->get('entry_store');
		$this->data['entry_keyword'] = $this->language->get('entry_keyword');
		$this->data['entry_bottom'] = $this->language->get('entry_bottom');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_layout'] = $this->language->get('entry_layout');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_image'] = $this->language->get('button_add_image');
		$this->data['button_remove'] = $this->language->get('button_remove');
		$this->data['button_upload'] = $this->language->get('button_upload');

		$this->data['tab_general'] = $this->language->get('tab_general');
		$this->data['tab_data'] = $this->language->get('tab_data');
		$this->data['tab_links'] = $this->language->get('tab_links');
		$this->data['tab_image'] = $this->language->get('tab_image');

		if (isset($this->request->get['course_id'])) {
			$this->data['id'] = $this->request->get['course_id'];
		}else{
			$this->data['id'] = file_get_contents(DIR_DOWNLOAD.'course/id');		
		}

        // Error messages
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

		if (isset($this->error['course_date'])) {
			$this->data['error_course_date'] = $this->error['course_date'];
		} else {
			$this->data['error_course_date'] = array();
		}	

		if (isset($this->error['time'])) {
			$this->data['error_time'] = $this->error['time'];
		} else {
			$this->data['error_time'] = '';
		}	

        // Build basic sort, order, page urls
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
		

        // Breadcrumbs
		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('catalog/category', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/course', 'token=' . $this->session->data['token'] . $url, 'SSL'),
			'separator' => ' :: '
		);

        // Insert OR Update?
		if (!isset($this->request->get['course_id'])) {
			$this->data['action'] = $this->url->link('catalog/course/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$this->data['action'] = $this->url->link('catalog/course/update', 'token=' . $this->session->data['token'] . '&course_id=' . $this->request->get['course_id'] . $url, 'SSL');
		}

		$this->data['cancel'] = $this->url->link('catalog/course', 'token=' . $this->session->data['token'] . $url, 'SSL');

        // Retrieve data by id
		if (isset($this->request->get['course_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$course_info = $this->model_catalog_course->getCourse($this->request->get['course_id']);
		}
		$this->data['token'] = $this->session->data['token'];

		$this->load->model('localisation/language');

		$this->data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['course_description'])) {
			$this->data['course_description'] = $this->request->post['course_description'];
		} elseif (isset($this->request->get['course_id'])) {
			$this->data['course_description'] = $this->model_catalog_course->getCourseDescriptions($this->request->get['course_id']);
		} else {
			$this->data['course_description'] = array();
		}

        $data_columns = array('image', 'date', 'time_period', 'seats', 'phone', 'sort_order', 'status', 'time');

        foreach ($data_columns as $data_column) {
            if (isset($this->request->post[$data_column])) {
                $this->data[$data_column] = $this->request->post[$data_column];
            } elseif (!empty($course_info)) {
                $this->data[$data_column] = $course_info[$data_column];
            } else {
                $this->data[$data_column] = '';
            }
        }

		$this->load->model('tool/image');

		if (isset($this->request->post['image']) && file_exists(DIR_IMAGE . $this->request->post['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
		} elseif (!empty($course_info) && $course_info['image'] && file_exists(DIR_IMAGE . $course_info['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($course_info['image'], 100, 100);
		} else {
			$this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}

		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);

		$this->template = 'catalog/course_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'catalog/course')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		foreach ($this->request->post['course_description'] as $language_id => $value) {
			if ((utf8_strlen($value['name']) < 1) || (utf8_strlen($value['name']) > 255)) {
				$this->error['name'][$language_id] = $this->language->get('error_name');
			}
		}

		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'catalog/course')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	protected function validateCopy() {
		if (!$this->user->hasPermission('modify', 'catalog/course')) {
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