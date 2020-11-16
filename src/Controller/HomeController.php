<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
class HomeController extends AbstractController
{
    /**
     * @Route("/home", name="home")
     */
    public function index(SessionInterface $session)
    {
        $usuario= $session->get('usuario');
        return $this->render('home.html.twig', [
            'controller_name' => 'HomeController',
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
