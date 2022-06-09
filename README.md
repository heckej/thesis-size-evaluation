# Size impact evaluation of lambda merging

This repository contains the configuration files and results of transforming a set of test applications (listed in [`test-apps.csv`](test-apps.csv)) with both ProGuard and R8.

## Configurations

The folder [`configurations`](configurations) contains for each app all the ProGuard and R8 configuration files that have been used to transform the test application. The names of the configurations are based on the transformations that are applied in that order. For example, the configuration `shrink-optimize-lg-obfuscate.pro` will let ProGuard performing shrinking, followed by optimisation, then lambda merging and finally obfuscation. On the other hand, `shrink-lg-optimize-obfuscate.pro` will apply lambda merging before the optimisation step.

## Mapping files

The folder [`lambda-group-mappings`](lambda-group-mappings) contains for each app the lambda group mapping files that resulted from the lambda merging optimisations performed by ProGuard. There are 3 different mappings:

* `lambdagroups.txt`: this mapping is the result of applying only lambda merging (see configuration `lg-config.pro`).
* `lambdagroups-shrink.txt`: this mapping is the result of applying lambda merging after shrinking (see configuration `shrink-lg-config.pro`).
* `lambdagroups-optimize.txt`: this mapping is the result of applying lambda merging after shrinking and optimisation (see configuration `shrink-optimize-lg.pro`).

## Results

The file [`results.csv`](results.csv) lists the sizes of the original application jars and the jars that resulted from the transformations. For the evaluation R8 3.3.28 and a [version of ProGuard 7.2.2 which was extended to implement lambda merging](https://github.com/heckej/proguard) were used.

## About this project

This project is part of my Master in Computer Science thesis, for which I implemented lambda merging in ProGuard. The implementation can be found in my [ProGuard fork](https://github.com/heckej/proguard).
