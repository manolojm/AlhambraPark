<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\AtraccionesRepository")
 */
class Atracciones
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nombre;

    /**
     * @ORM\Column(type="string", length=1000)
     */
    private $descripcion;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $imagen1;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $imagen2;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $imagen3;

    /**
     * @ORM\Column(type="integer")
     */
    private $intensidad;

    /*
    private $edadRecomendada;

    private $alturaRecomendada;
    */

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNombre(): ?string
    {
        return $this->nombre;
    }

    public function setNombre(string $nombre): self
    {
        $this->nombre = $nombre;

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

    public function getImagen1(): ?string
    {
        return $this->imagen1;
    }

    public function setImagen1(string $imagen1): self
    {
        $this->imagen1 = $imagen1;

        return $this;
    }

    public function getImagen2(): ?string
    {
        return $this->imagen2;
    }

    public function setImagen2(string $imagen2): self
    {
        $this->imagen2 = $imagen2;

        return $this;
    }

    public function getImagen3(): ?string
    {
        return $this->imagen3;
    }

    public function setImagen3(string $imagen3): self
    {
        $this->imagen3 = $imagen3;

        return $this;
    }

    public function getIntensidad(): ?int
    {
        return $this->intensidad;
    }

    public function setIntensidad(int $intensidad): self
    {
        $this->intensidad = $intensidad;

        return $this;
    }

    /*
    public function getEdadRecomendada(): ?string
    {
        return $this->edadRecomendada;
    }

    public function setEdadRecomendada(string $edadRecomendada): self
    {
        $this->edadRecomendada = $edadRecomendada;

        return $this;
    }

    public function getAlturaRecomendada(): ?string
    {
        return $this->alturaRecomendada;
    }

    public function setAlturaRecomendada(string $alturaRecomendada): self
    {
        $this->alturaRecomendada = $alturaRecomendada;

        return $this;
    }
    */
}
