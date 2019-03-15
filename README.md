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

