<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Entity\Contacto;
use Symfony\Component\HttpFoundation\Request;

class ContactoController extends AbstractController {

    // Muestra el formulario de contacto
    public function contacto() {
        return $this->render('contacto/contacto.html.twig');
    }
    
    // Envía el formulario de contacto
    public function formularioContacto(Request $request) {
        $isAjax = $request->isXMLHttpRequest();
        $codigoerror = 0;
        $error = "";
        $url = "";
        $correcto = 0;

        $nombre = $request->get("nombre");
        $correo = $request->get("correo");
        $mensaje = $request->get("comentario");
 
        if ($isAjax) {
            $em = $this->getDoctrine()->getManager();

            $contacto = new contacto();
            $contacto->setNombre($nombre);
            $contacto->setCorreo($correo);
            $contacto->setMensaje($mensaje);

            $em->persist($contacto);
            $em->flush();
        }

        $arrayResponse = array("correcto" => $correcto, "url" => $url,
            "error" => $error, "codigoerror" => $codigoerror);
        $response = new Response(json_encode($arrayResponse));
        return $response;
    }
    
    // Muestra todos los mensajes de contacto
    public function mensajes() {

        $contactos = $this->getDoctrine()
                ->getRepository(Contacto::class)
                ->findAll();

        return $this->render('contacto/mensajes.html.twig', ['contactos' => $contactos]);
    }
    
    // Elimina un mensaje
    public function quitarMensaje(Request $request) {
        $isAjax = $request->isXMLHttpRequest();
        $codigoerror = 0;
        $error = "";
        $url = "";
        $correcto = 0;

        $mensajeAjax = $request->get("mensaje");

        if ($isAjax) {
            $em = $this->getDoctrine()->getManager();

            $miMensaje = $em->getRepository(Contacto::class)
                    ->find($mensajeAjax);

            $em->remove($miMensaje);
            $em->flush();
        }

        $arrayResponse = array("correcto" => $correcto, "url" => $url,
            "error" => $error, "codigoerror" => $codigoerror);
        $response = new Response(json_encode($arrayResponse));
        return $response;
    }

}
