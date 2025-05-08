<?php

namespace App\Controller;

use Psr\Log\LoggerInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\User;

/**
 * @IsGranted("ROLE_USER")
 */
class AccountController extends BaseController {

    /**
     * @Route("/account", name="app_account")
     */
    public function index(LoggerInterface $logger) {
        $logger->debug('Checking account page for ' . $this->getUser()->getEmail());
        return $this->render('account/index.html.twig', [
        ]);
    }

    /**
     * @Route("/api/account", name="api_account")
     */
    public function accountApi() {
        $user = $this->getUser();

        return $this->json($user, 200, [], [
                    'groups' => ['main'],
        ]);
    }

    // Cambia los datos del usuario
    public function cambiarDatos(Request $request, $usuarioId, UserPasswordEncoderInterface $passwordEncoder) {
        $isAjax = $request->isXMLHttpRequest();
        $codigoerror = 0;
        $error = "";
        $url = "";
        $correcto = 0;

        $nombre = $request->get("nombre");
        $correo = $request->get("email");
        $pass = $request->get("pass");
        $twitter = $request->get("twitter");

        $usuario = $this->getDoctrine()
                ->getRepository(User::class)
                ->find($usuarioId);

        if ($isAjax) {
            $em = $this->getDoctrine()->getManager();

            if (!empty($nombre)) {
                $usuario->setFirstName($nombre);
            }

            if (!empty($correo)) {
                $usuario->setEmail($correo);
            }

            if (!empty($pass)) {
                $usuario->setPassword($passwordEncoder->encodePassword(
                                $usuario, $pass
                ));
            }

            if (!empty($twitter)) {
                $usuario->setTwitterUsername($twitter);
            }

            $em->persist($usuario);
            $em->flush();
        }

        $arrayResponse = array("correcto" => $correcto, "url" => $url,
            "error" => $error, "codigoerror" => $codigoerror);
        $response = new Response(json_encode($arrayResponse));
        return $response;
    }

}
