# This class test the default parameters of solr.
# To access the web console, use the following address:
# http://192.168.33.10:8983/solr
#
class{'solr':
  version => '7.7.2',
}

solr::core{'test':}
