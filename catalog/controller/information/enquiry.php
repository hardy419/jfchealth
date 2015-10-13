<?php 
class ControllerInformationEnquiry extends Controller {
    private $msg = null;
    
	public function index() {
        $this->load->language ('information/information');

		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');

        $this->document->addScript('catalog/view/theme/jfchealth/js/home.js');
        $this->document->addStyle('catalog/view/theme/jfchealth/css/'.$this->language->get('code').'/enquiry.css');
        $this->document->addStyle('catalog/view/theme/jfchealth/css/common.css');
        //$this->data['dir_image'] = DIR_TEMPLATE . $this->config->get('config_template') . '/images/';
        //$this->data['dir_pdf'] = DIR_PDF;
        $this->data['dir_image'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/';
        $this->data['dir_image_lang'] = 'catalog/view/theme/'.$this->config->get('config_template').'/images/'.$this->language->get('code').'/';
        $this->data['dir_pdf'] = 'pdf/';
        
        $this->data['text_notice'] = $this->language->get('text_notice');
        $this->data['text_notice_required'] = $this->language->get('text_notice_required');
        $this->data['text_name'] = $this->language->get('text_name');
        $this->data['text_email'] = $this->language->get('text_email');
        $this->data['text_phone'] = $this->language->get('text_phone');
        $this->data['text_enquiry'] = $this->language->get('text_enquiry');
        $this->data['text_error_required'] = $this->language->get('text_error_required');
        if (null != $this->msg) {
            if (true === $this->msg) {
                $this->data['mail_msg'] = $this->language->get('text_sent_success');
            }
            else {
                $this->data['mail_msg'] = $this->language->get('text_sent_failed');
            }
        }

        if (isset($this->request->get['model'])) {
            $this->data['model'] = $this->request->get['model'];
        }
        else {
            $this->data['model'] = '';
        }
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/enquiry.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/enquiry.tpl';
		} else {
			$this->template = 'default/template/information/enquiry.tpl';
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
    public function formSubmit() {
        require('system/library/class.phpmailer.php');
        require('system/library/class.smtp.php');
        $name = $_POST['name'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $message = $_POST['message'];
        $subject = '[Feedback From JFC]';
        $body = $message.'<br/><br/>Name: '.$name.'<br/>Email: '.$email.'<br/>Phone: '.$phone;
        $this->msg = $this->postMail ($body, $subject, 'thomaslaw@mrnewbie.com', 'thomaslaw@mrnewbie.com');
        $this->index ();
    }
    public function postMail($body,$subject,$to,$name,$isHTML = true) {
        $mail = new PHPMailer;
        $mail->CharSet = 'UTF-8';
        $mail->IsSMTP ();
        $mail->SMTPDebug = 0;
        $mail->SMTPAuth = true;
        $mail->Host = 'mail.lifespring.com.hk';
        $mail->Port = '26';
        $mail->Username = 'system@lifespring.com.hk';
        $mail->Password = '2201sys##';
        mb_internal_encoding ('UTF-8');
        $mail->Subject = mb_encode_mimeheader ($subject, 'UTF-8');
        $mail->From = 'system@lifespring.com.hk';
        $mail->FromName = 'JFC';
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