#!/usr/bin/env bash

#flintdata --help

#flintdata optimize-rasters --help

#flintdata optimize-rasterstack --help

flintdata optimize-rasters rasters/*.tif -o export_blk/

flintdata optimize-rasterstack -o export_blk/ -n forest_cover rasters/forest_cover/forest{year}.tif
flintdata optimize-rasterstack -o export_blk/ -n fire rasters/fire/fire{year}.tif
flintdata optimize-rasterstack -o export_blk/ -n primary_forest_extent rasters/primary_forest_extent/primaryforestextent{year}.tif