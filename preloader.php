<?php

if (!defined('_PS_VERSION_')) {
    exit;
}

class Preloader extends Module
{
    public function __construct()
    {
        $this->name = 'preloader';
        $this->tab = 'front_office_features';
        $this->version = '1.0.0';
        $this->author = 'Delvis Tovar';
        $this->need_instance = 0;
        $this->ps_versions_compliancy = [
            'min' => '1.7',
            'max' => _PS_VERSION_
        ];
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Preloader simple module');
        $this->description = $this->l('Display preloader simple.');

        $this->confirmUninstall = $this->l('Are you sure you want to uninstall?');
    }

    public function install()
    {
        if (!parent::install() || !$this->registerHook('header')) 
        {
            return false;
        }
        return true;
    } 
   
    public function uninstall()
    {
        return parent::uninstall();
    }

    public function hookDisplayHeader($params)
    {
        return $this->display(__FILE__, 'views/templates/hook/preloader.tpl');
    }
}