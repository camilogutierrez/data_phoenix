connection: "edw"

include: "/caso/explores/*.explore.lkml"
# Caching settings

datagroup: default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: default_datagroup

# Case sensitive en filtros

case_sensitive: no

# }
