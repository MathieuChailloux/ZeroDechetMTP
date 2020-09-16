#/bin/bash

curl -o compost.json -g "https://www.overpass-api.de/api/interpreter?data=[out:json][timeout:500][maxsize:20737418];(area[\"ISO3166-1\"~\"FR|MC|BE|CH|AD\"];)->.fr;(node[\"recycling:organic\"~\"yes\"](area.fr);way[\"recycling:organic\"~\"yes\"](area.fr););out%20center;"
