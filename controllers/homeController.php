<?php

class homeController extends Controller
{
    public function __construct()
    {
        $this->validateSession();
        parent::__construct();
    }

    public function index()
    {
        $this->getMessages();

        $this->_view->assign('title','Home');
        $this->_view->assign('subject','Página de Inicio');
        $this->_view->render('index');
    }
}
