<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class DatosformController extends AbstractController
{
    /**
     * @Route("/datosform", name="datosform")
     */
    public function index(Request $request, SessionInterface $session)
    {
        $nombre=$request->get('contact_name');
        $apellido=$request->get('contact_apellido');
        $email=$request->get('contact_email');
        $comentarios=$request->get('contact_message');
        $session->set('contact_name', $nombre);
        $session->set('contact_apellido',$apellido);
        $session->set('contactemail',$email);
        $session->set('contact_message',$comentarios);
        return $this->render('datosform.html.twig', [
            'controller_name' => 'DatosformController',
            'nombre' => $nombre,
            'apellido' => $apellido,
            'email' => $email,
            'coments' => $comentarios
        ]);
    }
}
