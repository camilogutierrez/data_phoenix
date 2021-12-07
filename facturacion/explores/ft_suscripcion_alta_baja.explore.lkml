include: "/facturacion/views/ft_suscripcion_alta_baja.view.lkml"

explore: ft_suscripcion_alta_baja {
  from: ft_suscripcion_alta_baja_view
  label: "Suscripcion Alta Baja"
  group_label: "Phoenix"
}
