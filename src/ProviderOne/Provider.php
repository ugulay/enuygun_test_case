<?php

namespace App\ProviderOne;

use Symfony\Component\HttpClient\HttpClient;

use App\Provider\BaseProvider;
use App\Provider\Facade\iProvider;

class Provider extends BaseProvider implements iProvider
{

    function __construct()
    {
        /**
         * Must be define these variables
         * Extends from BaseProvider 
         */
        $this->client = HttpClient::create();
        $this->requestMethod = "GET";
        $this->requestOptions = [];
        $this->providerName = "Provider One";
        $this->providerUrl = "http://www.mocky.io/v2/5d47f24c330000623fa3ebfa";
        $this->response = [];
    }

    function getProviderName(): string
    {
        return $this->providerName;
    }

    function parseData(): array
    {

        $data = $this->response;
        $dataForExport = [];

        foreach ($data as $key => $value) {
            $dataForExport[] = [
                "title" => $value["id"],
                "level" => $value["zorluk"],
                "duration" => $value["sure"]
            ];
        }

        return $dataForExport;
    }

}
