include: "/facturacion/views/ft_cuenta_cambios_ciclo.view.lkml"

explore: cuenta_cambios_ciclo {
  from: ft_cuenta_cambios_ciclo_view
  group_label: "Phoenix"
}
