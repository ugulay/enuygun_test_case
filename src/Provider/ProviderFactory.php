<?php

namespace App\Provider;

use App\Provider\Facade\iProviderFactory;

class ProviderFactory implements iProviderFactory
{

    public $provider;

    public function __construct($provider)
    {
        $this->provider = $provider;
    }

    function exportData(): array
    {

        $this->provider->requestProviderData();

        if (!is_countable($this->provider->response)) {
            throw new \Exception("Response data is not countable");
        }

        return $this->provider->parseData();
    }
}
