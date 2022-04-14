# This class test the default parameters of solr.
# To access the web console, use the following address:
# http://192.168.33.10:8983/solr
#

# Test different java versions
#$solr_java_version = '11'
$solr_java_version = '8'

case $solr_java_version {
  '11' : {
    $java_home = "/usr/lib/jvm/java-${solr_java_version}-openjdk-amd64"
  }
  '8' : {
    $java_home = "/usr/lib/jvm/java-${solr_java_version}-openjdk-amd64/jre"
  }
  default : {
    $java_home = "/usr/lib/jvm/java-${solr_java_version}-openjdk-amd64"
  }
}

#class{'java':
#  distribution => 'jre',
#  package      => "openjdk-${solr_java_version}-jre",
#}

class{'solr':
  #solr_options => [ '-Dlog4j2.formatMsgNoLookups=true'],
  #version     => '7.7.2',
  version     => '8.11.1',
  #manage_java => false,
  #java_home   => $java_home,
}

solr::core{'test':}
