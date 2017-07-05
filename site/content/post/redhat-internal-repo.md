+++
date = "2017-06-14T02:00:05Z"
title = "Setting up Redhat internal repo IAG"
menu = "main"
Categories = ["Development","GoLang"]
Tags = ["Development","golang"]
Description = ""

+++

### **Setting up the Redhat internal repo for yumupdates**
#### **Table of Contents**
 1. Create the file  internalrepo.repo at /etc/yum.repos.d/ if it doest exist
 2. Contents of the file
 3. Run Commands

 1. #### /etc/yum.repos.d/internalrepo.repo
 vi /etc/yum.repos.d/internalrepo.repo

 2. #### Update this file with the below content

 ```
 [rhel-x86_64-server-7]
 name=Red Hat Enterprise Linux 7 - $basearch
 baseurl=http://ulpmir001.auiag.corp/rhel-71-x86_64-repo/rhel-x86_64-server-7/
 enabled=1
 gpgcheck=1
 gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
 proxy=_none_
 priority=1

 [rhel-x86_64-common-7]
 name=Red Hat Enterprise Linux 7 Common - $basearch
 baseurl=http://ulpmir001.auiag.corp/rhel-71-x86_64-repo/rhel-x86_64-server-rh-common-7/
 enabled=1
 gpgcheck=1
 gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
 proxy=_none_
 priority=1

 [rhel-x86_64-extras-7]
 name=Red Hat Enterprise Linux 7 Extras - $basearch
 baseurl=http://ulpmir001.auiag.corp/rhel-71-x86_64-repo/rhel-x86_64-server-extras-7/
 enabled=1
 gpgcheck=1
 gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
 proxy=_none_
 priority=1

 [rhel-x86_64-optional-7]
 name=Red Hat Enterprise Linux 7 Optional - $basearch
 baseurl=http://ulpmir001.auiag.corp/rhel-71-x86_64-repo/rhel-x86_64-server-optional-7/
 enabled=1
 gpgcheck=1
 gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
 proxy=_none_
 priority=1

 [rhel-x86_64-collections-7]
 name=Red Hat Enterprise Linux 7 Red Hat Software Collections - $basearch
 baseurl=http://ulpmir001.auiag.corp/rhel-71-x86_64-repo/rhel-x86_64-server-7-rhscl-1/
 enabled=1
 gpgcheck=1
 gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
 proxy=_none_
 priority=1

 ```

3. Run these commands

```
      $ sudo yum -y install yum-plugin-priorities
      $ sudo yum repolist
```
