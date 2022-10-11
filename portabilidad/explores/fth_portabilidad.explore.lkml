include: "/portabilidad/views/fth_portabilidad.view.lkml"
include: "/aleph/views/*.view.lkml"
#include: "/parque/views/lk_cierres_parque.view.lkml"
#include: "/parque/others/parque_datagroups.lkml"
#include: "/global/views/lk_rango_numeracion_*.view.lkml"


explore: fth_portabilidad {
  label: "Cross Market"
  group_label: "Portabilidad"

  always_filter: {
    filters: [fth_portabilidad.fecha_entidad: "today"]
  }

}
