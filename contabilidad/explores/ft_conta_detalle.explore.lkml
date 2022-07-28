include: "/contabilidad/views/ft_conta_detalle.view.lkml"

explore: ft_conta_detalle {
  label: "Detalle Contabilidad"
  group_label: "Contabilidad"

  always_filter: {
    filters:[ft_conta_detalle.cr_accounting_date: "today"]
  }
}
