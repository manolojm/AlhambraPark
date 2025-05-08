<?php

namespace App\Repository;

use App\Entity\Favoritos;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Favoritos|null find($id, $lockMode = null, $lockVersion = null)
 * @method Favoritos|null findOneBy(array $criteria, array $orderBy = null)
 * @method Favoritos[]    findAll()
 * @method Favoritos[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class FavoritosRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Favoritos::class);
    }

    // /**
    //  * @return Favoritos[] Returns an array of Favoritos objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('f.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Favoritos
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
