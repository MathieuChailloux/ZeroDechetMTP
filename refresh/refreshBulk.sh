#/bin/bash

curl -o bulk.json -g "https://www.overpass-api.de/api/interpreter?data=[out:json];(area[\"ISO3166-1\"~\"FR|MC|BE|CH|AD\"];)->.fr;((node[\"bulk_purchase\"~\"yes|only\"](area.fr);way[\"bulk_purchase\"~\"yes|only\"](area.fr);););out%20center;"
