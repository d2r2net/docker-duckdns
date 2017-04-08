# docker-duckdns

A simple Docker Duck DNS client </br>
The DNS is updated at container creation and every 30 minutes, to force a DNS update restart the container.

## Exemple Usage 
Basic usage, set a single domain and token </br>
`docker run -d -e DOMAINS="<subdomain>" -e TOKEN="<token>" --name duckdns-client d2r2_net/duckdns`
</br>
</br>
Manually setting an ip,time zone and turning verbose mode on </br>
`docker run -d -e DOMAINS="<subdomain>" -e TOKEN="<token>" -e IP="<ip>" -e TZ="America/Montreal" -e VERBOSE="true" --name duckdns-client d2r2_net/duckdns`

## Environement Variables

The Duck DNS API is Fully supported

|Variable   |Required          | Description                                                                                   |      
|:---------:|:----------------:|:---------------------------------------------------------------------------------------------:|
|DOMAINS    |YES               |comma separated list of the subnames you want to update                                        |
|TOKEN      |YES               |your account token                                                                             |                                                                                               |                                 
|IP         |OPTIONAL          |if left blank we detect IPv4 addresses, if you want you can supply a valid IPv4 or IPv6 address|              
|IPV6       |OPTIONAL          |a valid IPv6 address, if you specify this then the autodetection for ip is not used            |
|VERBOSE    |OPTIONAL          |if set to true, you get information back about how the request went                            |
|CLEAR      |OPTIONAL          |if set to true, the update will ignore all ip's and clear both your records                    |                                                                                               |
|TZ         |OPTIONAL          |Set time zone                                                                                  |

                               
                               
