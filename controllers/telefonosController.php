<?php
use models\Telefono;
use models\User;

class telefonosController extends Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function add($model_id = null, $model_type = null)
    {
        //print_r($model_type);exit;
        $this->validateSession();
        $this->getMessages();

        if ($model_type == 'user') {
            $route = 'users/show/' . $model_id;
            Validate::validateModel(User::class, $model_id, 'users');
        }elseif ($model_type == 'suscriptor') {
            $route = 'suscriptores/show/' . $model_id;
            Validate::validateModel(Suscriptor::class, $model_id, 'suscriptores');
        }else{
            $this->redirect('home');
        }

        $this->_view->assign('title','Telefonos');
        $this->_view->assign('subject', 'Nuevo Teléfono');
        $this->_view->assign('button','Guardar');
        $this->_view->assign('back', $route);
        $this->_view->assign('process', "telefonos/store/{$model_id}/{$model_type}");
        $this->_view->assign('telefono', Session::get('data'));
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

        if (strlen(Filter::getText('numero')) < 9) {
            Session::set('msg_error', 'El teléfono debe tener al menos 9 dígitos');
            $this->redirect("telefonos/add/{$model_id}/{$model_type}");
        }

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
        $telefono->telefonoable_type = ucfirst($model_type);
        $telefono->save();

        Session::destroy('data');
        Session::set('msg_success','El teléfono se ha registrado correctamente');
        $this->redirect($route);
    }
}