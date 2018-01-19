<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends Home_Controller {

    public function __construct() {
        parent::__construct();
//load models
        $this->load->model('UserModel', '', TRUE);
        
// load helpers
        $this->load->helper('form');
        $this->load->helper('file');
        $this->load->helper('url');
        $this->load->helper('download');

// load libraries
        $this->load->library('session');
    }
    public function accueil() {
        if (!$this->session->userdata('logged_in')) {
            redirect('login', 'refresh');
        } else {
            $dataLogin = $this->session->userdata('logged_in');
            $this->data['role'] = $dataLogin["role"];
            $this->load->view('accueil', $dataLogin);
        }
    }

    public function logout() {
        parent::logout();
    }

    public function connexion() {

        $this->load->view('connexion');
    }
}
