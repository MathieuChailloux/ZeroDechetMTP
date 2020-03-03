#! usr/bin/env python

from sys import argv
import os
from os.path import exists
import simplejson as json 

#script_dir = __file__
script_dir = "D:\\Perso\\\ZW_MTP\\ZeroDechetMTP\\gogocarto_data"
print ("script_dir = " + str(script_dir))
in_file = os.path.join(script_dir,"elements.json")
print ("in_file = " + str(in_file))
out_file = os.path.join(script_dir,"elements.geojson")
print ("out_file = " + str(out_file))

data = json.load(open(in_file))
data = data['data']

print ("data0 = " + str(data[0]))

geo_feats = []

for d in data:
    geo = d['geo']
    lat = geo['latitude']
    lon = geo['longitude']
    feat = {
        "type": "Feature",
        "geometry" : {
            "type": "Point",
            "coordinates": [lon, lat]
            },
            "properties" : d,
    }
    geo_feats.append(feat)


geojson = {
    "type": "FeatureCollection",
    "features": geo_feats
}

print ("data0 = " + str(geo_feats[0]))


output = open(out_file, 'w')
json.dump(geojson, output)