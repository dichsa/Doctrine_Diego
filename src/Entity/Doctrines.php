<?php

namespace App\Entity;

use App\Repository\DoctrinesRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=DoctrinesRepository::class)
 */
class Doctrines
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $nombre_producto;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $descripcion;

    /**
     * @ORM\Column(type="integer")
     */
    private $precio;

    /**
     * @ORM\ManyToOne(targetEntity=Categoria::class, inversedBy="doctrines")
     */
    private $Categoria;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNombreProducto(): ?string
    {
        return $this->nombre_producto;
    }

    public function setNombreProducto(string $nombre_producto): self
    {
        $this->nombre_producto = $nombre_producto;

        return $this;
    }

    public function getDescripcion(): ?string
    {
        return $this->descripcion;
    }

    public function setDescripcion(string $descripcion): self
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    public function getPrecio(): ?int
    {
        return $this->precio;
    }

    public function setPrecio(int $precio): self
    {
        $this->precio = $precio;

        return $this;
    }

    public function getCategoria(): ?Categoria
    {
        return $this->Categoria;
    }

    public function setCategoria(?Categoria $Categoria): self
    {
        $this->Categoria = $Categoria;

        return $this;
    }
}
