view: ft_factura_detalle {
  sql_table_name: @{gcp_ambiente}.FT_FacturaDetalle` ;;
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
    label: "Fecha emisión"

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
    label: "Fecha Vencimiento"
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
    description: "Mercado de la cuenta en el momento de la facturación."
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
    label: "Ciclo facturación ID"
    description: "Contiene el ciclo de facturación en formato fecha completo YYYYMMDD"
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
    view_label: "Comprobante"
    label: "Ciclo Facturación"
    description: "Contiene el ciclo de facturación en formato fecha DD (SUBSTR(AllData.BILL_CYCLE_ID, 7,2))"
  }

  dimension: busi_type {
    type: string
    sql: ${TABLE}.BUSI_TYPE ;;
    description: "ID de transacción interno de Huawei."
  }

  dimension: charge_code {
    type: string
    sql: ${TABLE}.CHARGE_CODE ;;
    view_label: "Comprobante"
    label: "Cargos Código"
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
    description: "'U' = 'USAGE FEE'____________
                  'O' = 'ONE-OFF FEE'__________
                  'R' = 'RECURRING FEE'________
                  'D' = 'DISCOUNT'_____________
                  'T' = 'TAX'____________________
                  'E' = 'EXEMPTED TAX'_________
                  'Y' = 'DEPOSIT'_______________
                  'V' = 'ADVANCED AMOUNT'____
                  'S' = 'SALES'______________"
  }

  dimension: charge_code_type_des {
    type: string
    sql: ${TABLE}.CHARGE_CODE_TYPE_DES ;;
    view_label: "Comprobante"
    label: "Tipo Descripción Cargo"
    description: "'U' = 'USAGE FEE'____________
    'O' = 'ONE-OFF FEE'__________
    'R' = 'RECURRING FEE'________
    'D' = 'DISCOUNT'_____________
    'T' = 'TAX'____________________
    'E' = 'EXEMPTED TAX'_________
    'Y' = 'DEPOSIT'_______________
    'V' = 'ADVANCED AMOUNT'____
    'S' = 'SALES'______________"
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
    description: "Número de comprobante interno HW"
  }

  dimension: invoice_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.INVOICE_NO_ASOC_NCND ;;
    label: "Comprobante Asociado Nro"
    description: "Número de comprobante asociado a la factura"
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
    label: "Línea"
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
    description: "Indica si el pago es a nivel de Cuenta o Suscriptor
                  A: account
                  S: subscriber
                  C: subscriber group
                  "
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
    label: "Línea Número"
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.REGION_CODE ;;
    view_label: "Comprobante"
    label: "Región Código"
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
    description: "Indica el tipo de comprobante de la operación es: BLL, CNT, DNT, SLI"
  }

  dimension: trans_type_asoc_ncnd {
    type: string
    sql: ${TABLE}.TRANS_TYPE_ASOC_NCND ;;
    view_label: "Comprobante"
    label: "Comprobante Asociado Tipo Descripción"
    description: "Indica la descripción del tipo de comprobante asociado de la operación
                  _____________________________
                  Bill run (BLL)_______________
                  Credit Notes (CNT)___________
                  Debit Notes (DNT)____________
                  Sales Invoice  (SLI)_________"
  }

  dimension: trans_type_des {
    type: string
    sql: ${TABLE}.TRANS_TYPE_DES ;;
    view_label: "Comprobante"
    label: "Comprobante Descripcion"
    description: "Indica la descripción del tipo de comprobante asociado de la operación
    _____________________________
    Bill run (BLL)_______________
    Credit Notes (CNT)___________
    Debit Notes (DNT)____________
    Sales Invoice  (SLI)_________"
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
    label: "Línea"
  }

  ## Numbers

  dimension: charge_code_id {
    type: number
    sql: ${TABLE}.CHARGE_CODE_ID ;;
    value_format: "0"
    view_label: "Comprobante"
    label: "Cargo Id"
    description: "ID de Cargos de las terminales de venta, e intereses y otros conceptos."
  }

  dimension: invoice_detail_id {
    type: number
    sql: ${TABLE}.INVOICE_DETAIL_ID ;;
    value_format: "0"
    view_label: "Comprobante"
    label: "Ítem Facturado ID"
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    value_format: "0"
    view_label: "Comprobante"
    label: "Comprobante Cabecera HW ID"
    description: "Identificador de la operación, número interno de HW"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    value_format: "0"
    view_label: "Cliente"
    label: "Cliente HW Id"
  }

  dimension: invoice_id_asoc_ncnd {
    type: number
    sql: ${TABLE}.INVOICE_ID_ASOC_NCND ;;
    value_format: "0"
    view_label: "Comprobante"
    label: "Comprobante Asociado Id"
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    value_format: "0"
    view_label: "Cliente"
    label: "Cuenta Cliente  ID"
  }

  dimension: ind_vta_equipos {
    type: number
    sql: ${TABLE}.IND_VTA_EQUIPOS ;;
    view_label: "Comprobante"
    label: "Flag Venta Equipo"
    description: "1: TRANS_TYPE='SLI'
    2: TRANS_TYPE= 'IN' ('CNT','DNT')
    0: Resto"
  }

  dimension: addr_id {
    type: number
    sql: ${TABLE}.ADDR_ID ;;
    value_format: "0"
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
    value_format: "0"
    view_label: "Comprobante"
    label: "Entidad de Negocio"
    description: "ID de Personal, Telecom"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    view_label: "Comprobante"
    label: "Nro Suscripción"
  }

  dimension: total_cycle {
    type: number
    sql: ${TABLE}.TOTAL_CYCLE ;;
    value_format: "0"
    view_label: "Comprobante"
    label: "Cuotas Cantidad"
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    view_label: "Comprobante"
    label: "Ficha Nro"
    description: "Identificador de la operación, número interno de HW"
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
    description: "La suma de los cargos, más los impuestos, menos las bonificaciones."
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
    description: "Monto original del comprobante antes de la conversión, para cuando la moneda no es pesos argentinos."
  }

  measure: total_tax_amt {
    type: sum
    sql: ${tax_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Impuestos Comprobante"
    label: "Total Monto Impuestos Comprobante"
  }
}
