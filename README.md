# Boilerplate Project

A boilerplate project created in flutter using Flutter Bloc and Clean Architecture.

## Getting Started

The Boilerplate contains the minimal implementation required to create a new library or project. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new project. By using boiler plate code as standard initializer, we can have same patterns in all the projects that will inherit it. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

**Get Dependencies**

Execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Code Generation**

Execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## Boilerplate Features:

* Flavor
* Routing(comming)
* Clean Architecture (comming)
* Dio (Network)(comming)
* Futter Bloc (State Management)(comming)
* Assets Generation(comming)
* Logging(comming)
* Dependency Injection Generation(comming)
* Generate Mapper betwwen DTO and Entity(comming)
* Multi localization(comming)

### Libraries & Tools Used

* [Generate Assets Defined](https://pub.dev/packages/flutter_gen_runner)
* [Support Svg file](https://pub.dev/packages/flutter_svg)
* [Auto Route](https://pub.dev/packages/auto_route)
* [Dependency Injection](https://pub.dev/packages/get_it)
* [DI Generation](https://pub.dev/packages/injectable)
* [Generate Mapper](https://pub.dev/packages/mapper)
* [Bloc State Management](https://pub.dev/packages/flutter_bloc)
* [Localization](https://pub.dev/packages/intl)
* [Util Localization](https://pub.dev/packages/intl_utils)

### Flavor

* The Boilerplate have 3 flavor: dev, stag and prod. Environment Varialbles will be got from env file for each flavor.
* Dev flavor is run with ```lib/main_dev.dart```, Suffix of Package Name/Bundle Id is ```.dev```, Prefix of App Name is ```[DEV]```
* Stag flavor is run with ```lib/main_stag.dart``` and Suffix of Package Name/Bundle Id is ```.stag```, Prefix of App Name is ```[STAG]```
* Prod flavor is run with ```lib/main.dart``` and Have no suffix for Package Name/Bundle Id, Have no prefix in App Name.

#### Setup Flavor

Reference: https://docs.flutter.dev/deployment/flavors


