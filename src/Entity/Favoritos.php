<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\FavoritosRepository")
 */
class Favoritos
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Atracciones", inversedBy="id")
     */
    private $atraccion;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\User", inversedBy="id")
     */
    private $usuario;

    /**
     * @ORM\Column(type="datetime")
     */
    private $fecha;

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * Get atraccion
     *
     * @param \public\Entity\atracciones $atraccion
     *
     * @return respuesta
     */
    public function getAtraccion(): ?Atracciones
    {
        return $this->atraccion;
    }

    /**
     * Set atraccion
     *
     * @param \public\Entity\atracciones $atraccion
     */
    public function setAtraccion(?Atracciones $atraccion): self
    {
        $this->atraccion = $atraccion;

        return $this;
    }

    /**
     * Get usuario
     *
     * @param \public\Entity\user $usuario
     *
     * @return respuesta
     */
    public function getUsuario(): ?User
    {
        return $this->usuario;
    }

    /**
     * Set usuario
     *
     * @param \public\Entity\user $usuario
     */
    public function setUsuario(?User $usuario): self
    {
        $this->usuario = $usuario;

        return $this;
    }

    public function getFecha(): ?\DateTimeInterface
    {
        return $this->fecha;
    }

    public function setFecha(\DateTimeInterface $fecha): self
    {
        $this->fecha = $fecha;

        return $this;
    }
}
