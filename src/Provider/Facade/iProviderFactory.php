<?php

namespace App\Provider\Facade;

interface iProviderFactory
{
    function __construct($provider);
    function exportData(): array;
}
