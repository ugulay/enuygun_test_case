<?php

namespace App\Provider\Facade;

interface iBaseProvider
{
    function getProviderName(): string;
    function requestProviderData(): array;
    function setClient($client);
    function getClient();
}
