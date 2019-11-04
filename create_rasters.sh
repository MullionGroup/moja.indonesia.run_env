#!/usr/bin/env bash

mkdir -p data/rasters
gdal_rasterize data/raw/admin_boundary.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/admin_boundary.tif
gdal_rasterize -a id data/raw/fmu_plantation.shp -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fmu_plantation.tif
gdal_rasterize data/raw/everforest_static.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/everforest_static.tif

mkdir -p data/rasters/forest_cover
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2000 data/rasters/forest_cover/forest2000.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2001 data/rasters/forest_cover/forest2001.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2002 data/rasters/forest_cover/forest2002.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2003 data/rasters/forest_cover/forest2003.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2004 data/rasters/forest_cover/forest2004.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2005 data/rasters/forest_cover/forest2005.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2006 data/rasters/forest_cover/forest2006.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2007 data/rasters/forest_cover/forest2007.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2008 data/rasters/forest_cover/forest2008.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2009 data/rasters/forest_cover/forest2009.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2010 data/rasters/forest_cover/forest2010.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2011 data/rasters/forest_cover/forest2011.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" data/raw/Forest\ Cover/forest2012 data/rasters/forest_cover/forest2012.tif

mkdir -p data/rasters/primary_forest_extent
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2000.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2001.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2002.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2003.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2004.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2005.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2006.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2007.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2008.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2009.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2010.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2011.tif
gdal_rasterize data/raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/primary_forest_extent/primaryforestextent2012.tif

mkdir -p data/rasters/fire
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire00.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire00.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire01.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire01.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire02.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire02.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire03.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire03.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire04.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire04.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire05.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire05.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire06.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire06.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire07.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire07.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire08.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire08.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire09.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire09.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire10.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire10.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire11.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire11.tif
gdal_rasterize data/raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire12.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 data/rasters/fire/fire12.tif