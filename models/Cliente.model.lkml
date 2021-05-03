connection: "edw"

# include all the views
include: "/views/**/*.view"

datagroup: Parque_Cuenta_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: Parque_Cuenta_default_datagroup


#explore: dm_orden {
#  join: dm_orden__orden_item {
#    view_label: "Dm Orden: Ordenitem"
#    sql: LEFT JOIN UNNEST(${dm_orden.orden_item}) as dm_orden__orden_item #;;
  #  relationship: one_to_many
  #}
# }



explore: dm_producto_adquirido {
  label: "Parque Producto"


 always_filter: {
    filters: [ dm_producto_adquirido.fecha_entidad_date: "30 days"]
  }

  join: dm_producto_adquirido__geografia {
    view_label: "Producto Adquirido: Geografia"
    sql: LEFT JOIN UNNEST(${dm_producto_adquirido.geografia}) as dm_producto_adquirido__geografia ;;
    relationship: one_to_many
  }
  join: dm_producto {
    sql_on: ${dm_producto.producto_srcid} =  ${dm_producto_adquirido.producto_srcid} and ${dm_producto.fecha_entidad_date} =  ${dm_producto_adquirido.fecha_entidad_date} ;;
    relationship: many_to_one
  }
  join: dm_cuenta {
    sql_on:${dm_producto_adquirido.cuenta_propiedad_srcid} = ${dm_cuenta.cuenta_srcid} and ${dm_cuenta.fecha_entidad_date} =  ${dm_producto_adquirido.fecha_entidad_date};;
    relationship: many_to_one
  }


  join: dm_medio_pago {
    sql_on:${dm_cuenta.cuenta_medio_de_pago_id} = ${dm_medio_pago.medio_pago_srcid} ;;
    relationship: many_to_one
  }
  join: dm_orden {
    sql_on:${dm_producto_adquirido.producto_adquirido_orden_item_srcid} = ${ dm_orden.orden_item_srcid} and ${dm_cuenta.fecha_entidad_date} =  ${dm_producto_adquirido.fecha_entidad_date} ;;
    relationship: many_to_one
  }
  join: dm_rango_numeracion {
    sql_where:${dm_producto_adquirido.producto_adquirido_numero_linea } >= ${dm_rango_numeracion.rango_numeracion_numero_linea_desde} AND
    ${dm_producto_adquirido.producto_adquirido_numero_linea } <=
    ${dm_rango_numeracion.rango_numeracion_numero_linea_hasta}} ;;
    relationship: many_to_one
  }
  join: dm_individuo {
    sql_on:${dm_cuenta.cuenta_srcid} = ${ dm_individuo.cuenta_srcid}
    and ${dm_individuo.fecha_entidad_date} =  ${dm_producto_adquirido.fecha_entidad_date} ;;
    relationship: many_to_one
  }
}
