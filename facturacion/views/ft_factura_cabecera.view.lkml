view: ft_factura_cabecera {
  sql_table_name: @{gcp_dataset_pub}.FT_FacturaCabecera` ;;
  suggestions: no
  label: "Factura Cabecera"

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${invoice_id} ;;
  }

  ## Fechas

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
    group_label: "Fecha Creacion"
    label: "Creacion"
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
    group_label: "Fecha Vencimiento"
    label: "Vencimiento"
  }

  ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    label: "Cuenta"
  }

  dimension: addr_altura_piso_depto {
    type: string
    sql: ${TABLE}.ADDR_ALTURA_PISO_DEPTO ;;
    view_label: "Cliente"
    label: "Altura / Piso / Depto"
  }

  dimension: addr_calle {
    type: string
    sql: ${TABLE}.ADDR_CALLE ;;
    view_label: "Cliente"
    label: "Calle"
  }

  dimension: addr_localidad {
    type: string
    sql: ${TABLE}.ADDR_LOCALIDAD ;;
    view_label: "Cliente"
    label: "Localidad"
  }

  dimension: addr_postal_code {
    type: string
    sql: ${TABLE}.ADDR_POSTAL_CODE ;;
    view_label: "Cliente"
    label: "Codigo Postal"
  }

  dimension: addr_provincia {
    type: string
    sql: ${TABLE}.ADDR_PROVINCIA ;;
    view_label: "Cliente"
    label: "Provincia"
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

  dimension: channel_description {
    type: string
    sql: ${TABLE}.CHANNEL_DESCRIPTION ;;
    label: "Canal Descripcion"
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
    label: "Canal Id"
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.CURRENCY_NAME ;;
    label: "Moneda Descripcion"
  }

  dimension: cust_document_number {
    type: string
    sql: ${TABLE}.CUST_DOCUMENT_NUMBER ;;
    view_label: "Cliente"
    label: "Documento Numero"
  }

  dimension: cust_document_type {
    type: string
    sql: ${TABLE}.CUST_DOCUMENT_TYPE ;;
    view_label: "Cliente"
    label: "Tipo"
  }

  dimension: cust_first_name {
    type: string
    sql: ${TABLE}.CUST_FIRST_NAME ;;
    view_label: "Cliente"
    label: "Nombre"
  }

  dimension: cust_iibb_category {
    type: string
    sql: ${TABLE}.CUST_IIBB_CATEGORY ;;
    view_label: "Cliente"
    label: "Condicion IIBB"
  }

  dimension: cust_iva_category {
    type: string
    sql: ${TABLE}.CUST_IVA_CATEGORY ;;
    view_label: "Cliente"
    label: "Condicion IVA"
  }

  dimension: cust_last_name {
    type: string
    sql: ${TABLE}.CUST_LAST_NAME ;;
    view_label: "Cliente"
    label: "Apellido"
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
    label: "Letra Comprobante"
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    label: "Prefactura Id"
  }

  dimension: invoice_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.INVOICE_NO_ASOC_NCND ;;
    label: "Numero Comprobante Asociado"
  }

  dimension: invoice_status {
    type: string
    sql: ${TABLE}.INVOICE_STATUS ;;
    label: "Estado Comprobante"
  }

  dimension: legal_no {
    type: string
    sql: ${TABLE}.LEGAL_NO ;;
    label: "Numero Comprobante Legal"
  }

  dimension: legal_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.LEGAL_NO_ASOC_NCND ;;
    group_label: "Comprobante"
    group_item_label: "Numero Legal Asociado"
    label: "Nro Comprobante Legal Asociado"
    description: "Numero de comprobante legal asociado a la factura"
  }

  dimension: point_sale_description {
    type: string
    sql: ${TABLE}.POINT_SALE_DESCRIPTION ;;
    label: "Punto Venta Descripcion"
  }

  dimension: point_sale_id {
    type: string
    sql: ${TABLE}.POINT_SALE_ID ;;
    label: "Punto Venta Id"
  }

  dimension: pri_identity {
    type: string
    sql: ${TABLE}.PRI_IDENTITY ;;
    label: "Linea Id"
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.REASON_CODE ;;
    label: "Motivo Ajuste Codigo"
  }

  dimension: reason_description {
    type: string
    sql: ${TABLE}.REASON_DESCRIPTION ;;
    label: "Motivo Ajuste Descripcion"
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
    group_label: "Comprobante"
    group_item_label: "Tipo"
    label: "Tipo Comprobante"
    description: "Indica el tipo de comprobante de la operación (BLL, CNT, DNT, SLI)"
  }

  dimension: trans_type_asoc_ncnd {
    type: string
    sql: ${TABLE}.TRANS_TYPE_ASOC_NCND ;;
    group_label: "Comprobante"
    group_item_label: "Descripcion Tipo Asociado"
    label: "Descripcion Tipo Comprobante Asociado"
    description: "Indica la descripción del tipo de comprobante asociado en la operación BLL = Bill run, CNT = Credit Notes, DNT = Debit Notes, SLI = Sales Invoice"
  }

  dimension: trans_type_des {
    type: string
    sql: ${TABLE}.TRANS_TYPE_DES ;;
    group_label: "Comprobante"
    group_item_label: "Descripcion Tipo"
    label: "Descripcion Tipo Comprobante"
    description: "Indica la descripción del tipo de comprobante de la operación BLL = Bill run, CNT = Credit Notes, DNT = Debit Notes, SLI = Sales Invoice"
  }

  ## Numbers

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    value_format_name: id
    group_label: "Cliente"
    group_item_label: "Id HW"
    label: "Id Cliente HW"
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    label: "Moneda Id"
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    value_format_name: "id"
    group_label: "Comprobante"
    group_item_label: "Id Huawei"
    label: "Id Comprobante HW"
  }

  dimension: invoice_id_asoc_ncnd {
    type: number
    value_format_name: id
    sql: ${TABLE}.INVOICE_ID_ASOC_NCND ;;
    group_label: "Comprobante"
    group_item_label: "Id Asociado"
    label: "Id Comprobante Asociado"
  }

  dimension: lpf_amt {
    type: number
    sql: ${TABLE}.LPF_AMT ;;
  }

  dimension: addr_id {
    type: number
    sql: ${TABLE}.ADDR_ID ;;
    label: "Domicilio Cliente Id"
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    label: "Ficha"
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Cuenta Id"
  }

  dimension: be_id {
    type: number
    sql: ${TABLE}.BE_ID ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Suscripcion Numero"
  }

  ## Hidden

  dimension: discount_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.DISCOUNT_AMT ;;
  }

  dimension: invoice_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOICE_AMT ;;
  }

  dimension: open_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_AMT ;;
  }

  dimension: tax_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TAX_AMT ;;
  }

  dimension: original_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.ORIGINAL_AMT ;;
  }

##############
## Measures ##
##############

  measure: count_invoice {
    type: count_distinct
    sql: ${invoice_id} ;;
    group_label: "Cantidad"
    group_item_label: "Comprobantes HW"
    label: "Cantidad Comprobantes HW"
  }

  measure: count_legal_no {
    type: count_distinct
    sql: ${legal_no} ;;
    group_label: "Cantidad"
    group_item_label: "Comprobantes Legal"
    label: "Cantidad Comprobantes Legal"
  }

  measure: total_discount_amt  {
    type: sum
    sql: ${discount_amt} ;;
    group_label: "Total"
    group_item_label: "Bonificacion Sin Impuestos "
    label: "Total Bonificacion Sin Impuestos"
  }

  measure: total_invoice_amt {
    type: sum
    sql: ${invoice_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Comprobante"
    label: "Total Monto Comprobante"
    description: "La suma de los cargos mas los impuestos menos las bonificaciones."
  }

  measure: total_open_amt {
    type: sum
    sql: ${open_amt} ;;
    group_label: "Total"
    group_item_label: "Saldo Comprobante"
    label: "Total Saldo Comprobante"
  }

  measure: total_tax_amt {
    type: sum
    sql: ${tax_amt} ;;
    group_label: "Total"
    group_item_label: "Impuestos Comprobante"
    label: "Total Impuestos Comprobante"
  }

  measure: total_original_amt {
    type: sum
    sql: ${original_amt} ;;
    group_label: "Total"
    group_item_label: "Monto Original Comprobante"
    label: "Total Monto Original Comprobante"
    description: "Monto original del comprobante antes de la conversión, para cuando la moneda es distinta a pesos."
  }
}
