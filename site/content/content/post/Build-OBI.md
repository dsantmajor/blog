+++
menu = "main"
Categories = ["Development","GoLang"]
Tags = ["Development","golang"]
Description = ""
date = "2017-06-13T10:50:55Z"
title = "Build OBI Client"

+++
#### **Note on how OBI is currently built**
#### **Table of Contents**
 1. CI Server Details
 2. Source Code Repository
 3. Artifact Store
 4. How it All works
 5. Who has Access
 6. Gotchas

 **CI Server Details**

 Currently Bamboo is the CI server that builds the OBi Client ,the design principle is Build once deploy many

 [BUILD-OBi Client](https://bamboo.iag.com.au/bamboo1/build/admin/edit/editBuildTasks.action?buildKey=COPPEROBI-BUILDOBICLIENT-JOB1)

 1. Source Code Checkout
 ```checkout - obi-client
    Repository: obi-client
    ${bamboo.checkout.dir}
 ```
 2. Script  ```Inline ``` ```Working sub dirrectory```

 ```
      echo
      echo
      echo " ****************************************** "
      echo " *                                        * "
      echo " * DELETING node_modules...               * "
      echo " *                                        * "
      echo

      rm -rf node_modules

      echo
      echo " * DONE.                                  * "
      echo " *                                        * "
      echo " ****************************************** "
      echo

```

 3. Command

 ```
     npm - run bamboo:installSemantic
     NpmCommand
     run bamboo:installSemantic

 ```

 4. Command

 ```
     npm - run bamboo:prebuild
     NpmCommand
     run bamboo:prebuild

 ```

 5. Command

 ```
     npm - run bamboo:build
     NpmCommand
     run bamboo:build

 ```
 6. Script
 7. Script
 8. Source Code Checkout

 ```
     checkout - docker-rancher-utils
     Repository: docker-rancher-utils
     No Specific checkout Dir
 ```

 9. Script
 ```script - copy docker-build to projects docker folder```

```
      echo " "
      echo " ************************************************************************ "
      echo " ***                                                                  *** "
      echo " *** Copying docker-build scripts to ${bamboo.checkout.dir}/docker "
      echo " ***                                                                  *** "

      cp -r docker-build/* ${bamboo.checkout.dir}/docker

      echo " ***                                                                  *** "
      echo " *** Done.                                                            *** "
      echo " ***                                                                  *** "
      echo " ************************************************************************ "
      echo " "


```

 10. Script

```
      script - process releas

      File

      Script file: process-hash-release.sh

      Argument: "${bamboo.planRepository.repositoryUrl}" "${bamboo.planRepository.branch}"

      Working sub Dir: ${bamboo.checkout.dir}/docker

```

 11. Script
 12. Inject Bamboo Variables

```
inject - set release.version value

path to properties file:
${bamboo.checkout.dir}/docker/release.properties

Namespace:
release

Scope of the variables
Result

```

 13. Script

 ```
script - slack-ping.pl
Inline
perl slack-ping.pl

 ```
