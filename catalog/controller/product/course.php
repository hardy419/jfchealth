<?php 
class ControllerProductCourse extends Controller {
	public function index() {
		$this->language->load('product/course');

		$this->load->model('catalog/course');

		$this->load->model('tool/image'); 

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'c.sort_order';
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

		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = 3;
		}

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
			'separator' => false
		);

        $this->document->setTitle($this->config->get('config_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));
        $this->document->addScript('catalog/view/javascript/jquery/jquery.total-storage.min.js');

        $this->data['heading_title'] = $this->config->get('config_title');

        $this->data['text_points'] = $this->language->get('text_points');
        $this->data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
        $this->data['text_display'] = $this->language->get('text_display');
        $this->data['text_list'] = $this->language->get('text_list');
        $this->data['text_grid'] = $this->language->get('text_grid');
        $this->data['text_sort'] = $this->language->get('text_sort');
        $this->data['text_limit'] = $this->language->get('text_limit');

        $this->data['text_date'] = $this->language->get('text_date');
        $this->data['text_time'] = $this->language->get('text_time');
        $this->data['text_location'] = $this->language->get('text_location');
        $this->data['text_num_seats'] = $this->language->get('text_num_seats');
        $this->data['text_speaker'] = $this->language->get('text_speaker');
        $this->data['text_phone'] = $this->language->get('text_phone');

        $this->data['button_cart'] = $this->language->get('button_cart');
        $this->data['button_wishlist'] = $this->language->get('button_wishlist');
        $this->data['button_compare'] = $this->language->get('button_compare');
        $this->data['button_continue'] = $this->language->get('button_continue');

        $url = '';

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }	

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }	

        if (isset($this->request->get['limit'])) {
            $url .= '&limit=' . $this->request->get['limit'];
        }

        $this->data['courses'] = array();

        $data = array(
            'sort'               => $sort,
            'order'              => $order,
            'start'              => ($page - 1) * $limit,
            'limit'              => $limit
        );

        $course_total = $this->model_catalog_course->getTotalCourses($data); 

        $results = $this->model_catalog_course->getCourses($data);	

        foreach ($results as $result) {
            /*if ($result['image']) {
                $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_course_width'), $this->config->get('config_image_course_height'));
            } else {
                $image = false;
            }*/
            
            $this->data['courses'][] = array(
                'course_id'  => $result['course_id'],
                'image'       => DIR_IMAGE.$result['image'],
                'name'        => $result['name'],
                'date'        => $result['date'],
                'course_date'        => $result['course_date'],
                'time_period'        => $result['time_period'],
                'location'        => $result['location'],
                'seats'        => $result['seats'],
                'speaker'        => $result['speaker'],
                'phone'        => $result['phone'],
                'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'] . $url)
            );
        }

        $url = '';

        if (isset($this->request->get['sort'])) {
            $url .= '&sort=' . $this->request->get['sort'];
        }	

        if (isset($this->request->get['order'])) {
            $url .= '&order=' . $this->request->get['order'];
        }

        if (isset($this->request->get['limit'])) {
            $url .= '&limit=' . $this->request->get['limit'];
        }

        $pagination = new Pagination();
        $pagination->total = $course_total;
        $pagination->page = $page;
        $pagination->limit = $limit;
        $pagination->text = $this->language->get('text_pagination');
        $pagination->url = $this->url->link('product/course', 'page={page}' . $url);

        $this->data['pagination'] = $pagination->render();

        $this->data['sort'] = $sort;
        $this->data['order'] = $order;
        $this->data['limit'] = $limit;

        $this->data['continue'] = $this->url->link('common/home');

        $this->document->addScript('catalog/view/theme/jfchealth/js/home.js');
        $this->document->addStyle('catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/course.css');
        $this->document->addStyle('catalog/view/theme/jfchealth/css/common.css');
        //$this->data['dir_image'] = DIR_TEMPLATE . $this->config->get('config_template') . '/images/';
        //$this->data['dir_pdf'] = DIR_PDF;
        $this->data['dir_image'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/';
        $this->data['dir_image_lang'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/'.$this->language->get('code').'/';
        $this->data['dir_pdf'] = 'pdf/';
        
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/course.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/product/course.tpl';
        } else {
            $this->template = 'default/template/product/course.tpl';
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