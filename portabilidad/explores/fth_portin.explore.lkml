include: "/portabilidad/views/fth_portin.view.lkml"
include: "/portabilidad/views/lk_cierres_portin.view.lkml"
include: "/portabilidad/others/portabilidad_datagroups.lkml"
include: "/global/views/lk_rango_numeracion_*.view.lkml"
include: "/global/views/dm_nomina.view.lkml"


explore: fth_portin {
  label: "Gestiones Portin"
  group_label: "Portabilidad"

  always_filter: {
    filters: [fth_portin.fecha_entidad: "today"]
  }

  persist_with: portabilidad_default_dg

  join: lk_cierres_portin {
    view_label: "Cierres"
    relationship: many_to_one
    sql_on: ${fth_portin.fecha_entidad} = ${lk_cierres_portin.fecha_entidad} ;;
    type: inner
  }

  join: dm_nomina {
    view_label: "Nomina"
    relationship: many_to_one
    sql_on: ${fth_portin.portin_nomina_periodo_creacion_usuario_fk} = ${dm_nomina.pk} ;;
    type: left_outer
  }

  ## For Filter Suggestions

  join: lk_rango_numeracion_prefijos {
    relationship: many_to_one
    sql_on: ${fth_portin.geografia_rango_numeracion_prefijos} = ${lk_rango_numeracion_prefijos.rango_numeracion_prefijos} ;;
    type: inner
  }

  join: lk_rango_numeracion_prefijo_interurbano {
    relationship: many_to_one
    sql_on: ${fth_portin.geografia_rango_numeracion_prefijo_interurbano} = ${lk_rango_numeracion_prefijo_interurbano.rango_numeracion_prefijo_interurbano} ;;
    type: inner
  }

  join: lk_rango_numeracion_provincia {
    relationship: many_to_one
    sql_on: ${fth_portin.geografia_rango_numeracion_provincia_srcid} = ${lk_rango_numeracion_provincia.rango_numeracion_provincia_srcid} ;;
    type: inner
  }

  join: lk_rango_numeracion_departamento {
    relationship: many_to_one
    sql_on: ${fth_portin.geografia_rango_numeracion_departamento_srcid} = ${lk_rango_numeracion_departamento.rango_numeracion_departamento_srcid} ;;
    type: inner
  }

  join: lk_rango_numeracion_localidad {
    relationship: many_to_one
    sql_on: ${fth_portin.geografia_rango_numeracion_localidad_srcid} = ${lk_rango_numeracion_localidad.rango_numeracion_localidad_srcid} ;;
    type: inner
  }
}
