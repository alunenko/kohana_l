<?php

/**
 * Created by PhpStorm.
 * User: lunenko
 * Date: 3/20/2015
 * Time: 19:06
 */
class Controller_Page extends Controller_Template
{
    public $template = 'layout';

    public function before()
    {
        parent::before();
        View::set_global('message', array());
    }

    public function action_index()
    {
        $message = 'Wellcome';
        $this->template->message = $message;
    }

    public function action_create()
    {
        $model = new Model_Page();

        if (isset($_POST[$model_class = get_class($model)])) {
            try {
                $model->values($_POST[$model_class]);
                $date = new DateTime();
                $model->set('created_at', $date->format('Y-m-d H:i:s'));
                $model->save();
            } catch (ORM_Validation_Exception  $e) {
                /*var_dump($e->errors('models'));die;*/
                View::set_global('message', $e->errors('models'));
            }
        }

        $this->template->set('content', View::factory('page/create', array('model' => $model)));
    }
}