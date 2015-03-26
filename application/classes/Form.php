<?php defined('SYSPATH') OR die('No direct script access.');

class Form extends Kohana_Form {

    protected static $model_name;

    /**
     * @inheritdoc
     *
     * Added $model_name to $name
     *
     * @author Anton Lunenko
     */
    public static function open($action = NULL, array $attributes = NULL)
    {
        self::$model_name = $attributes['model_name'];

        return parent::open($action, $attributes['attributes']);
    }

    /**
     * @inheritdoc
     *
     * Unset $model_name
     *
     * @author Anton Lunenko
     */
    public static function close()
    {
        self::$model_name = NULL;

        return parent::close();
    }

    /**
     *
     *
     *
     *
     * @author Anton Lunenko
     */
    public static function get_name($name)
    {
        return isset(self::$model_name, $name) ? self::$model_name . "[{$name}]" : $name;
    }

    /**
     * @inheritdoc
     *
     * Added $model_name to $name
     *
     * @author Anton Lunenko
     */
    public static function input($name, $value = NULL, array $attributes = NULL)
    {
        return parent::input(self::get_name($name), $value, $attributes);
    }

    /**
     * @inheritdoc
     *
     * Added $model_name to $name
     *
     * @author Anton Lunenko
     */
    public static function textarea($name, $body = '', array $attributes = NULL, $double_encode = TRUE)
    {
        return parent::textarea(self::get_name($name), $body, $attributes, $double_encode);
    }

    /**
     * @inheritdoc
     *
     * Added $model_name to $name
     *
     * @author Anton Lunenko
     */
    public static function select($name, array $options = NULL, $selected = NULL, array $attributes = NULL)
    {
        return parent::select(self::get_name($name), $options, $selected, $attributes);
    }

    /**
     * @inheritdoc
     *
     * Added $model_name to $name
     *
     * @author Anton Lunenko
     */
    public static function button($name, $body, array $attributes = NULL)
    {
        return parent::button(self::get_name($name), $body, $attributes);
    }
}