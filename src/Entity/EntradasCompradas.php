<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\EntradasCompradasRepository")
 */
class EntradasCompradas
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Entradas", inversedBy="id")
     */
    private $entrada;

    /**
     * @ORM\Column(type="integer")
     */
    private $numEntradas;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fechaActual;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fechaEntrada;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\User")
     * @ORM\JoinColumn(nullable=false)
     */
    private $usuario;

    public function __construct()
    {
        $this->entrada = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEntrada(): ?Entradas
    {
        return $this->entrada;
    }

    public function setEntrada(?Entradas $entrada): self
    {
        $this->entrada = $entrada;

        return $this;
    }

    public function getNumEntradas(): ?int
    {
        return $this->numEntradas;
    }

    public function setNumEntradas(int $numEntradas): self
    {
        $this->numEntradas = $numEntradas;

        return $this;
    }

    public function getFechaActual(): ?\DateTimeInterface
    {
        return $this->fechaActual;
    }

    public function setFechaActual(\DateTimeInterface $fechaActual): self
    {
        $this->fechaActual = $fechaActual;

        return $this;
    }

    public function getFechaEntrada(): ?\DateTimeInterface
    {
        return $this->fechaEntrada;
    }

    public function setFechaEntrada(\DateTimeInterface $fechaEntrada): self
    {
        $this->fechaEntrada = $fechaEntrada;

        return $this;
    }

    public function getUsuario(): ?User
    {
        return $this->usuario;
    }

    public function setUsuario(?User $usuario): self
    {
        $this->usuario = $usuario;

        return $this;
    }
}
