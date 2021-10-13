include: "/facturacion/views/ft_factura_cabecera.view.lkml"

explore: factura_cabecera {
  from:  ft_factura_cabecera_view
  group_label: "Phoenix"
}
