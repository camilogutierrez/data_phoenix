include: "/facturacion/views/ft_suscripcion_cambios_plan.view.lkml"

explore: ft_suscripcion_cambios_plan {
  from: ft_suscripcion_cambios_plan_view
  label: "Suscripcion Cambios Plan"
  group_label: "Phoenix"
}
