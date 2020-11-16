<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class RLoginController extends AbstractController
{
    /**
     * @Route("/recibecontroller", name="rlogin")
     */
    public function index(Request $request, SessionInterface $session)
    {
        $usuario=$request->request->get('cc');
        $session->set('usuario', $usuario);
        return $this->redirectToRoute('home', [
            'controller_name' => 'RLoginController',
            'usuario' => $usuario
        ]);
    }
}
