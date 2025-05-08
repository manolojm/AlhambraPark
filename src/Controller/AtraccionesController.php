<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Entity\Atracciones;
use App\Entity\EntradasCompradas;
use App\Entity\Entradas;
use App\Entity\Contacto;
use App\Entity\Favoritos;
use App\Entity\User;
use App\Service\SlackClient;
use Doctrine\ORM\EntityManagerInterface;
use Psr\Log\LoggerInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

class AtraccionesController extends AbstractController {

    // Muestra todas las atracciones
    public function atracciones() {
        $atracciones = $this->getDoctrine()
                ->getRepository(Atracciones::class)
                ->findAll();

        return $this->render('atracciones/atracciones.html.twig', ['atracciones' => $atracciones]);
    }

    // Muestra la atracción seleccionada
    public function atraccion($nombre) {
        $atraccion = $this->getDoctrine()
                ->getRepository(Atracciones::class)
                ->findOneBy(array('nombre' => $nombre));

        return $this->render('atracciones/atraccion.html.twig', ['atraccion' => $atraccion]);
    }

    // Añade una atracción a la lista de favoritos
    public function anadirFavorito(Request $request) {
        $isAjax = $request->isXMLHttpRequest();
        $codigoerror = 0;
        $error = "";
        $url = "";
        $correcto = 0;

        $atraccionAjax = $request->get("atraccion");
        $usuarioAjax = $request->get("usuario");

        $em = $this->getDoctrine()->getManager();
        
        $miFavorito = $em->getRepository(Favoritos::class)
                ->findOneBy(array('atraccion' => $atraccionAjax, 'usuario' => $usuarioAjax));

        if (empty($miFavorito)) {

            if ($isAjax) {

                $atraccion = $em->getRepository(Atracciones::class)->find($atraccionAjax);
                $usuario = $em->getRepository(User::class)->find($usuarioAjax);

                $favorito = new favoritos();
                $favorito->setUsuario($usuario);
                $favorito->setAtraccion($atraccion);
                $favorito->setFecha(new \DateTime());

                $em->persist($favorito);
                $em->flush();
            }
        }

        $arrayResponse = array("correcto" => $correcto, "url" => $url,
            "error" => $error, "codigoerror" => $codigoerror);
        $response = new Response(json_encode($arrayResponse));
        return $response;
    }

    // Quita una atracción de la lista de favoritos
    public function quitarFavorito(Request $request) {
        $isAjax = $request->isXMLHttpRequest();
        $codigoerror = 0;
        $error = "";
        $url = "";
        $correcto = 0;

        $atraccionAjax = $request->get("atraccion");

        if ($isAjax) {
            $em = $this->getDoctrine()->getManager();

            $miFavorito = $em->getRepository(Favoritos::class)
                    ->find($atraccionAjax);

            $em->remove($miFavorito);
            $em->flush();
        }

        $arrayResponse = array("correcto" => $correcto, "url" => $url,
            "error" => $error, "codigoerror" => $codigoerror);
        $response = new Response(json_encode($arrayResponse));
        return $response;
    }

    // Muestra todas las atracciones favoritas de un usuario
    public function mostrarFavorito($usuario) {

        $favoritos = $this->getDoctrine()
                ->getRepository(Favoritos::class)
                ->findBy(['usuario' => $usuario]);

        return $this->render('atracciones/favoritos.html.twig', ['favoritos' => $favoritos]);
    }

    public function homepage() {
        return $this->render('parque/inicio.html.twig');
    }

}
