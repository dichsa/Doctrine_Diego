<?php

namespace App\Controller;

use App\Entity\Doctrines;
use App\Entity\Categoria;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class ServicesController extends AbstractController
{
    /**
     * @Route("/servicios{dish<Productos1-3|Productos4-6|Productos7-9>?Productos1-3}/{currentPage?1}", name="servicios")
     */
    /** 
      *@Route("/{dish?Producto1-3}/{currentPage?1}", name="servicios")
    */
    public function index($dish, $currentPage=1)
    {
      $Categoria=$this->getDoctrine()
                     ->getRepository(Categoria::Class)
                     ->findOneBy(['Categoria'=>$dish]);

      $doctrines=$this->getDoctrine()
                  ->getRepository(Doctrines::Class)
                  ->findBy(['Categoria'=>$Categoria]);
                  
      return $this->render('services.html.twig' , [
        'titulo'=>'Home',
        'data'=>$doctrines,
        'currentPage'=>$currentPage,
        'controller_name' => 'ServicesController',
        'enlace_home'=>'/home',
        'enlace_about'=>'/nosotros',
        'enlace_services'=>'/servicios',
        'enlace_productos'=>'/productos',
        'enlace_contact'=>'/contacta',
        'enlace_login'=>'/login',
        'itemsPerPage' => 3
      ]);
    }
}
