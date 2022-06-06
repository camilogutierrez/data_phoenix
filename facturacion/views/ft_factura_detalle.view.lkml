view: ft_factura_detalle {
  sql_table_name: @{gcp_ambiente}.FT_FacturaDetalle` ;;
  suggestions: no
  label: "Factura Detalle"

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${invoice_detail_id} ;;
  }

  ## Dates

  dimension_group: invoice_date {
    type: time
    datatype: timestamp
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
    view_label: "Comprobante"
    group_label: "Fecha Emision"
    label: "Emision"

  }

  dimension_group: due_date {
    type: time
    datatype: timestamp
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
    view_label: "Comprobante"
    group_label: "Fecha Vencimiento"
    label: "Vencimiento"
  }

  ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    view_label: "Cliente"
    label: "Cuenta Cliente"
    description: "Responsable de pago / Cuenta Code"
  }

  dimension: acct_payment_mode {
    type: string
    sql: ${TABLE}.ACCT_PAYMENT_MODE ;;
    view_label: "Cliente"
    label: "Mercado"
    description: "Mercado de la cuenta en el momento de la facturacion."
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
    view_label: "Comprobante"
    label: "Ciclo facturacion Id"
    description: "Contiene el ciclo de facturacion en formato fecha completo YYYYMMDD"
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
    view_label: "Comprobante"
    label: "Ciclo Facturacion"
    description: "Contiene el ciclo de facturacion en formato fecha DD (SUBSTR(AllData.BILL_CYCLE_ID, 7,2))"
  }

  dimension: busi_type {
    type: string
    sql: ${TABLE}.BUSI_TYPE ;;
    description: "Id de transaccion interno de Huawei."
  }

  dimension: charge_code {
    type: string
    sql: ${TABLE}.CHARGE_CODE ;;
    view_label: "Comprobante"
    label: "Cargos Codigo"
  }

  dimension: charge_code_name {
    type: string
    sql: ${TABLE}.CHARGE_CODE_NAME ;;
    view_label: "Comprobante"
    label: "Cargo Comprobante Descripcion"
  }

  dimension: charge_code_type {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE ;;
    view_label: "Comprobante"
    label: "Cargo Tipo"
    description: "U = USAGE FEE, O = ONE-OFF FEE, R = RECURRING FEE, D = DISCOUNT, T = TAX, E = EXEMPTED TAX, Y = DEPOSIT, V = ADVANCED AMOUNT, S = SALES"
  }

  dimension: charge_code_type_des {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE_DES ;;
    view_label: "Comprobante"
    label: "Tipo Descripcion Cargo"
    description: "U = USAGE FEE, O = ONE-OFF FEE, R = RECURRING FEE, D = DISCOUNT, T = TAX,  E = EXEMPTED TAX, Y = DEPOSIT, V = ADVANCED AMOUNT, S = SALES"
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
    view_label: "Comprobante"
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
    view_label: "Comprobante"
    label: "Terminal Nombre"
    description: "Nombre de la terminal vendida"
  }

  dimension: equip_imei {
    type: string
    sql: ${TABLE}.EQUIP_IMEI ;;
    view_label: "Comprobante"
    label: "Terminal IMEI"
  }

  dimension: equip_nmu {
    type: string
    sql: ${TABLE}.EQUIP_NMU ;;
    view_label: "Comprobante"
    label: "Terminal NMU"
  }

  dimension: imei {
    type: string
    sql: ${TABLE}.IMEI ;;
    view_label: "Comprobante"
    label: "IMEI"
  }

  dimension: ind_fact_migradas {
    type: string
    sql: ${TABLE}.IND_FACT_MIGRADAS ;;
    view_label: "Comprobante"
    label: "Facturas Migradas"
  }

  dimension: ind_legal_no {
    type: string
    sql: ${TABLE}.IND_LEGAL_NO ;;
    view_label: "Comprobante"
    label: "Flag Nro Legal"
  }

  dimension: invoice_letter {
    type: string
    sql: ${TABLE}.INVOICE_LETTER ;;
    view_label: "Comprobante"
    label: "Comprobante Letra"
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    view_label: "Comprobante"
    label: "Prefactura Id"
    description: "Numero de comprobante interno HW"
  }

  dimension: invoice_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.INVOICE_NO_ASOC_NCND ;;
    label: "Comprobante Asociado Nro"
    description: "Numero de comprobante asociado a la factura"
  }

  dimension: invoice_status {
    type: string
    sql: ${TABLE}.INVOICE_STATUS ;;
    view_label: "Comprobante"
    label: "Comprobante Estado"
    description: "Open= con saldo / Close = pago / Rejected = anulada / P"
  }

  dimension: legal_no {
    type: string
    sql: ${TABLE}.LEGAL_NO ;;
    view_label: "Comprobante"
    label: "Comprobante legal Nro"

  }

  dimension: legal_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.LEGAL_NO_ASOC_NCND ;;
    view_label: "Comprobante"
    label: "Comprobante Legal Asociado"
    description: "Comprobante legal asociado a la factura"
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.LINEA ;;
    view_label: "Comprobante"
    label: "Linea"
  }

  dimension: nombre_terminal {
    type: string
    sql: ${TABLE}.NOMBRE_TERMINAL ;;
    view_label: "Comprobante"
    label: "Terminal Nombre"
    description: "Nombre de la terminal vendida"
  }

  dimension: offering_code {
    type: string
    sql: ${TABLE}.OFFERING_CODE ;;
    view_label: "Comprobante"
    label: "Oferta Codigo"
  }

  dimension: offering_id {
    type: string
    sql: ${TABLE}.OFFERING_ID ;;
    view_label: "Comprobante"
    label: "Oferta ID"
  }

  dimension: offering_name {
    type: string
    sql: ${TABLE}.OFFERING_NAME ;;
    view_label: "Comprobante"
    label: "Oferta Nombre"
  }

  dimension: offering_payment_mode {
    type: string
    sql: ${TABLE}.OFFERING_PAYMENT_MODE ;;
    view_label: "Comprobante"
    label: "Oferta Mercado"
  }

  dimension: offering_primary_flag {
    type: string
    sql: ${TABLE}.OFFERING_PRIMARY_FLAG ;;
    view_label: "Comprobante"
    label: "Oferta Flag Primaria"
  }

  dimension: offering_short_name {
    type: string
    sql: ${TABLE}.OFFERING_SHORT_NAME ;;
    view_label: "Comprobante"
    label: "Oferta Nombre Corto"
  }

  dimension: payment_object_type {
    type: string
    sql: ${TABLE}.PAYMENT_OBJECT_TYPE ;;
    view_label: "Comprobante"
    label: "Nivel de Pago"
    description: "Indica si el pago es a nivel de Cuenta o Suscriptor, A: account, S: subscriber, C: subscriber group"
  }

  dimension: plan_id {
    type: string
    sql: ${TABLE}.PLAN_ID ;;
    view_label: "Comprobante"
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
    view_label: "Comprobante"
    label: "Linea Numero"
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.REGION_CODE ;;
    view_label: "Comprobante"
    label: "Region Codigo"
  }

  dimension: sales_municipality {
    type: string
    sql: ${TABLE}.SALES_MUNICIPALITY ;;
    view_label: "Comprobante"
    label: "Venta Municipalidad"
  }

  dimension: sales_province {
    type: string
    sql: ${TABLE}.SALES_PROVINCE ;;
    view_label: "Comprobante"
    label: "Venta Provincia"
  }

  dimension: trans_type {
    type: string
    sql: ${TABLE}.TRANS_TYPE ;;
    view_label: "Comprobante"
    label: "Comprobante Tipo"
    description: "Indica el tipo de comprobante de la operacion es: BLL, CNT, DNT, SLI"
  }

  dimension: trans_type_asoc_ncnd {
    type: string
    sql: ${TABLE}.TRANS_TYPE_ASOC_NCND ;;
    view_label: "Comprobante"
    label: "Comprobante Asociado Tipo Descripcion"
    description: "Indica la descripcion del tipo de comprobante asociado de la operacion. Bill run (BLL), Credit Notes (CNT), Debit Notes (DNT), Sales Invoice  (SLI)"
  }

  dimension: trans_type_des {
    type: string
    sql: ${TABLE}.TRANS_TYPE_DES ;;
    view_label: "Comprobante"
    label: "Comprobante Descripcion"
    description: "Indica la descripcion del tipo de comprobante asociado de la operación. Bill run (BLL), Credit Notes (CNT), Debit Notes (DNT), Sales Invoice  (SLI)"
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
    view_label: "Comprobante"
    label: "Linea"
  }

  dimension: desc_segmento_doc_grupo {
    type: string
    sql: "01_Individuos" ;;
    label: "Segmento Grupo"
  }

  dimension: desc_tipo_venta {
    type: string
    sql: CASE WHEN ${charge_code} = 'C_OT_MB_EQUIPMENT_PHONES' THEN '01_Ventas' ELSE '(no informado)' END ;;
    label: "Tipo Venta"
  }

  ## Flags

  dimension: flag_legal_no {
    hidden: yes
    type: yesno
    sql: CASE WHEN ${legal_no} IS NULL THEN FALSE ELSE TRUE END ;;
  }

  ## Numbers

  dimension: charge_code_id {
    type: number
    sql: ${TABLE}.CHARGE_CODE_ID ;;
    value_format_name: id
    view_label: "Comprobante"
    label: "Cargo Id"
    description: "Id de Cargos de las terminales de venta, e intereses y otros conceptos."
  }

  dimension: invoice_detail_id {
    type: number
    sql: ${TABLE}.INVOICE_DETAIL_ID ;;
    value_format_name: id
    view_label: "Comprobante"
    label: "Item Facturado Id"
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    value_format_name: id
    view_label: "Comprobante"
    label: "Comprobante Cabecera HW Id"
    description: "Identificador de la operacion, numero interno de HW"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    value_format_name: id
    view_label: "Cliente"
    label: "Cliente HW Id"
  }

  dimension: invoice_id_asoc_ncnd {
    type: number
    sql: ${TABLE}.INVOICE_ID_ASOC_NCND ;;
    value_format_name: id
    view_label: "Comprobante"
    label: "Comprobante Asociado Id"
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    value_format_name: id
    view_label: "Cliente"
    label: "Cuenta Cliente Id"
  }

  dimension: ind_vta_equipos {
    type: number
    sql: ${TABLE}.IND_VTA_EQUIPOS ;;
    view_label: "Comprobante"
    label: "Flag Venta Equipo"
    description: "1: TRANS_TYPE = 'SLI', 2: TRANS_TYPE = 'IN' ('CNT','DNT'), 0: Resto"
  }

  dimension: addr_id {
    type: number
    sql: ${TABLE}.ADDR_ID ;;
    value_format_name: id
    view_label: "Cliente"
    label: "Domicilio Id"
  }

  dimension: apply_trans_id {
    type: number
    sql: ${TABLE}.APPLY_TRANS_ID ;;
  }

  dimension: be_id {
    type: number
    sql: ${TABLE}.BE_ID ;;
    value_format_name: id
    view_label: "Comprobante"
    label: "Entidad de Negocio"
    description: "Id de Personal, Telecom"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    value_format_name: id
    view_label: "Comprobante"
    label: "Nro Suscripcion"
  }

  dimension: total_cycle {
    type: number
    sql: ${TABLE}.TOTAL_CYCLE ;;
    view_label: "Comprobante"
    label: "Cuotas Cantidad"
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    view_label: "Comprobante"
    label: "Ficha Nro"
    description: "Identificador de la operacion, numero interno de HW"
  }

  dimension: tax_amt {
    type: number
    sql: ${TABLE}.TAX_AMT ;;
    view_label: "Comprobante"
    label: "Impuestos"
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

## Measures

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
    view_label: "Comprobante"
    group_label: "Total"
    label: "Monto Cargos del comprobante"
  }

  measure: total_discount_amt {
    type: sum
    sql: ${discount_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Bonificaciones sin impuestos"
  }

  measure: total_gross_amt {
    type: sum
    sql: ${gross_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Monto Facturado sin Impuestos"
  }

  measure: total_invoice_amt {
    type: sum
    sql: ${invoice_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Monto Comprobante"
    description: "La suma de los cargos, mas los impuestos, menos las bonificaciones."
  }

  measure: total_invoice_discount_amt {
    type: sum
    sql: ${invoice_discount_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Bonificaciones con impuestos"
  }

  measure: total_invoice_tax_amt {
    type: sum
    sql: ${invoice_tax_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Monto Facturado con Impuestos"
  }

  measure: total_original_amt {
    type: sum
    sql: ${original_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Monto Original Comprobante"
    description: "Monto original del comprobante antes de la conversion, para cuando la moneda no es pesos argentinos."
  }

  measure: total_tax_amt {
    type: sum
    sql: ${tax_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Impuestos Comprobante"
    label: "Total Monto Impuestos Comprobante"
  }

  measure: count_legal_no_venta_bruta {
    hidden: yes
    type: count_distinct
    sql: ${legal_no} ;;
    filters: [
        flag_legal_no: "Yes"
      , trans_type: "SLI, DNT"
    ]
  }

  measure: count_legal_no_venta_nc {
    hidden: yes
    type: count_distinct
    sql: ${legal_no} ;;
    filters: [
        flag_legal_no: "Yes"
      , trans_type: "CNT"
    ]
  }

  measure: count_legal_no_venta_neta {
    type: number
    sql: ${count_legal_no_venta_bruta} - ${count_legal_no_venta_nc} ;;
    group_label: "Cantidad"
    label: "Q Ventas"
  }
}
