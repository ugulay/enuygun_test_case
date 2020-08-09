<?php

namespace App\Controller;

use App\Entity\Developer;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class DefaultController extends AbstractController
{

    public function index()
    {

        $weekHours = 45;

        $getDates = $this->getDoctrine()
            ->getRepository(Developer::class)
            ->findCalculatedDates($weekHours);

        $data = [
            "WeeklyHour" => $weekHours,
            "Data" => $getDates
        ];

        return $this->json($data, 200);
    }
}
