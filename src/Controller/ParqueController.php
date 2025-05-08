<?php
// src/Controller/ParqueController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ParqueController extends AbstractController
{
    public function inicio()
    {
        return $this->render('parque/inicio.html.twig');
    }
}