<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class FormController extends AbstractController
{
    /**
     * @Route("/form", name="form")
     */
    public function index(Request $request, SessionInterface $session)
    {
        $usuario=$request->request->get('cc');
        $session->set('usuario', $usuario);
        return $this->redirectToRoute('home', [
            'controller_name' => 'FormController',
            'usuario' => $usuario
        ]);
    }
}
