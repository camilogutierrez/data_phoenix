include: "/portabilidad/views/fth_portabilidad.view.lkml"
include: "/aleph/views/*.view.lkml"
include: "/portabilidad/views/lk_cierres_portabilidad.view.lkml"
include: "/portabilidad/others/portabilidad_datagroups.lkml"
include: "/global/views/lk_rango_numeracion_*.view.lkml"


explore: fth_portabilidad {
  label: "Cross Market"
  group_label: "Portabilidad"

  always_filter: {
    filters: [fth_portabilidad.fecha_entidad: "today"]
  }

  persist_with: portabilidad_default_dg


  ## For Filter Suggestions

  join: lk_cierres_portabilidad {
    view_label: "Cierres"
    relationship: many_to_one
    sql_on: ${fth_portabilidad.fecha_entidad} = ${lk_cierres_portabilidad.fecha_entidad} ;;
    type: inner
  }

  join: lk_porta_mov_tipo_portacion {
    relationship: many_to_one
    sql_on: ${fth_portabilidad.porta_mov_tipo_portacion_sk} = ${lk_porta_mov_tipo_portacion.porta_mov_tipo_portacion_sk} ;;
  }

  join: lk_rango_numeracion_prefijos {
    relationship: many_to_one
    sql_on: ${fth_portabilidad.rango_numeracion_prefijos} = ${lk_rango_numeracion_prefijos.rango_numeracion_prefijos} ;;
    type: inner
  }

  join: lk_rango_numeracion_prefijo_interurbano {
    relationship: many_to_one
    sql_on: ${fth_portabilidad.rango_numeracion_prefijo_interurbano} = ${lk_rango_numeracion_prefijo_interurbano.rango_numeracion_prefijo_interurbano} ;;
    type: inner
  }

}
