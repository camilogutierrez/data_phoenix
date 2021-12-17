view: ft_factura_detalle {
  sql_table_name: @{gcp_dataset_pub}.FT_FacturaDetalle` ;;
  suggestions: no
  label: "Factura Detalle"

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: number
    sql:  ${invoice_detail_id} ;;
  }

  ## Dates

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.INVOICE_DATE ;;
    datatype: timestamp
    label: "Creacion"
    group_label: "Fecha Creacion"
  }

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.DUE_DATE ;;
    datatype: timestamp
    label: "Vencimiento"
    group_label: "Fecha Vencimiento"
  }

  ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    label: "Cuenta"
  }

  dimension: acct_payment_mode {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE ;;
    label: "Mercado"
  }

  dimension: act_dst_status {
    type: string
    sql: ${TABLE}.ACT_DST_STATUS ;;
  }

  dimension: act_dst_status_des {
    type: string
    sql: ${TABLE}.ACT_DST_STATUS_DES ;;
  }

  dimension: act_dst_status_detail {
    type: string
    sql: ${TABLE}.ACT_DST_STATUS_DETAIL ;;
  }

  dimension: act_dst_status_detail_des {
    type: string
    sql: ${TABLE}.ACT_DST_STATUS_DETAIL_DES ;;
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
    label: "Ciclo Facturacion Id"
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
    label: "Ciclo Facturacion"
  }

  dimension: busi_type {
    type: string
    sql: ${TABLE}.BUSI_TYPE ;;
  }

  dimension: charge_code {
    type: string
    sql: ${TABLE}.CHARGE_CODE ;;
    label: "Cargo Comprobante"
  }

  dimension: charge_code_name {
    type: string
    sql: ${TABLE}.CHARGE_CODE_NAME ;;
    label: "Cargo Comprobante Descripcion"
  }

  dimension: charge_code_type {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE ;;
    label: "Cargo Tipo"
  }

  dimension: charge_code_type_des {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE_DES ;;
    label: "Cargo Tipo Descripcion"
  }

  dimension: charge_code_type_des_fact {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE_DES_FACT ;;
  }

  dimension: charge_code_type_fact {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE_FACT ;;
  }

  dimension: crm_product_id {
    type: string
    sql: ${TABLE}.CRM_PRODUCT_ID ;;
    label: "Producto Salesforce Id"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
  }

  dimension: cust_segment {
    type: string
    sql: ${TABLE}.CUST_SEGMENT ;;
    view_label: "Cliente"
    label: "Segmento"
  }

  dimension: cust_subsegment1 {
    type: string
    sql: ${TABLE}.CUST_SUBSEGMENT1 ;;
    view_label: "Cliente"
    label: "Subsegmento 1"
  }

  dimension: cust_subsegment2 {
    type: string
    sql: ${TABLE}.CUST_SUBSEGMENT2 ;;
    view_label: "Cliente"
    label: "Subsegmento 2"
  }

  dimension: cust_type {
    type: string
    sql: ${TABLE}.CUST_TYPE ;;
  }

  dimension: cust_type_des {
    type: string
    sql: ${TABLE}.CUST_TYPE_DES ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
    label: "Terminal Nombre"
  }

  dimension: equip_imei {
    type: string
    sql: ${TABLE}.EQUIP_IMEI ;;
    label: "Terminal IMEI"
  }

  dimension: equip_nmu {
    type: string
    sql: ${TABLE}.EQUIP_NMU ;;
    label: "Terminal NMU"
  }

  dimension: imei {
    type: string
    sql: ${TABLE}.IMEI ;;
    label: "Terminal IMEI"
  }

  dimension: ind_fact_migradas {
    type: string
    sql: ${TABLE}.IND_FACT_MIGRADAS ;;
    group_label: "Marcas"
    group_item_label: "Facturas Migradas"
    label: "Facturas Migradas"
  }

  dimension: ind_legal_no {
    type: string
    sql: ${TABLE}.IND_LEGAL_NO ;;
    group_label: "Marcas"
    group_item_label: "Numero Legal"
    label: "Numero Legal"
  }

  dimension: invoice_letter {
    type: string
    sql: ${TABLE}.INVOICE_LETTER ;;
    label: "Comprobante Letter"
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    label: "Prefactura Id"
  }

  dimension: invoice_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.INVOICE_NO_ASOC_NCND ;;
    label: "Comprobante Asociado Numero"
  }

  dimension: invoice_status {
    type: string
    sql: ${TABLE}.INVOICE_STATUS ;;
    label: "Comprobante Estado"
  }

  dimension: legal_no {
    type: string
    sql: ${TABLE}.LEGAL_NO ;;
  }

  dimension: legal_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.LEGAL_NO_ASOC_NCND ;;
    label: "Comprobante Asociado"
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.LINEA ;;
    label: "Linea"
  }

  dimension: nombre_terminal {
    type: string
    sql: ${TABLE}.NOMBRE_TERMINAL ;;
    label: "Terminal Nombre"
  }

  dimension: offering_code {
    type: string
    sql: ${TABLE}.OFFERING_CODE ;;
    label: "Oferta Codigo"
  }

  dimension: offering_id {
    type: string
    sql: ${TABLE}.OFFERING_ID ;;
    label: "Oferta Id"
  }

  dimension: offering_name {
    type: string
    sql: ${TABLE}.OFFERING_NAME ;;
    label: "Oferta Nombre"
  }

  dimension: offering_payment_mode {
    type: string
    sql: ${TABLE}.OFFERING_PAYMENT_MODE ;;
    label: "Oferta Mercado"
  }

  dimension: offering_primary_flag {
    type: string
    sql: ${TABLE}.OFFERING_PRIMARY_FLAG ;;
    group_label: "Marcas"
    group_item_label: "Oferta Primaria"
    label: "Oferta Primaria"
  }

  dimension: offering_short_name {
    type: string
    sql: ${TABLE}.OFFERING_SHORT_NAME ;;
    label: "Oferta Nombre Corto"
  }

  dimension: payment_object_type {
    type: string
    sql: ${TABLE}.PAYMENT_OBJECT_TYPE ;;
    label: "Nivel Pago"
  }

  dimension: plan_id {
    type: string
    sql: ${TABLE}.PLAN_ID ;;
    label: "Plan Facturado Id"
  }

  dimension: plan_payment_mode {
    type: string
    sql: ${TABLE}.PLAN_PAYMENT_MODE ;;
  }

  dimension: pri_dst_status {
    type: string
    sql: ${TABLE}.PRI_DST_STATUS ;;
  }

  dimension: pri_dst_status_des {
    type: string
    sql: ${TABLE}.PRI_DST_STATUS_DES ;;
  }

  dimension: pri_dst_status_detail {
    type: string
    sql: ${TABLE}.PRI_DST_STATUS_DETAIL ;;
  }

  dimension: pri_dst_status_detail_des {
    type: string
    sql: ${TABLE}.PRI_DST_STATUS_DETAIL_DES ;;
  }

  dimension: pri_identity {
    type: string
    sql: ${TABLE}.PRI_IDENTITY ;;
    label: "Linea Numero"
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.REGION_CODE ;;
    label: "Region Codigo"
  }

  dimension: sales_municipality {
    type: string
    sql: ${TABLE}.SALES_MUNICIPALITY ;;
    label: "Venta Municipalidad"
  }

  dimension: sales_province {
    type: string
    sql: ${TABLE}.SALES_PROVINCE ;;
    label: "Venta Provincia"
  }

  dimension: trans_type {
    type: string
    sql: ${TABLE}.TRANS_TYPE ;;
    label: "Comprobante Tipo"
  }

  dimension: trans_type_asoc_ncnd {
    type: string
    sql: ${TABLE}.TRANS_TYPE_ASOC_NCND ;;
  }

  dimension: trans_type_des {
    type: string
    sql: ${TABLE}.TRANS_TYPE_DES ;;
    label: "Comprobante Descripcion"
  }

  dimension: ult_dst_status {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS ;;
  }

  dimension: ult_dst_status_des {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS_DES ;;
  }

  dimension: ult_dst_status_detail {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS_DETAIL ;;
  }

  dimension: ult_dst_status_detail_des {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS_DETAIL_DES ;;
  }

  dimension: sub_identity {
    type: string
    sql: ${TABLE}.SUB_IDENTITY ;;
    label: "Linea Numero"
  }

  ## Numbers

  dimension: charge_code_id {
    type: number
    sql: ${TABLE}.CHARGE_CODE_ID ;;
    label: "Cargo Comprobante Id"
  }

  dimension: invoice_detail_id {
    type: number
    sql: ${TABLE}.INVOICE_DETAIL_ID ;;
    label: "Item Id"
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    label: "Comprobante HW Id"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    label: "Cliente HW Id"
  }

  dimension: invoice_id_asoc_ncnd {
    type: number
    value_format_name: id
    sql: ${TABLE}.INVOICE_ID_ASOC_NCND ;;
    label: "Comprobante Asociado Id"
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Cuenta Id"
  }

  dimension: ind_vta_equipos {
    type: number
    sql: ${TABLE}.IND_VTA_EQUIPOS ;;
    group_label: "Marcas"
    group_item_label: "Venta Equipo"
    label: "Venta Equipo"
  }

  dimension: addr_id {
    type: number
    sql: ${TABLE}.ADDR_ID ;;
    label: "Cliente Domicilio Id"
  }

  dimension: apply_trans_id {
    type: number
    sql: ${TABLE}.APPLY_TRANS_ID ;;
  }

  dimension: be_id {
    type: number
    sql: ${TABLE}.BE_ID ;;
    label: "Entidad Negocio"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Suscriptor Id"
  }

  dimension: total_cycle {
    type: number
    sql: ${TABLE}.TOTAL_CYCLE ;;
    label: "Cuotas Cantidad"
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    label: "Transaccion Id"
  }

  ## Hidden

  dimension: charge_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CHARGE_AMT ;;
  }

  dimension: discount_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.DISCOUNT_AMT ;;
  }

  dimension: gross_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.GROSS_AMT ;;
  }

  dimension: invoice_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOICE_AMT ;;
  }

  dimension: invoice_discount_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOICE_DISCOUNT_AMT ;;
  }

  dimension: invoice_tax_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOICE_TAX_AMT ;;
  }

  dimension: original_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.ORIGINAL_AMT ;;
  }

  dimension: tax_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TAX_AMT ;;
  }

##############
## Measures ##
##############

  measure: count_items {
    type: count_distinct
    sql: ${invoice_detail_id} ;;
    group_label: "Cantidad"
    group_item_label: "Items"
    label: "Cantidad Items"
  }

  measure: total_charge_amt {
    type: sum
    sql: ${charge_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Comprobante"
    label: "Total Monto Comprobante"
  }

  measure: total_discount_amt {
    type: sum
    sql: ${discount_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Bonificaciones Comprobante"
    label: "Total Monto Bonificaciones Comprobante"
  }

  measure: total_gross_amt {
    type: sum
    sql: ${gross_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Facturado sin Impuestos"
    label: "Total Monto Facturado sin Impuestos"
  }

  measure: total_invoice_amt {
    type: sum
    sql: ${invoice_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Comprobante"
    label: "Total Monto Comprobante"
  }

  measure: total_invoice_discount_amt {
    type: sum
    sql: ${invoice_discount_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Bonificaciones"
    label: "Total Monto Bonificaciones"
  }

  measure: total_invoice_tax_amt {
    type: sum
    sql: ${invoice_tax_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Comprobante con Impuestos"
    label: "Total Monto Facturado con Impuestos"
  }

  measure: total_original_amt {
    type: sum
    sql: ${original_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Original Comprobante"
    label: "Total Monto Original Comprobante"
  }

  measure: total_tax_amt {
    type: sum
    sql: ${tax_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Impuestos Comprobante"
    label: "Total Monto Impuestos Comprobante"
  }
}
