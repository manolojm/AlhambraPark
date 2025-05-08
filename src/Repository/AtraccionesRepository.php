<?php

namespace App\Repository;

use App\Entity\Atracciones;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Atracciones|null find($id, $lockMode = null, $lockVersion = null)
 * @method Atracciones|null findOneBy(array $criteria, array $orderBy = null)
 * @method Atracciones[]    findAll()
 * @method Atracciones[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AtraccionesRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Atracciones::class);
    }

    // /**
    //  * @return Atracciones[] Returns an array of Atracciones objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Atracciones
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
