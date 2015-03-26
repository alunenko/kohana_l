<?php
/**
 * Created by PhpStorm.
 * User: lunenko
 * Date: 3/25/2015
 * Time: 15:12
 */

echo Form::open('', array('model_name'=>get_class($model), 'attributes'=>array('method' => 'post')));

echo Form::label('title', 'title');
echo Form::input('title');

echo Form::label('description', 'description');
echo Form::input('description');

echo Form::label('alias', 'alias');
echo Form::input('alias');

echo Form::label('status', 'status');
echo Form::input('status');

echo Form::submit(NULL, 'Create');

echo Form::close();

?>