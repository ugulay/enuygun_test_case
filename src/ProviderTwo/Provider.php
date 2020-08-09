<?php

namespace App\ProviderTwo;

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
        $this->providerName = "Provider Two";
        $this->providerUrl = "http://www.mocky.io/v2/5d47f235330000623fa3ebf7";
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

        foreach ($data as $value) {
            $key = array_key_first($value);
            $dataForExport[] = [
                "title" => $key,
                "level" => $value[$key]["level"],
                "duration" => $value[$key]["estimated_duration"]
            ];
        }

        return $dataForExport;
    }
}
