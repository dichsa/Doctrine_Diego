<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class ProductosController extends AbstractController
{


   public function index(SessionInterface $session, $currentPage)
   {
      $usuario= $session->get('usuario');
        return $this->render('services.html.twig', [
            'controller_name' => 'ServicesController',
            'enlace_home'=>'/home',
            'enlace_about'=>'/nosotros',
            'enlace_services'=>'/servicios',
            'enlace_productos'=>'/productos',
            'enlace_contact'=>'/contacta',
            'enlace_login'=>'/login',
            'data' => $this->gallery,
            'currentPage' => $currentPage,
            'itemsPerPage' => 3
        ]);
        }

   /*  private $gallery=[
         [
            'title' => 'Producto 1',
            'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
            'price' => '50€',
         ],
         [
            'title' => 'Producto 2',
            'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
            'price' => '50€',
         ],
         [
            'title' => 'Producto 3',
            'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
            'price' => '50€',
         ],
         [
            'title' => 'Producto 1',
            'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
            'price' => '50€',
         ],
         [
            'title' => 'Producto 2',
            'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
            'price' => '50€',
         ],
         [
            'title' => 'Producto 3',
            'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
            'price' => '50€',
         ],

         [
            'title' => 'Producto 1',
            'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
            'price' => '50€',
         ],
         [
            'title' => 'Producto 2',
            'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
            'price' => '50€',
         ],
         [
            'title' => 'Producto 3',
            'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
            'price' => '50€',
         ],
      ]; */
}
?>