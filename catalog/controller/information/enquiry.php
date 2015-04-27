<?php 
class ControllerInformationEnquiry extends Controller {
    private $msg = null;
    
	public function index() {
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
        
        if (null != $this->msg) {
            if (true === $this->msg) {
                $this->data['mail_msg'] = 'Your message was sent successfully. Thank you!';
            }
            else {
                $this->data['mail_msg'] = 'Sorry! It seems to have a problem when sending message. Please try again!';
            }
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
        $subject = 'Message From JFC User';
        $body = $message.'<br/><br/>Name: '.$name.'<br/>Email: '.$email.'<br/>Phone: '.$phone;
        $this->msg = $this->postMail ($body, $subject, '540115739@qq.com', '2757144278@qq.com');
        $this->index ();
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