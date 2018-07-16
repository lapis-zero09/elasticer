#!/bin/bash
curl 'localhost:9200/jawiki/_analyze?pretty' --data-binary '{
"explain":"false",
"text":"10日放送の「中居正広のミになる図書館」（テレビ朝日系）で、SMAPの中 居正広が、篠原信一の過去の勘違いを 明かす一幕があった。"
}'
