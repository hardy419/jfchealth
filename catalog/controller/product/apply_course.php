<?php 
class ControllerProductApplyCourse extends Controller {
	public function index() {
		$this->language->load('product/course');

        $this->data['course_id'] = $this->request->get['cid'];

        $this->data['text_name'] = $this->language->get('text_name');
        $this->data['text_telephone'] = $this->language->get('text_telephone');
        $this->data['text_email'] = $this->language->get('text_email');
        $this->data['text_customername'] = $this->language->get('text_customername');
        $this->data['text_notice_required'] = $this->language->get('text_notice_required');
        $this->data['text_notice_message_sent'] = $this->language->get('text_notice_message_sent');

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

        if ($this->request->get['msg'] == 'success') {
            $this->data['text_notice_message_sent'] = $this->language->get('text_notice_message_sent');
        }
        else {
            $this->data['text_notice_message_sent'] = $this->language->get('text_notice_seats_unavailable');
        }

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

    public function formSubmit() {
/*
        require('system/library/class.phpmailer.php');
        require('system/library/class.smtp.php');
        $name = $_POST['name'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $message = $_POST['message'];
        $subject = 'Message From JFC User';
        $body = 'A customer ordered a position for course #'.$_POST['course_id'].'<br/><br/>Name: '.$name.'<br/>Email: '.$email.'<br/>Phone: '.$phone;
        $this->postMail ($body, $subject, '540115739@qq.com', '2757144278@qq.com');
*/
        $this->load->model ('catalog/course');
        $num_application = $this->model_catalog_course->getTotalCourseCustomer ($this->request->post['course_id']);
        $num_seats = $this->model_catalog_course->getCourseNumSeats ($this->request->post['course_id']);
        if ($num_application < $num_seats) {
            $data = array(
                'course_id' => $this->request->post['course_id'],
                'name'      => $this->request->post['name'],
                'phone'     => $this->request->post['phone'],
                'email'     => $this->request->post['email'],
                'member_name'      => $this->request->post['customername']
            );
            $this->model_catalog_course->addCourseCustomer($data);

            $ret = array(
              'msg' => 'success'
            );
        }
        else {
            $ret = array(
              'msg' => 'failed'
            );
        }
        echo json_encode ($ret);
    }

    public function postMail($body,$subject,$to,$name,$isHTML = true) {
        $mail = new PHPMailer;
        $mail->CharSet = 'UTF-8';
        $mail->IsSMTP ();
        $mail->SMTPDebug = 0;
        $mail->SMTPAuth = true;
        $mail->Host = 'smtp.qq.com';
        $mail->Port = '25';
        $mail->Username = '2757144278@qq.com';
        $mail->Password = '1q2w3e4r';
        mb_internal_encoding ('UTF-8');
        $mail->Subject = mb_encode_mimeheader ($subject, 'UTF-8');
        $mail->From = '2757144278@qq.com';
        
        if (!$isHTML) {
            $mail->isHTML (false);
            $mail->Body = $body;
        }
        else {
            $mail->AltBody = 'To view the message, please use an HTML compatible email viewer.';
            $mail->MsgHTML ($body);
        }
        
        $mail->AddAddress ($to, $name);
        
        return $mail->Send() ? true : $mail->ErrorInfo;
    }
}
?>