include: "/facturacion/views/ft_cuenta_cambios_ciclo.view.lkml"

explore: ft_cuenta_cambios_ciclo {
  from: ft_cuenta_cambios_ciclo_view
  label: "Cuenta Cambios de Ciclo"
  group_label: "Phoenix"
}
