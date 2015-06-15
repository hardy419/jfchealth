<?php 
class ControllerProductNews extends Controller {
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
		$this->language->load('product/' . $this->request->get['n']);

		$this->load->model('catalog/news');

		$this->load->model('tool/image'); 

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = ($this->request->get['t']== 5)? 'n.sort_order' : 'n.date_added';
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
			$limit = ($this->request->get['t']== 3 || $this->request->get['t']== 5)? 6 : 3;
		}

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

        $this->data['news'] = array();

        $data = array(
            'sort'               => $sort,
            'order'              => $order,
            'start'              => ($page - 1) * $limit,
            'limit'              => $limit
        );

        $news_total = $this->model_catalog_news->getTotalNews($data, $this->request->get['t']); 

        $results = $this->model_catalog_news->getNews($data, $this->request->get['t']);	

        foreach ($results as $result) {
            /*if ($result['image']) {
                $image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_course_width'), $this->config->get('config_image_course_height'));
            } else {
                $image = false;
            }*/
            
            $this->data['news'][] = array(
                'news_id'  => $result['news_id'],
                'image'       => DIR_IMAGE.$result['image'],
                'filename'        => $result['filename'],
                'title'        => $result['title'],
                'date_added'        => $result['date_added'],
                'info'        => $result['info'],
                'intro'       => $this->getIntro(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')),
                'infod'       => $result['infod'],
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
        $pagination->total = $news_total;
        $pagination->page = $page;
        $pagination->limit = $limit;
        $pagination->text = $this->language->get('text_pagination');
        $pagination->url = $this->url->link('product/'.$this->request->get['n'], 'page={page}' . $url);

        $this->data['pagination'] = $pagination->render();

        $this->data['sort'] = $sort;
        $this->data['order'] = $order;
        $this->data['limit'] = $limit;

        $this->data['continue'] = $this->url->link('common/home');

        $this->document->addScript('catalog/view/theme/jfchealth/js/home.js');
        if($this->request->get['t'] == 1) {
            $this->document->addStyle('catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/news.css');
        }
        else if($this->request->get['t'] >=2 && $this->request->get['t'] <= 4) {
            $this->document->addStyle('catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/article.css');
        }
        else {
            $this->document->addStyle('catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/magazine.css');
        }
        $this->document->addStyle('catalog/view/theme/jfchealth/css/common.css');
        //$this->data['dir_image'] = DIR_TEMPLATE . $this->config->get('config_template') . '/images/';
        //$this->data['dir_pdf'] = DIR_PDF;
        $this->data['dir_image'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/';
        $this->data['dir_image_lang'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/'.$this->language->get('code').'/';
        $this->data['dir_pdf'] = 'pdf/';
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/'.$this->request->get['n'].'.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/product/'.$this->request->get['n'].'.tpl';
		} else {
			$this->template = 'default/template/product/'.$this->request->get['n'].'.tpl';
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
	public function detail() {
		$this->language->load('product/'. $this->request->get['n']);

		$this->load->model('catalog/news');

		$this->load->model('tool/image'); 

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

        $this->data['button_cart'] = $this->language->get('button_cart');
        $this->data['button_wishlist'] = $this->language->get('button_wishlist');
        $this->data['button_compare'] = $this->language->get('button_compare');
        $this->data['button_continue'] = $this->language->get('button_continue');

        $news_info = $this->model_catalog_news->getNewsItem($this->request->get['nid']);	

        $this->data['date_added'] = $news_info['date_added'];
        $this->data['image'] = DIR_IMAGE.$news_info['image'];
        $this->data['type'] = $news_info['type'];
        $this->data['info'] = explode('|', $news_info['info']);
        $this->data['filename'] = $news_info['filename'];
        $this->data['title'] = $news_info['title'];
        $this->data['description'] = html_entity_decode($news_info['description'], ENT_QUOTES, 'UTF-8');
        $this->data['infod'] = explode('|', $news_info['infod']);

        $this->document->addScript('catalog/view/theme/jfchealth/js/home.js');
        if($this->request->get['t'] == 1) {
            $this->document->addStyle('catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/news.css');
        }
        else if($this->request->get['t'] >=2 && $this->request->get['t'] <= 4) {
            $this->document->addStyle('catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/article.css');
        }
        $this->document->addStyle('catalog/view/theme/jfchealth/css/common.css');
        //$this->data['dir_image'] = DIR_TEMPLATE . $this->config->get('config_template') . '/images/';
        //$this->data['dir_pdf'] = DIR_PDF;
        $this->data['dir_image'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/';
        $this->data['dir_image_lang'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/'.$this->language->get('code').'/';
        $this->data['dir_pdf'] = 'pdf/';
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/'.$this->request->get['n'].'_detail.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/product/'.$this->request->get['n'].'_detail.tpl';
		} else {
			$this->template = 'default/template/product/'.$this->request->get['n'].'_detail.tpl';
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