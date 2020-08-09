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

        return $this->json($getDates, 200);
    }
}
