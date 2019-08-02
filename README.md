# MOJA Indonesia

Environment for running MOJA Indonesia

see https://moja.global/

## Software

QGIS https://qgis.org

SQLite studio https://sqlitestudio.pl/index.rvt

Docker https://hub.docker.com/editions/community/docker-ce-desktop-windows

## Data Preparation

TODO

## Running the Flint

#### Get the MOJA Indonesia docker container

```powershell
PS  C:\moja.indonesia.run_env> docker pull mulliongroup/moja-indonesia
```

#### Run the container

```powershell
PS C:\moja.indonesia.run_env> docker run -ti -v C:\moja.indonesia.run_env:/tmp/moja_runenv mulliongroup/moja-indonesia:latest bash
```
#### Create the rasters

```bash
moja:/tmp/moja_runenv$ cd data
moja:/tmp/moja_runenv/data$ mkdir -p rasters
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/admin_boundary.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/admin_boundary.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize -a id raw/fmu_plantation.shp -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fmu_plantation.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/everforest_static.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/everforest_static.tif

moja:/tmp/moja_runenv/data$ mkdir -p rasters/forest_cover
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2000 rasters/forest_cover/forest2000.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2001 rasters/forest_cover/forest2001.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2002 rasters/forest_cover/forest2002.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2003 rasters/forest_cover/forest2003.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2004 rasters/forest_cover/forest2004.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2005 rasters/forest_cover/forest2005.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2006 rasters/forest_cover/forest2006.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2007 rasters/forest_cover/forest2007.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2008 rasters/forest_cover/forest2008.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2009 rasters/forest_cover/forest2009.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2010 rasters/forest_cover/forest2010.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2011 rasters/forest_cover/forest2011.tif
moja:/tmp/moja_runenv/data$ gdal_translate  -projwin 101.0 0.0 105.0 -3.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" raw/Forest\ Cover/forest2012 rasters/forest_cover/forest2012.tif

moja:/tmp/moja_runenv/data$ mkdir -p rasters/primary_forest_extent
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2000.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2001.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2002.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2003.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2004.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2005.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2006.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2007.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2008.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2009.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2010.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2011.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/FOREST\ 2000/8.\ Extent\ of\ primary\ forest/Extent\ of\ primary\ forest.shp  -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/primary_forest_extent/primaryforestextent2012.tif

moja:/tmp/moja_runenv/data$ mkdir -p rasters/fire
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire00.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire00.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire01.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire01.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire02.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire02.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire03.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire03.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire04.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire04.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire05.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire05.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire06.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire06.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire07.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire07.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire08.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire08.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire09.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire09.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire10.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire10.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire11.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire11.tif
moja:/tmp/moja_runenv/data$ gdal_rasterize raw/WHOLE\ FOREST/7.\ Fire\ Scars_W/fire12.shp -burn 1 -te 101.0 -3.0 105.0 0.0 -co "TILED=yes" -co "COMPRESS=DEFLATE" -tr 0.00025 0.00025 -ot Byte -a_nodata 255 rasters/fire/fire12.tif
```

#### Make flint ready

```bash
moja:/tmp/moja_runenv/data$ flintdata optimize-rasters rasters/*.tif -o export_blk/

moja:/tmp/moja_runenv/data$ flintdata optimize-rasterstack -o export_blk/ -n forest_cover rasters/forest_cover/forest{year}.tif
moja:/tmp/moja_runenv/data$ flintdata optimize-rasterstack -o export_blk/ -n fire rasters/fire/fire{year}.tif
moja:/tmp/moja_runenv/data$ flintdata optimize-rasterstack -o export_blk/ -n primary_forest_extent rasters/primary_forest_extent/primaryforestextent{year}.tif
```



#### Run the Flint on the provided configuration files

```bash
root@86621f96b113:/tmp/moja_runenv# moja.cli --config indo_config.json --config_provider provider.json
<2019-03-15 04:50:31.840552> (info) - Config has files: 1
<2019-03-15 04:50:31.841103> (info) - Using Logging Configuration: internal default
<2019-03-15 04:50:31.841113> (info) - Using configurations:
<2019-03-15 04:50:31.841118> (info) - indo_config.json
<2019-03-15 04:50:31.841122> (info) - Using provider configurations:
<2019-03-15 04:50:31.841125> (info) - provider.json
<2019-03-15 04:50:31.856153> (info) - Using operation manager: Simple
<2019-03-15 04:50:31.856201> (info) - spinup ON, sequencer - SpinupSequencer
<2019-03-15 04:50:31.907662> (info) -   0:Queuing block: ( 33041,  8) 1 of 4
<2019-03-15 04:50:31.907737> (info) -   0:Queuing block: ( 33041,  9) 2 of 4
<2019-03-15 04:50:31.907750> (info) -   0:Queuing block: ( 33041, 18) 3 of 4
<2019-03-15 04:50:31.907757> (info) -   0:Queuing block: ( 33041, 19) 4 of 4
<2019-03-15 04:50:31.907765> (info) -   0:Total Blocks queued for simulation: 4
<2019-03-15 04:50:31.907772> (info) -   0:Run ID = 'dce2c458-46dd-11e9-ae13-0242ac110002'
<2019-03-15 04:50:31.907777> (info) - modules loaded:
<2019-03-15 04:50:31.907788> (info) -   library: internal.flint, module name: AggregatorStockStep
<2019-03-15 04:50:31.907822> (info) -   library: internal.flint, module name: CalendarAndEventFlintDataSequencer
<2019-03-15 04:50:31.907856> (info) -   library: internal.flint, module name: TransactionManagerEndOfStepModule
<2019-03-15 04:50:31.907889> (info) -   library: internal.flint, module name: WriteVariableGrid
<2019-03-15 04:50:31.907934> (info) -   library: moja.modules.indonesia, module name: AggregatorError
<2019-03-15 04:50:31.907947> (info) -   library: moja.modules.indonesia, module name: AggregatorLandUnit
<2019-03-15 04:50:31.907954> (info) -   library: moja.modules.indonesia, module name: BuildLandUnitModule
<2019-03-15 04:50:31.907958> (info) -   library: moja.modules.indonesia, module name: DisturbanceEventModule
<2019-03-15 04:50:31.907962> (info) -   library: moja.modules.indonesia, module name: ForestDebrisModule
<2019-03-15 04:50:31.907966> (info) -   library: moja.modules.indonesia, module name: ForestGrowthModule
<2019-03-15 04:50:31.907970> (info) -   library: moja.modules.indonesia, module name: LandUnitSQLiteWriter
<2019-03-15 04:50:31.908000> (info) - Operation manager: Simple, Version: 1.0, Config: (Kahan[OFF], ZeroTransfers[OFF])
<2019-03-15 04:50:31.929962> (info) - LandUnitSQLiteWriter resolved output path is - /tmp/moja_runenv/data/output/results/dbs
<2019-03-15 04:52:28.705415> (info) -   0: Stats level [Block]: Record [    4 of     4]: Index [( 33041,  8)]: Time(ms) [Total:   116487, Processed:    61072]: Units [Total:   160000, Processed:   118826, NotProcessed:    41174, Errors:      474, LU/second:     1373]
<2019-03-15 04:55:26.058120> (info) -   0: Stats level [Block]: Record [    3 of     4]: Index [( 33041,  9)]: Time(ms) [Total:   176573, Processed:    90203]: Units [Total:   160000, Processed:   159643, NotProcessed:      357, Errors:      357, LU/second:      906]
<2019-03-15 04:55:40.313484> (info) -   0: Stats level [Block]: Record [    2 of     4]: Index [( 33041, 18)]: Time(ms) [Total:    13375, Processed:     9075]: Units [Total:   160000, Processed:    58764, NotProcessed:   101236, Errors:       75, LU/second:    11961]
<2019-03-15 04:56:55.407984> (info) -   0: Stats level [Block]: Record [    1 of     4]: Index [( 33041, 19)]: Time(ms) [Total:    74212, Processed:    43071]: Units [Total:   160000, Processed:   158473, NotProcessed:     1527, Errors:     1527, LU/second:     2155]
<2019-03-15 04:56:55.949926> (info) -   0:Summary of processing by Tile
<2019-03-15 04:56:55.949994> (info) -   0: Stats level [Tile]: Index [( 33041)]: Time(sec) [Total:   380000, Processed:   203000]: Units [Total:   640000, Processed:   495706, NotProcessed:   144294, Errors:     2433, LU/second:     1681]
<2019-03-15 04:56:55.950005> (info) -   0:Summary of processing for full run
<2019-03-15 04:56:55.950009> (info) -   0: Stats level [Global]: Time(sec) [Total:   380000, Processed:   203000]: Units [Total:   640000, Processed:   495706, NotProcessed:   144294, Errors:     2433, LU/second:     1681]
<2019-03-15 04:56:55.950014> (info) -   0:Start Time           : Fri Mar 15 04:50:32 2019 UTC
<2019-03-15 04:56:55.950019> (info) -   0:Finish Time          : Fri Mar 15 04:56:55 2019 UTC
<2019-03-15 04:56:55.950024> (info) -   0:Total Time (seconds) : 383
<2019-03-15 04:56:56.177075> (info) - Loading date_dimension
<2019-03-15 04:56:56.211498> (info) - Loading poolinfo_dimension
<2019-03-15 04:56:56.268991> (info) - Loading tileinfo_dimension
<2019-03-15 04:56:56.317375> (info) - Loading locationnontemp_dimension
<2019-03-15 04:56:56.350662> (info) - Loading locationtemp_dimension
```

