#!/usr/bin/env bash

mkdir -p rasters
gdal_rasterize raw/admin_boundary.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/admin_boundary.tif
gdal_rasterize -a id raw/fmu_plantation.shp -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fmu_plantation.tif
gdal_rasterize raw/everforest_static.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/everforest_static.tif

mkdir -p rasters/forest_cover
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2000 rasters/forest_cover/forest2000.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2001 rasters/forest_cover/forest2001.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2002 rasters/forest_cover/forest2002.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2003 rasters/forest_cover/forest2003.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2004 rasters/forest_cover/forest2004.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2005 rasters/forest_cover/forest2005.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2006 rasters/forest_cover/forest2006.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2007 rasters/forest_cover/forest2007.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2008 rasters/forest_cover/forest2008.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2009 rasters/forest_cover/forest2009.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2010 rasters/forest_cover/forest2010.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2011 rasters/forest_cover/forest2011.tif
gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2012 rasters/forest_cover/forest2012.tif

mkdir -p rasters/primary_forest_extent
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2000.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2001.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2002.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2003.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2004.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2005.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2006.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2007.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2008.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2009.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2010.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2011.tif
gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2012.tif

mkdir -p rasters/fire
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire00.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire00.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire01.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire01.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire02.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire02.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire03.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire03.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire04.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire04.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire05.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire05.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire06.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire06.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire07.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire07.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire08.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire08.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire09.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire09.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire10.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire10.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire11.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire11.tif
gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire12.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire12.tif