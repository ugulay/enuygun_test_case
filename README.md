## enuygun_test_case
>Symfony 4.4

>MySQL 5.8

>Non-Dockerized yet. Developed on Laragon

## .env
>DATABASE_URL=mysql://root:123456@127.0.0.1:3306/enuygun_case?serverVersion=5.7

## CLI
>composer install

>php bin\console make:migration

>php bin\console doctrine:migrations:migrate


## Command for collect provider data
>php bin\console app:collect-tasks

## Screenshot
![Screenshot](https://raw.githubusercontent.com/ugulay/enuygun_test_case/master/screenshot.jpg)