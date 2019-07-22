<?php

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

class OMDATABASE {

}


}

