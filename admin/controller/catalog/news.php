<?php
class ControllerCatalogNews extends Controller { 
	private $error = array();

	public function index() {
		$this->language->load('catalog/' . $this->request->get['n']);

		$this->document->setTitle($this->language->get('heading_title')); 

		$this->load->model('catalog/news');

		$this->getList();
	}

	public function insert() {
		$this->language->load('catalog/' . $this->request->get['n']);

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/news');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_news->addNews($this->request->post, $this->request->get['t']);

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

			$this->redirect($this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
//$this->response->setOutput(var_export($this->error,1));return;
		$this->getForm();
	}

	public function update() {
		$this->language->load('catalog/' . $this->request->get['n']);

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/news');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_news->editNews($this->request->get['news_id'], $this->request->post);

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

			$this->redirect($this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function delete() {
		$this->language->load('catalog/' . $this->request->get['n']);

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/news');

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $news_id) {
				$this->model_catalog_news->deleteNews($news_id);
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

			$this->redirect($this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}

	public function copy() {
		$this->language->load('catalog/' . $this->request->get['n']);

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/news');

		if (isset($this->request->post['selected']) && $this->validateCopy()) {
			foreach ($this->request->post['selected'] as $news_id) {
				$this->model_catalog_news->copyNews($news_id);
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

			$this->redirect($this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . $url, 'SSL'));
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
			'href'      => $this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . $url, 'SSL'),       		
			'separator' => ' :: '
		);

		$this->data['insert'] = $this->url->link('catalog/'.$this->request->get['n'].'/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$this->data['copy'] = $this->url->link('catalog/'.$this->request->get['n'].'/copy', 'token=' . $this->session->data['token'] . $url, 'SSL');	
		$this->data['delete'] = $this->url->link('catalog/'.$this->request->get['n'].'/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');

		$this->data['news'] = array();

		$data = array(
			'sort'            => $sort,
			'order'           => $order,
			'start'           => ($page - 1) * $this->config->get('config_admin_limit'),
			'limit'           => $this->config->get('config_admin_limit')
		);

        // Retrieving data
		$this->load->model('tool/image');

		$news_total = $this->model_catalog_news->getTotalNews($data, $this->request->get['t']);

		$results = $this->model_catalog_news->getNewsItems($data, $this->request->get['t']);

		foreach ($results as $result) {
			$action = array();

			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('catalog/'.$this->request->get['n'].'/update', 'token=' . $this->session->data['token'] . '&news_id=' . $result['news_id'] . $url, 'SSL')
			);

			if ($result['image'] && file_exists(DIR_IMAGE . $result['image'])) {
				$image = $this->model_tool_image->resize($result['image'], 40, 40);
			} else {
				$image = $this->model_tool_image->resize('no_image.jpg', 40, 40);
			}

            // Special cases
            if ('magazine' == $this->request->get['n']) {
                $result['title'] .= ' '.strip_tags (html_entity_decode ($result['description']));
            }

            // $informations = the showing list array
			$this->data['informations'][] = array(
				'news_id' => $result['news_id'],
				'title'       => $result['title'],
				'description' => strip_tags (html_entity_decode ($result['description'])),
				'time'      => $result['time'],
				'status'      => $result['status'],
				'selected'   => isset($this->request->post['selected']) && in_array($result['news_id'], $this->request->post['selected']),
				'action'     => $action
			);
		}

        // Assigning data
		$this->data['heading_title'] = $this->language->get('heading_title');		

		$this->data['text_enabled'] = $this->language->get('text_enabled');		
		$this->data['text_disabled'] = $this->language->get('text_disabled');		
		$this->data['text_no_results'] = $this->language->get('text_no_results');		
		$this->data['text_image_manager'] = $this->language->get('text_image_manager');		
		
		$this->data['column_title'] = $this->language->get('column_title');		
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

		$this->data['sort_title'] = $this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . '&sort=nd.title' . $url, 'SSL');
		$this->data['sort_time'] = $this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . '&sort=n.time' . $url, 'SSL');
		$this->data['sort_status'] = $this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . '&sort=n.status' . $url, 'SSL');

        // Build url for pagination
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $news_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$this->data['pagination'] = $pagination->render();

		$this->data['sort'] = $sort;
		$this->data['order'] = $order;

		$this->template = 'catalog/news_list.tpl';
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
		$this->data['entry_description'] = $this->language->get('entry_description');
		$this->data['entry_introduction'] = $this->language->get('entry_introduction');
		$this->data['entry_video_url'] = $this->language->get('entry_video_url');
		$this->data['entry_image'] = $this->language->get('entry_image');
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

		if (isset($this->request->get['news_id'])) {
			$this->data['id'] = $this->request->get['news_id'];
		}else{
			$this->data['id'] = file_get_contents(DIR_DOWNLOAD.'news/id');		
		}

        // Error messages
		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		if (isset($this->error['title'])) {
			$this->data['error_title'] = $this->error['title'];
		} else {
			$this->data['error_title'] = array();
		}

		if (isset($this->error['description'])) {
			$this->data['error_description'] = $this->error['description'];
		} else {
			$this->data['error_description'] = array();
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
			'href'      => $this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . $url, 'SSL'),
			'separator' => ' :: '
		);

        // Insert OR Update?
		if (!isset($this->request->get['news_id'])) {
			$this->data['action'] = $this->url->link('catalog/'.$this->request->get['n'].'/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$this->data['action'] = $this->url->link('catalog/'.$this->request->get['n'].'/update', 'token=' . $this->session->data['token'] . '&news_id=' . $this->request->get['news_id'] . $url, 'SSL');
		}

		$this->data['cancel'] = $this->url->link('catalog/'.$this->request->get['n'], 'token=' . $this->session->data['token'] . $url, 'SSL');

        // Retrieve data by id
		if (isset($this->request->get['news_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$news_info = $this->model_catalog_news->getNewsItem($this->request->get['news_id']);
		}
		$this->data['token'] = $this->session->data['token'];

		$this->load->model('localisation/language');

		$this->data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['news_description'])) {
			$this->data['news_description'] = $this->request->post['news_description'];
		} elseif (isset($this->request->get['news_id'])) {
			$this->data['news_description'] = $this->model_catalog_news->getNewsDescriptions($this->request->get['news_id']);
		} else {
			$this->data['news_description'] = array();
		}

        $data_columns = array('image', 'date_added', 'info', 'filename', 'sort_order', 'status', 'time');

        foreach ($data_columns as $data_column) {
            if (isset($this->request->post[$data_column])) {
                $this->data[$data_column] = $this->request->post[$data_column];
            } elseif (!empty($news_info)) {
                $this->data[$data_column] = $news_info[$data_column];
            } else {
                $this->data[$data_column] = '';
            }
        }

		$this->load->model('tool/image');

		if (isset($this->request->post['image']) && file_exists(DIR_IMAGE . $this->request->post['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
		} elseif (!empty($news_info) && $news_info['image'] && file_exists(DIR_IMAGE . $news_info['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($news_info['image'], 100, 100);
		} else {
			$this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}

		// Images
		if (isset($this->request->post['news_image'])) {
			$news_images = $this->request->post['news_image'];
		} elseif (isset($this->request->get['news_id'])) {
			$news_images = $this->model_catalog_news->getNewsImages($this->request->get['news_id']);
		} else {
			$news_images = array();
		}

		$this->data['news_images'] = array();

		foreach ($news_images as $news_image) {
			if ($news_image['image'] && file_exists(DIR_IMAGE . $news_image['image'])) {
				$image = $news_image['image'];
			} else {
				$image = 'no_image.jpg';
			}

			$this->data['news_images'][] = array(
				'image'      => $image,
				'thumb'      => $this->model_tool_image->resize($image, 100, 100),
				'sort_order' => $news_image['sort_order']
			);
		}

		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);

		$this->template = 'catalog/news_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'catalog/news')) {
			$this->error['warning'] = $this->language->get('error_permission');
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
		if (!$this->user->hasPermission('modify', 'catalog/news')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	protected function validateCopy() {
		if (!$this->user->hasPermission('modify', 'catalog/news')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	public function upload() {
		$this->language->load('sale/order');

		$json = array();

		if (!$this->user->hasPermission('modify', 'catalog/download')) {
			$json['error'] = $this->language->get('error_permission');
		}

		if (!isset($json['error'])) {
			if (!empty($this->request->files['file']['name'])) {
				$filename = basename(html_entity_decode($this->request->files['file']['name'], ENT_QUOTES, 'UTF-8'));

				if ((utf8_strlen($filename) < 3) || (utf8_strlen($filename) > 128)) {
					$json['error'] = $this->language->get('error_filename');
				}

				// Allowed file extension types
				$allowed = array();

				$filetypes = explode("\n", $this->config->get('config_file_extension_allowed'));

				foreach ($filetypes as $filetype) {
					$allowed[] = trim($filetype);
				}

				if (!in_array(substr(strrchr($filename, '.'), 1), $allowed)) {
					$json['error'] = $this->language->get('error_filetype');
				}

				// Allowed file mime types
				$allowed = array();

				$filetypes = explode("\n", $this->config->get('config_file_mime_allowed'));

				foreach ($filetypes as $filetype) {
					$allowed[] = trim($filetype);
				}

				if (!in_array($this->request->files['file']['type'], $allowed)) {
					$json['error'] = $this->language->get('error_filetype');
				}

				// Check to see if any PHP files are trying to be uploaded
				$content = file_get_contents($this->request->files['file']['tmp_name']);

				if (preg_match('/\<\?php/i', $content)) {
					$json['error'] = $this->language->get('error_filetype');
				}

				if ($this->request->files['file']['error'] != UPLOAD_ERR_OK) {
					$json['error'] = $this->language->get('error_upload_' . $this->request->files['file']['error']);
				}
			} else {
				$json['error'] = $this->language->get('error_upload');
			}
		}

		if (!isset($json['error'])) {
			if (is_uploaded_file($this->request->files['file']['tmp_name']) && file_exists($this->request->files['file']['tmp_name'])) {
				$ext = md5(mt_rand());

				$dir_a = $this->request->get['c'];
				
				$dir_p = $this->request->get['id'];

				if('' != $dir_p) {
                    $json['filename'] = 'image/data/'.$dir_a.'/'.$dir_p .'/'. $filename;
                }
                else {
                    $json['filename'] = 'image/data/'.$dir_a.'/'. $filename;
                }
				
				if(!file_exists(DIR_DOWNLOAD.$dir_a))
				{
					mkdir(DIR_DOWNLOAD.$dir_a);
					file_put_contents(DIR_DOWNLOAD.$dir_a.'/index.html','');
				}
				if(!file_exists(DIR_DOWNLOAD.$dir_a.'/'.$dir_p))
				{
					mkdir(DIR_DOWNLOAD.$dir_a.'/'.$dir_p);
					file_put_contents(DIR_DOWNLOAD.$dir_a.'/'.$dir_p.'/index.html','');
				}
				
				move_uploaded_file($this->request->files['file']['tmp_name'], DIR_DOWNLOAD.$dir_a.'/'.$dir_p .'/'. $filename);
			}

			$json['success'] = $this->language->get('text_upload');
		}

		$this->response->setOutput(json_encode($json));
	}
}
?>