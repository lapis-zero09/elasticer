# elasticer

## install

```bash
docker-compose build
docker-compose up -d

 ~~~
# download wiki dump data from:
#   https://dumps.wikimedia.org/jawiki/latest/

sh insert.sh
```


## search test


### from curl

```bash
sh search_example.sh
```

### from kibana

from kibana dev tools console
```
GET _search
{
  "query" : {
    "simple_query_string" : {
      "query": "ほげ",
      "fields": ["_all"],
      "default_operator": "and"
    }
  }
}
```