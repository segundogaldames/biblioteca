<?php
use models\Telefono;

class telefonosController extends Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function add($model_id = null, $model_type = null)
    {
        $this->validateSession();
        $this->getMessages();

        if ($model_type == 'user') {
            $route = 'users/show/' . $model_id;
            Validate::validateModel(User::class, $model_id, 'users/show/' . $model_id);
        }elseif ($model_type == 'suscriptor') {
            $route = 'suscriptores/show/' . $model_id;
            Validate::validateModel(Suscriptor::class, $model_id, 'suscriptores/show/' . $model_id);
        }else{
            $this->redirect('home');
        }

        $this->_view->assign('title','Telefonos');
        $this->_view->assign('subject', 'Nuevo Teléfono');
        $this->_view->assign('button','Guardar');
        $this->_view->assign('back', $route);
        $this->_view->assign('process','telefonos/store');
        $this->_view->assign('role', Session::get('data'));
        $this->_view->assign('send', $this->encrypt($this->getForm()));

        $this->_view->render('add');

    }

    public function store($model_id, $model_type)
    {
        if ($model_type == 'user') {
            $route = 'users/show/' . $model_id;
        }elseif ($model_type == 'suscriptor') {
            $route = 'suscriptores/show/' . $model_id;
        }

        $this->validateForm("telefonos/add/{$model_id}/{$model_type}",[
            'numero' => Filter::getText('numero'),
            'movil' => Filter::getText('movil')
        ]);

        $phone = Telefono::select('id')
            ->where('numero', Filter::getInt('numero'))
            ->first();
        
        if($phone){
            Session::set('msg_error', 'El teléfono ingresado ya existe... intente con otro');
            $this->redirect("telefonos/add/{$model_id}/{$model_type}");
        }

        $telefono = new Telefono;
        $telefono->numero = Filter::getInt('numero');
        $telefono->movil = Filter::getInt('movil');
        $telefono->telefonoable_id = Filter::filterInt($model_id);
        $telefono->telefonoable_type = $model_type;
        $telefono->save();

        $this->redirect($route);
    }
}