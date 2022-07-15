include: "/recargas/views/ft_recargas_full.view.lkml"
include: "/aleph/views/*.view.lkml"
include: "/global/views/lk_rango_numeracion_*.view.lkml"


explore: ft_recargas_full {
  label: "Recargas"

  join: lk_producto_adquirido_estado {
    relationship: many_to_one
    sql_on: ${producto_adquirido_estado_sk} = ${lk_producto_adquirido_estado.producto_adquirido_estado_sk} ;;
    type: inner
  }

  join: lk_rango_numeracion_prefijos {
    relationship: many_to_one
    sql_on: ${ft_recargas_full.rango_numeracion_prefijos} = ${lk_rango_numeracion_prefijos.rango_numeracion_prefijos} ;;
    type: inner
  }

  join: lk_rango_numeracion_prefijo_interurbano {
    relationship: many_to_one
    sql_on: ${ft_recargas_full.rango_numeracion_prefijo_interurbano} = ${lk_rango_numeracion_prefijo_interurbano.rango_numeracion_prefijo_interurbano} ;;
    type: inner
  }

  join: lk_rango_numeracion_departamento {
    relationship: many_to_one
    sql_on: ${ft_recargas_full.rango_numeracion_departamento_srcid} = ${lk_rango_numeracion_departamento.rango_numeracion_departamento_srcid} ;;
    type: inner
  }

  join: lk_rango_numeracion_provincia {
    relationship: many_to_one
    sql_on: ${ft_recargas_full.rango_numeracion_provincia_srcid} = ${lk_rango_numeracion_provincia.rango_numeracion_provincia_srcid} ;;
    type: inner
  }

  join: lk_rango_numeracion_localidad {
    relationship: many_to_one
    sql_on: ${ft_recargas_full.rango_numeracion_localidad_srcid} = ${lk_rango_numeracion_localidad.rango_numeracion_localidad_srcid} ;;
    type: inner
  }

}
