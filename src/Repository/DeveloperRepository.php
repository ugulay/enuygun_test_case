<?php

namespace App\Repository;

use App\Entity\Developer;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Developer|null find($id, $lockMode = null, $lockVersion = null)
 * @method Developer|null findOneBy(array $criteria, array $orderBy = null)
 * @method Developer[]    findAll()
 * @method Developer[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class DeveloperRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Developer::class);
    }

    public function findCalculatedDates(int $weekHours = 45): array
    {

        $rawQuery   =  "SELECT 
                            D.title AS dev,
                            (SELECT SUM(duration) FROM task WHERE level=D.level ) AS total_task_duration,
                            (SELECT SUM(duration) FROM task WHERE level=D.level ) / {$weekHours} AS total_week,
                            (SELECT SUM(duration) FROM task WHERE level=D.level ) / {$weekHours} * 7 AS total_week_days
                        FROM task AS T
                        LEFT JOIN developer AS D ON(T.level=D.level)
                        GROUP BY D.title,total_task_duration,total_week,total_week_days";

        $conn = $this->getEntityManager()->getConnection();
        $stmt = $conn->prepare($rawQuery);
        $stmt->execute();

        return $stmt->fetchAll();
    }
}
