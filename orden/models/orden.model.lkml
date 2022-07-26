connection: "edw"
case_sensitive: no

include: "/orden/explores/fth_orden.explore.lkml"

map_layer: arg_provinces {
  file: "/global/maps/argentina-provinces-v3.json"
  format: topojson
  label: "Provincia"
  property_key: "NAME_1"
}
