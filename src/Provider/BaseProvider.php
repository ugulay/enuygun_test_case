<?php

namespace App\Provider;

use App\Provider\Facade\iBaseProvider;

abstract class BaseProvider implements iBaseProvider
{

    public $client = null;
    public $providerName = "";
    public $providerUrl = "";
    public $requestMethod = "GET";
    public $requestOptions = [];
    public $response = [];

    function setClient($client)
    {
        $this->client = $client;
    }

    function getClient()
    {
        return $this->client;
    }

    function requestProviderData(): array
    {

        $response = $this->getClient()->request(
            $this->requestMethod,
            $this->providerUrl,
            $this->requestOptions
        );

        if ($response->getStatusCode() == 200) {
            $this->response = $response->toArray();
        }

        return $this->response;
    }
}
