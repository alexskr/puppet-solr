# Solr Puppet Module Changelog

## 2022-04-05 Version 6.0.11

- ISSUE #30 Changed the default Solr version to 6.6.6.
- ISSUE #30 Fixed a configuration error for solr versions less than 6.3.0.
- Clarified documentation for install_options parameter.

## 2022-03-02 Version 6.0.10

- ISSUE 28 - Removed a GC optimization in order for Java 9+ compatibility.
- Updated OS Version Facts.
- Added a parameter for disabling java management.
- ISSUE 29 - Fixed issue with Solr version 6+ and puppet management of log file.

## 2022-01-24 Version 6.0.9

- Updated systemd file to fix an issue on Redhat based systems.
- Removed ExecRestart and ExecStatus from systemd configuration as is depricated.
- Fixed a warning about String to Integer coercision for parsing major version.

## 2021-12-13 Version 6.0.8

- Changed the dependencies for systemd.

## 2021-06-11 Version 6.0.7

- ISSUE 27 - Added parameters for controlling the Limit's for NoFile and NProc.

## 2021-03-11 Version 6.0.6

- Migrated to puppet-functional-tester for testing.
- ISSUE 24 - Fixed ownership to use defined user instead of hard coded entry.
- ISSUE 25 - Solr 8 warns the open file limit is too small so added configuration in systemd to fix.
- ISSUE 26 - Added a parameter to prevent zookeeper service from starting before solr service.

## 2021-02-19 Version 6.0.5

- Fixed permissions issues for log4j configuration.

## 2021-02-16 Version 6.0.4

- Fix in the metadata file to enable Ubuntu 20.04.

## 2021-02-16 Version 6.0.3

- Added support for directly managing the SOLR_JAVA_MEM parameter.  Usage of SOLR_JAVA_MEM disables the SOLR_HEAP parameter.
  This change will not effect the SOLR_HEAP usage if SOLR_JAVA_MEM is unspecified.
- Added support for Ubuntu 20.04.

## 2021-02-11 Version 6.0.2

- Added user credentials for password protected sites for downloading the solr package.

## 2021-01-26 Version 6.0.1

- Fixed the testing environment to use Puppet 6 instead of Puppet 5.

The following changes are community contributions from [Issue 21](https://bitbucket.org/landcareresearch/puppet-solr/issues/21/fix-startup-add-timezone-and-manage-some).

- Added an install_options variable with a default value of -n to prevent Solr from starting after it is first installed. This will prevent the init.d script and systemd service from failing after a fresh install (as they would try start Solr a second time, failing to bind to the Solr port). A reboot would normally fix this but it is also nice to have a way of controlling the install options. Note: I have only tested with systemd.
- Added a paramter for setting the timezone.
- Added an explicit definition for the solr.log file.
- Added an explicit definition for the solr_core_home directory so that creating cores from the Solr admin console works (i.e. without defining cores in Puppet).

## 2020-03-13 Version 6.0.0

- Updated module to be PDK compliant for Puppet 6.
- Changed version to 6.x.x to demonstrate Puppet 6 compatiblity.
- Updated vagrant testing dependencies.

## 2020-01-06 Release 0.9.0

- Fixed a bug in a template where a variable that could have an undef value was being used in a function that required a non undef value.
- wget pupet module has been deprecated, so wget puppet module has been replaced by [Archive](https://forge.puppet.com/puppet/archive).
- Removed timeout parameter as its no longer applicable due to archive replacing wget.
- Updated systemd puppet module version dependency.
- Updated apt puppet module version dependency.
- Fixed an issue with ruby styling.

## 2019-11-15 Release 0.8.0

- Changed wget dependency.
- Increased stdlib's minimum version to 5.0.0.
- Updated vagrant directory for testing.
- Removed anchor pattern
- Automatically restarts the service if a new core configuration is added.
- Removed defaults for currency_src_file and elevate_src_file as there are no defaults in Solr 7+ default configuration.
- Fixed an issue with the configuration directory name for cores for solr 7+.
- Removed Ubuntu 12.0 and 14.04 support.

## 2019-10-30 Release 0.7.1

- Used PDK convert to comply with Puppetforge requirements.
- Fixed a ruby linting warning for lib code.
- Updated license in metadata.
- Added Ubuntu 18.04 support.

## 2019-10-29 Release 0.7.0

- Reformatted Changelog to comply with Markdown Linting.
- Updated Readme to comply with Markdown Linting.
- Applied PR by Kris Anderson that fixes an issue with logging on Solr versions above 7.4.0.

## 2018-10-29 Release 0.6.3

- Converted erb to epp for all templates.
- Removed erb files.
- Fixed issue with optional values in epps.
- Fixed issue with syntax error in template.

## 2018-10-01 Release 0.6.2

- Updated metadata's GPL License to comply with [SPDX License](https://spdx.org/licenses/) 3.2
- Changed source in metadata.
 
## 2018-10-01 Release 0.6.1

- [Issue #14](https://bitbucket.org/landcareresearch/puppet-solr/issues/14/is-there-a-way-to-override-ssl-setting-in) - Added SSL Keystore parameters for solr config file.
- Moved solr config file to use epp file format instead of erb.
- Formatted changelog for consistency.
 
## 2018-08-07 Release 0.6.0

- Changed the type for the timeout variable from String to Integer.
- Fixed issue where timeout variable wasn't being used by download program.

## 2018-07-12 Release 0.5.15

- Added data types to parameters.
- Switched to puppet strings documentation style.
- Added reference documentation.
- Removed class parameters from readme.
- Changed formatting in changelog.

## 2018-04-05 Release 0.5.14

- Updated readme with correct installation directory as default.
- Updated readme with note about java requirement.

## 2018-01-22 Release 0.5.13

- Removed installation of oracle's java 8.
- Switched deb based operating systems to use openjdk instead of oracle.
- The change was due to unreliability of the ppa to install oracle java.

## 2017-12-15 Release 0.5.12

- Added a 'schema_name' parameter to customize the 'schema' property in a core's 'core.properties' file. (contributed by Josh Beard)

## 2017-12-06 Release 0.5.11

- A bug was introduced in version 0.5.1 which removed the default solr home parameter. This release fixes that bug.

## 2017-12-05 Release 0.5.10

- Added a parameter to set the loglevel for log4j.

## 2017-12-04 Release 0.5.9

- Added ubuntu 16.04 support
- Fixed an issue with an option 'SOLR_OPTS' delcared in multiple configuration files.

## 2017-11-06 Release 0.5.8

- Fixed a syntax problem for puppet 5.

## 2017-10-03 Release 0.5.7

- Added log4j support (contributed by Maxilian Stinsky)
- Added manage user parameter (contributed by hundredacres)
- Fixed OS Family for Redhat Systems (contributed by hundredacres)

## 2017-08-14 Release 0.5.6

- Renamed parameter 'user' to 'solr_user'
- Added parameter for disabling the installation of java
- Added parameter for configuring ZooKeeper ensemble

## 2017-04-18 Release 0.5.5

- Fixed a minor bug with the solr_heap variable set incorrectly

## 2017-04-05 Release 0.5.4

- Updated required packages for Ubuntu 16.04.
- Updated url to archive.apache.org.
- Updated gemfile for puppet 4 compliance.
- Updated systemd puppet version.

## 2016-11-02 Release 0.5.3

- The schema filename was set to managed-schema for version 5.5.0 and up.
  However, I confirmed this was incorrect for at least version 5.5.3.
  So I changed the conditional to 5.6.0 to use managed-schema and previous
  versions to use schema.xml
- Added a new parameter set to false for managing the solr_install directory.
  By default, its /opt which can easily cause dependency cycles when 
  used with other puppet modules.

## 2016-10-10 Release 0.5.2

## 2016-10-10 Release 0.5.1

- Removed the LSB dependency for redhat systems.
- Updated readme to set a new dependency for solr version supported by this module.

## 2016-08-05 Release 0.5.0

- Updated for Solr6
- Installation uses the production installation script provided by solr.
- Switched to using Java 8.
- Debian based distros use Oracle Java 8 and redhat based use openjdk.
- Java 7 no longer supported.
- Added scripts for testing all supported versions via vagrant.

## 2016-06-28 Release 0.4.0

## 2016-06-28 Release 0.3.7

- Added the flexibility of specifying additional core configuration parameters.
- Added parameters for changing the home and logs dirs.
- Changed default solr version to 5.5.2

## 2016-03-21 Release 0.3.6

- Added support for systemd
- Added new parameter to set the jetty heap size

## 2015-10-19 Release 0.3.2

- [Issue #2](https://jira.landcareresearch.co.nz/browse/DEVOPSPN-359) - added package lsof.

## 2015-09-02 Release 0.3.1

- Fixed a dependency issue causing a fatal installation error.

### Known Issues

- Solr service does not start.  Requires a manual ```service solr start```

## 2015-09-02 Release 0.3.2

- The owner/group of logs directory.

## 2015-09-01 Release 0.3.1

- Added a mechanism to install shared libraries for solr.
- Changed default version of solr from 4.10.3 to 5.3.0.
- Fixed readme typos.

## 2015-09-01 Release 0.3.0

- Added compatability for Solr 5.x
- Is no longer compatible with Solr 4.x
- Removed puppet archive requirement
- Added puppet wget requirement

## 2015-03-17 Release 0.2.3

- Updated Readme to reflect migration to bitbucket and removed author as to promote open source.

## 2015-03-17 Release 0.2.2

- There was an issue with the version that was dependant on the version in the params instead of the specified version.

## 2015-03-17 Release 0.2.1

- Set the java home & java path so that jetty uses the defined java within solr 
  currently using java 7.

## 2015-03-16 Release 0.2.0

- Added a timeout param for downloading the solr package.
- Added a variable to ensure the solr/conf directory is created and managed by puppet.
- Removed parameters from params class and made into variables.  
- Moved variables depending on user settings into init.pp
- Added a defined type for installing cores based on the collections1 example.
- Fixed incorrect puppetforge badge.

### Known Issues

- Does not work with Solr 5.0.x

## 2015-03-04 Release 0.1.1

- Migrated from github to bitbucket
- Changed ownership of puppetforge account
- Created Changelog file.
