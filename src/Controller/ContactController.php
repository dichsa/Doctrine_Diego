<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class ContactController extends AbstractController
{
    /**
     * @Route("/contacta", name="contacta")
     */
    public function index(SessionInterface $session)
    {
        $usuario= $session->get('usuario');
        return $this->render('contact.html.twig', [
            'controller_name' => 'ContactController',
            'enlace_home'=>'/home',
            'enlace_about'=>'/nosotros',
            'enlace_services'=>'/servicios',
            'enlace_productos'=>'/productos',
            'enlace_contact'=>'/contacta',
            'enlace_login' =>'/login',
            'usuario' => $usuario,
        ]);
    }
}
