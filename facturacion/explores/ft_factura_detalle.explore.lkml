include: "/facturacion/views/ft_factura_detalle.view.lkml"

explore: ft_factura_detalle {
  label: "Factura Detalle"
  group_label: "Facturacion"
}

## Quick Starts

explore: +ft_factura_detalle {
    query: facturacion_venta_dispositivos {
      dimensions: [charge_code, invoice_date_month, payment_method_desc, total_installment, trans_type]
      measures: [count_legal_no_venta_neta, total_gross_amt]
      filters: [
        ft_factura_detalle.charge_code: "\"C_OT_MB_EQUIPMENT_PHONES\",\"C_OT_TV_EQUIPMENT_ELECTRODOM\"",
        ft_factura_detalle.invoice_date_month: "1 months",
        ft_factura_detalle.legal_no: "-NULL",
        ft_factura_detalle.trans_type: "-BLL"
      ]
      label: "Facturacion de Venta de Dispositivos"
    }
}
