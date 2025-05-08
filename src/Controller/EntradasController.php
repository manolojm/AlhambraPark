<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Entity\EntradasCompradas;
use App\Entity\Entradas;
use App\Entity\User;
use Symfony\Component\HttpFoundation\Request;

class EntradasController extends AbstractController {
    
    // Muestra todas las entradas
    public function entradas() {
        $entradas = $this->getDoctrine()
                ->getRepository(Entradas::class)
                ->findAll();

        return $this->render('entradas/entradas.html.twig', ['entradas' => $entradas]);
    }

    // Muestra la entrada seleccionada
    public function entrada($nombre) {
        $entrada = $this->getDoctrine()
                ->getRepository(Entradas::class)
                ->findOneBy(array('nombre' => $nombre));

        return $this->render('entradas/entrada.html.twig', ['entrada' => $entrada]);
    }
    
    // Compra las entradas que el usuario quiere
    public function comprarEntradas(Request $request) {
        $isAjax = $request->isXMLHttpRequest();
        $usuarioAjax = $request->get("usuario");
        $fechaEntradaAjax = $request->get("fechaEntrada");
        $vectorNumEntradas = $request->get("vectorNumEntradas");
        $vectorIdEntradas = $request->get("vectorIdEntradas");

        $em = $this->getDoctrine()->getManager();

        if ($isAjax) {

            $posicionNumEntrada = 0;
            foreach ($vectorIdEntradas as $entrada) {

                $miUsuario = $em->getRepository(User::class)
                        ->find($usuarioAjax);
                $miEntrada = $em->getRepository(Entradas::class)
                        ->find($entrada);

                $entradaComprada = new entradasCompradas();
                $entradaComprada->setUsuario($miUsuario);
                $entradaComprada->setEntrada($miEntrada);
                $entradaComprada->setNumEntradas($vectorNumEntradas[$posicionNumEntrada]);
                $entradaComprada->setFechaActual(new \DateTime());
                $entradaComprada->setFechaEntrada(\DateTime::createFromFormat('Y-m-d', $fechaEntradaAjax));
                //$entradaComprada->setFechaEntrada(new \DateTime());

                $posicionNumEntrada++;
                $em->persist($entradaComprada);
                $em->flush();
            }
        }

        $arrayResponse = array("correcto" => "correcto");
        $response = new Response(json_encode($arrayResponse));
        return $response;
    }
    
    // Muestra todas las entradas compradas por un usuario
    public function mostrarEntradas($usuario) {

        $entradas = $this->getDoctrine()
                ->getRepository(EntradasCompradas::class)
                ->findBy(['usuario' => $usuario]);

        return $this->render('entradas/entradasCompradas.html.twig', ['entradas' => $entradas]);
    }
    
    // Muestra todas las entradas compradas por todos los usuarios
    public function entradasDatos() {
        $entradas = $this->getDoctrine()
                ->getRepository(EntradasCompradas::class)
                ->findAll();

        return $this->render('entradas/entradasDatos.html.twig', 
                ['entradas' => $entradas]);
    }
}
