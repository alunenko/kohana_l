<?php

/**
 * Class Model_Page
 *
 * @property int $id Primary key
 * @property string $title Page header
 * @property string $description Small description after header
 * @property string $alias Link at this page
 * @property int $status Status. See Enum_Status
 * @property string $created_at When was created
 * @property string $updated_at When was changed
 *
 * @author Anton Lunenko
 */
class Model_Page extends ORM
{

    /**
     * @inheritdoc
     */
    protected $_table_name = 'Page';

    /**
     * @inheritdoc
     *
     * @author Anton Lunenko
     */
    /*protected $_table_columns = array(
        'title'       => array(
            array('not_empty'),
            array('min_length', array(':value', 1)),
            array('max_length', array(':value', 64)),
            array('title'),
        ),
        'description' => array(
            array('not_empty'),
            array('min_length', array(':value', 0)),
            array('max_length', array(':value', 128)),
            array('description'),
        ),
        'alias'       => array(
            array('not_empty'),
            array('min_length', array(':value', 1)),
            array('max_length', array(':value', 128)),
            array('alias'),
        ),
        'status'      => array(
            array('not_empty'),
            array('min_length', array(':value', 0)),
            array('max_length', array(':value', 99)),
            array('0'),
        ),
        'created_at'      => array(
            array('not_empty'),
        ),
    );*/


    public function rules()
    {
        return array(
            'title'       => array(
                array('not_empty'),
                /*array('min_length', array(':value', 1)),
                array('max_length', array(':value', 64)),
                array('title'),*/
            ),
            'description' => array(
                array('not_empty'),
                /*array('min_length', array(':value', 0)),
                array('max_length', array(':value', 128)),
                array('description'),*/
            ),
            'alias'       => array(
                array('not_empty'),
                /*array('min_length', array(':value', 1)),
                array('max_length', array(':value', 128)),
                array('alias'),*/
            ),
            'status'      => array(
                array('not_empty'),
                /*array('min_length', array(':value', 0)),
                array('max_length', array(':value', 99)),
                array('0'),*/
            ),
            'created_at'      => array(
                array('not_empty'),
            ),
        );
    }
}