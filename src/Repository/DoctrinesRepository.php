<?php

namespace App\Repository;

use App\Entity\Doctrines;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Doctrines|null find($id, $lockMode = null, $lockVersion = null)
 * @method Doctrines|null findOneBy(array $criteria, array $orderBy = null)
 * @method Doctrines[]    findAll()
 * @method Doctrines[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class DoctrinesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Doctrines::class);
    }

    // /**
    //  * @return Doctrines[] Returns an array of Doctrines objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('d')
            ->andWhere('d.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('d.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Doctrines
    {
        return $this->createQueryBuilder('d')
            ->andWhere('d.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
