<?php

namespace App\Controller;

use App\Entity\Doctrines;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class AddController extends AbstractController
{
    /**
     * @Route("/add", name="add")
     */
    public function index(EntityManagerInterface $entityManager)
    {
        foreach($this->gallery as $key => $value){
            foreach($value as $dish){
                $producto=new Doctrines();
                $producto->setNombreproducto($dish['title']);
                $producto->setDescripcion($dish['description']);
                $producto->setPrecio($dish['price']);
                
                $entityManager->persist($producto);
            }
            $entityManager->flush();
        }

        return $this->render('add.html.twig', [
            'id' => ''/*$producto->getId()*/,
            'titulo' => 'producto añadido'
            ]);
    }
    private $gallery=[
        'Productos1-3' => [
          [
             'title' => 'Producto 1',
             'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
             'price' => '50',
          ],
          [
             'title' => 'Producto 2',
             'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
             'price' => '50',
          ],
          [
             'title' => 'Producto 3',
             'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
             'price' => '50',
          ],
        ],
        
        'Productos4-6' => [
          [
             'title' => 'Producto 4',
             'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
             'price' => '50',
          ],
          [
             'title' => 'Producto 5',
             'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
             'price' => '50',
          ],
          [
             'title' => 'Producto 6',
             'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
             'price' => '50',
          ],
        ],
  
        'Productos7-9' => [
          [
             'title' => 'Producto 7',
             'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
             'price' => '50',
          ],
          [
             'title' => 'Producto 8',
             'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
             'price' => '50',
          ],
          [
             'title' => 'Producto 9',
             'description' => 'Lorem ipsumLorem ipsumLorem ipsum',
             'price' => '50',
          ],
        ],
       ];
}
