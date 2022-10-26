include: "/retencion/views/fth_retencion_fidelizacion.view.lkml"
include: "/retencion/views/lk_cierres_retencion_fidelizacion.view.lkml"
include: "/retencion/others/retencion_datagroups.lkml"


explore: fth_retencion_fidelizacion {
  label: "Retencion y Fidelizacion"
  group_label: "Retencion y Fidelizacion"

  always_filter: {
    filters: [fth_retencion_fidelizacion.fecha_entidad: "today"]
  }

  persist_with: retencion_default_dg


  ## For Filter Suggestions
  join: lk_cierres_retencion_fidelizacion {
    view_label: "Cierres"
    relationship: many_to_one
    sql_on: ${fth_retencion_fidelizacion.fecha_entidad} = ${lk_cierres_retencion_fidelizacion.fecha_entidad} ;;
  }

}
