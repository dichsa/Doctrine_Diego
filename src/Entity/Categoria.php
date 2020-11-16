<?php

namespace App\Entity;

use App\Repository\CategoriaRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CategoriaRepository::class)
 */
class Categoria
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
    private $Categoria;

    /**
     * @ORM\OneToMany(targetEntity=Doctrines::class, mappedBy="Categoria")
     */
    private $doctrines;



    public function __construct()
    {
        $this->doctrines = new ArrayCollection();

    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCategoria(): ?string
    {
        return $this->Categoria;
    }

    public function setCategoria(string $Categoria): self
    {
        $this->Categoria = $Categoria;

        return $this;
    }

    /**
     * @return Collection|Doctrines[]
     */
    public function getDoctrines(): Collection
    {
        return $this->doctrines;
    }

    public function addDoctrine(Doctrines $doctrines): self
    {
        if (!$this->doctrines->contains($doctrines)) {
            $this->doctrines[] = $doctrines;
            $doctrines->setCategoria($this);
        }

        return $this;
    }

    public function removeDoctrine(Doctrines $doctrines): self
    {
        if ($this->doctrines->contains($doctrines)) {
            $this->doctrines->removeElement($doctrines);
            // set the owning side to null (unless already changed)
            if ($doctrines->getCategoria() === $this) {
                $doctrines->setCategoria(null);
            }
        }

        return $this;
    }
}
