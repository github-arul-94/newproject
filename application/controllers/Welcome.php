<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		$this->load->view('welcome_message');
	}
    public function index1(){
        $this->load->helper('url');
        $this->load->view('user/index');
    }
}
