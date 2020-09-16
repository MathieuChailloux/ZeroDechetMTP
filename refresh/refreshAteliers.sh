#/bin/bash

curl -o ateliers.json -g "https://www.overpass-api.de/api/interpreter?data=[out:json];(area[\"ISO3166-1\"~\"FR|MC|BE|CH|AD\"];)->.fr;((node[\"repair\"~\"assisted_self_service\"](area.fr);way[\"repair\"~\"assisted_self_service\"](area.fr);););out%20center;"
