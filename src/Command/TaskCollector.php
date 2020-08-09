<?php

namespace App\Command;

use App\Provider\ProviderFactory;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;

use App\ProviderOne\Provider as ProviderOne;
use App\ProviderTwo\Provider as ProviderTwo;

use App\Entity\Task;

class TaskCollector extends Command
{

    private $container;

    public function __construct(ContainerInterface $container)
    {
        parent::__construct();
        $this->container = $container;
    }

    protected static $defaultName = 'app:collect-tasks';

    protected function configure()
    {
        $this->setDescription('Collects Tasks from Providers');
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {

        $providerData = array_merge(
            (new ProviderFactory(new ProviderOne))->exportData(),
            (new ProviderFactory(new ProviderTwo))->exportData()
        );

        $em = $this->container->get('doctrine')->getManager();
        $repo = $this->container->get('doctrine')->getRepository(Task::class);

        $i = 0;

        foreach ($providerData as $taskData) {

            $res = $repo->findOneByTitle($taskData["title"]);

            if (!$res) {
                $task = new Task();
                $task->setTitle((string)$taskData["title"]);
                $task->setLevel((int) $taskData["level"]);
                $task->setDuration((int) $taskData["duration"]);
                $em->persist($task);
                $em->flush();
                $i++;
            }

        }

        $output->writeln(count($providerData) . " found and {$i} inserted.");
    }
}
