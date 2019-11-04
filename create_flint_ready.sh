#!/usr/bin/env bash

#flintdata --help

#flintdata optimize-rasters --help

#flintdata optimize-rasterstack --help

flintdata optimize-rasters data/rasters/*.tif -o data/export_blk/

flintdata optimize-rasterstack -o data/export_blk/ -n forest_cover data/rasters/forest_cover/forest{year}.tif
flintdata optimize-rasterstack -o data/export_blk/ -n fire data/rasters/fire/fire{year}.tif
flintdata optimize-rasterstack -o data/export_blk/ -n primary_forest_extent data/rasters/primary_forest_extent/primaryforestextent{year}.tif