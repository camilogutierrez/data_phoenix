connection: "edw"

include: "/views/aleph/aleph.view.lkml"

# Caching settings

datagroup: default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: default_datagroup

  # Case sensitive en filtros

case_sensitive: no

explore: aleph {
  group_label: "Phoenix"
  description: "Lista las entidades asociadas al proceso de normalización denominado ALEPH
                con sus correspondientes elementos y valores preestablecidos."

}
