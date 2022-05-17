include: "/parque/views/fth_parque.view.lkml"

explore: fth_parque {
  label: "Parque"
  group_label: "Parque"

  always_filter: {
    filters: [fth_parque.fecha_entidad_date: "today"]
  }

}
