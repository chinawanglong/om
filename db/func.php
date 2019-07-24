<?php

/**
 * 数据库操作与配置中心
 * Class db
 * @author wanglong<noobelliot@gmail.com>
 * @date 2019-7-24
 */

class db {

    private $pdo = null;

    public function __construct($dsn, $user, $pass){

        $this->pdo = new PDO($dsn, $user, $pass);
        $this->pdo->query('set names utf8;');
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    public function getPdo(){
        return $this->pdo;
    }

}



