<?php

namespace App\Repository;

use App\Entity\EntradasCompradas;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method EntradasCompradas|null find($id, $lockMode = null, $lockVersion = null)
 * @method EntradasCompradas|null findOneBy(array $criteria, array $orderBy = null)
 * @method EntradasCompradas[]    findAll()
 * @method EntradasCompradas[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class EntradasCompradasRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, EntradasCompradas::class);
    }

    // /**
    //  * @return EntradasCompradas[] Returns an array of EntradasCompradas objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('e.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?EntradasCompradas
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
