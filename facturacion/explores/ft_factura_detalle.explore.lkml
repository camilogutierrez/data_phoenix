include: "/facturacion/views/ft_factura_detalle.view.lkml"

explore: ft_factura_detalle {
  from: ft_factura_detalle_view
  label: "Factura Detalle"
  group_label: "Phoenix"
}
