# @summary Dynamic parameters for the solr class.
#
class solr::params (
){

  # OS Specific configuration
  case $::osfamily {
    'RedHat': {
      $required_packages  = ['unzip','lsof','wget']
      $java_home          = '/usr/lib/jvm/jre-1.8.0'
      $solr_env           = '/etc/sysconfig/solr'
      $java_package       = 'java-1.8.0-openjdk'
      if versioncmp($::os['release']['full'], '7.0') >= 0 {
        $is_systemd = true
      } else {
        $is_systemd = false
      }
    }
    'debian':{
      $java_home = '/usr/lib/jvm/java-8-openjdk-amd64/jre'
      $solr_env  = '/etc/default/solr'
      if $::os['name'] == 'Ubuntu' and versioncmp($::os['release']['full'], '15.04') >= 0 {
        $is_systemd        = true
        $required_packages = ['unzip','lsof','software-properties-common', 'wget']
      } else {
        $is_systemd        = false
        $required_packages = ['unzip','lsof','wget']
      }
      $java_package = 'openjdk-8-jre'
    }
    default: {
      fail("Unsupported OS ${::osfamily}. Please use a debian or redhat based system")
    }
  }
}
