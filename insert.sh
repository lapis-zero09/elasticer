#!/bin/bash

# ref: http://www.fuzihao.org/blog/2018/01/01/Struggling-in-importing-wikipedia-into-Elasticsearch/
wget https://artifacts.elastic.co/downloads/logstash/logstash-6.1.1.zip
unzip logstash-6.1.1.zip

curl -XPUT 'http://localhost:9200/jawiki/' -d'
{
    "settings": {
        "index":{
            "analysis":{
                "analyzer" : {
                    "default" : {
                        "tokenizer" : "kuromoji_neologd_tokenizer"
                    }
                }
            }
        }
    }
}
'

bunzip2 -c ~/Downloads/jawiki-20180701-pages-articles-multistream.xml.bz2 | ./logstash-6.1.1/bin/logstash -f wikipedia.conf
