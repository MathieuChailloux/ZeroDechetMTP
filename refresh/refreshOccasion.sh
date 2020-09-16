#/bin/bash

curl -o occasion.json -g "https://www.overpass-api.de/api/interpreter?data=[out:json];(area[\"ISO3166-1\"~\"FR|MC|BE|CH|AD\"];)->.fr;((node[\"second_hand\"~\"only\"](area.fr);way[\"second_hand\"~\"only\"](area.fr);););out%20center;"
