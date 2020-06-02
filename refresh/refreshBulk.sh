#/bin/bash

curl -o bulk.json -g "https://www.overpass-api.de/api/interpreter?data=[out:json];(area[\"ISO3166-1\"~\"FR|MC|BE|CH\"];)->.fr;((node[\"bulk_purchase\"=\"only\"](area.fr);way[\"bulk_purchase\"=\"only\"](area.fr);););out%20center;"
