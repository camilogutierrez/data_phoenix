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
    view_label: "Comprobante"
    label: "Comprobante Fecha emisión"
  }

  dimension_group: due_date {
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
    view_label: "Comprobante"
    label: "Comprobante Fecha Vencimiento"
  }

  ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    view_label: "Cliente"
    label: "Cuenta Cliente"
    description: "Responsable de pago / Cuenta Code"
  }

  dimension: addr_altura_piso_depto {
    type: string
    sql: ${TABLE}.ADDR_ALTURA_PISO_DEPTO ;;
    view_label: "Cliente"
    label: "Altura / Piso / Depto"
    description: "Número del domicilio del cliente"
  }

  dimension: addr_calle {
    type: string
    sql: ${TABLE}.ADDR_CALLE ;;
    view_label: "Cliente"
    label: "Calle"
    description: "Calle del cliente"
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
    description: "Código Postal del cliente"
  }

  dimension: addr_provincia {
    type: string
    sql: ${TABLE}.ADDR_PROVINCIA ;;
    view_label: "Cliente"
    label: "Provincia del Cliente"
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
    view_label: "Comprobante"
    label: "Ciclo Facturacion Id"
    description: "Contiene el ciclo de facturación en formato fecha completo YYYYMMDD"
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
    view_label: "Comprobante"
    label: "Ciclo Facturacion"
    description: "Contiene el ciclo de facturación en formato fecha DD"
  }

  dimension: busi_type {
    type: string
    sql: ${TABLE}.BUSI_TYPE ;;
    description: "ID de transacción interno de Huawei"
  }

  dimension: channel_description {
    type: string
    sql: ${TABLE}.CHANNEL_DESCRIPTION ;;
    view_label: "Cliente"
    label: "Canal Descripcion"
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
    view_label: "Cliente"
    label: "Canal ID"
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.CURRENCY_NAME ;;
    view_label: "Comprobante"
    label: "Moneda Descripcion"
  }

  dimension: cust_document_number {
    type: string
    sql: ${TABLE}.CUST_DOCUMENT_NUMBER ;;
    view_label: "Cliente"
    label: "Documento Número"
  }

  dimension: cust_document_type {
    type: string
    sql: ${TABLE}.CUST_DOCUMENT_TYPE ;;
    view_label: "Cliente"
    label: "Tipo Documento"
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
    label: "Condición IIBB"
  }

  dimension: cust_iva_category {
    type: string
    sql: ${TABLE}.CUST_IVA_CATEGORY ;;
    view_label: "Cliente"
    label: "Condición IVA"
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
    view_label: "Comprobante"
    label: "Flag Facturas Migradas"
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
    label: "Letra Comprobante"
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    view_label: "Comprobante"
    label: "Prefactura ID"
    description: "Número interno de comprobante HW"
  }

  dimension: invoice_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.INVOICE_NO_ASOC_NCND ;;
    view_label: "Comprobante"
    label: "Número Comprobante Asociado"
    description: "Número de comprobante asociado a la factura"
  }

  dimension: invoice_status {
    type: string
    sql: ${TABLE}.INVOICE_STATUS ;;
    view_label: "Comprobante"
    label: "Estado Comprobante"
    description: "Open= con saldo / Close = pago / Rejected = anulada / P?"
  }

  dimension: legal_no {
    type: string
    sql: ${TABLE}.LEGAL_NO ;;
    view_label: "Comprobante"
    label: "Comprobante Legal Nro"
  }

  dimension: legal_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.LEGAL_NO_ASOC_NCND ;;
    view_label: "Comprobante"
    label: "Comprobante Legal Asociado"
    description: "Numero de comprobante legal asociado a la factura"
  }

  dimension: point_sale_description {
    type: string
    sql: ${TABLE}.POINT_SALE_DESCRIPTION ;;
    view_label: "Comprobante"
    label: "Punto de Venta Descripción"
  }

  dimension: point_sale_id {
    type: string
    sql: ${TABLE}.POINT_SALE_ID ;;
    view_label: "Comprobante"
    label: "Punto Venta ID"
  }

  dimension: pri_identity {
    type: string
    sql: ${TABLE}.PRI_IDENTITY ;;
    view_label: "Comprobante"
    label: "Línea ID"
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.REASON_CODE ;;
    view_label: "Comprobante"
    label: "Motivo Ajuste Codigo"
    description: "Código del motivo del ajuste para los comprobantes con CNT o DNT"
  }

  dimension: reason_description {
    type: string
    sql: ${TABLE}.REASON_DESCRIPTION ;;
    view_label: "Comprobante"
    label: "Motivo de Ajuste Descripción"
    description: "Descripción del motivo del ajuste para los comprobantes con CNT o DNT"
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.REGION_CODE ;;
    view_label: "Comprobante"
    label: "Region Código Postal"
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
    label: "Tipo Comprobante"
    description: "Indica el tipo de comprobante de la operación (BLL, CNT, DNT, SLI)"
  }

  dimension: trans_type_asoc_ncnd {
    type: string
    sql: ${TABLE}.TRANS_TYPE_ASOC_NCND ;;
    view_label: "Comprobante"
    label: "Comprobante Asociado Tipo Descripción "
    description: "Indica la descripción del tipo de comprobante asociado en la operación BLL = Bill run, CNT = Credit Notes, DNT = Debit Notes, SLI = Sales Invoice"
  }

  dimension: trans_type_des {
    type: string
    sql: ${TABLE}.TRANS_TYPE_DES ;;
    view_label: "Comprobante"
    label: "Descripcion Tipo Comprobante"
    description: "Indica la descripción del tipo de comprobante de la operación BLL = Bill run, CNT = Credit Notes, DNT = Debit Notes, SLI = Sales Invoice"
  }

  ## Numbers

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    value_format: "0"
    view_label: "Cliente"
    label: "Cliente HW ID"
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    value_format: "0"
    view_label: "Comprobante"
    label: "Moneda ID"
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
    value_format: "0"
    view_label: "Comprobante"
    label: "Id Comprobante HW"
  }

  dimension: invoice_id_asoc_ncnd {
    type: number
    sql: ${TABLE}.INVOICE_ID_ASOC_NCND ;;
    value_format: "0"
    view_label: "Comprobante"
    label: "Id Comprobante Asociado"
  }

  dimension: lpf_amt {
    type: number
    sql: ${TABLE}.LPF_AMT ;;
  }

  dimension: addr_id {
    type: number
    sql: ${TABLE}.ADDR_ID ;;
    value_format: "0"
    view_label: "Cliente"
    label: "Domicilio ID"
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
    view_label: "Comprobante"
    label: "Ficha Nro"
    description: "Identificador de la operación, número interno de HW"
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    value_format: "0"
    view_label: "Cliente"
    label: "Cuenta Cliente ID"
  }

  dimension: be_id {
    type: number
    sql: ${TABLE}.BE_ID ;;
    value_format: "0"
    view_label: "Comprobante"
    label: "Entidad de Negocios"
    description: "ID de Telecom - Personal"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    view_label: "Comprobante"
    label: "Nro Suscripción"
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
    view_label: "Comprobante"
    group_label: "Cantidad"
    label: "Cantidad Comprobantes HW"
  }

  measure: count_legal_no {
    type: count_distinct
    sql: ${legal_no} ;;
    view_label: "Comprobante"
    group_label: "Cantidad"
    label: "Cantidad Comprobantes Legal"
  }

  measure: total_discount_amt  {
    type: sum
    sql: ${discount_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Bonificacion Sin Impuestos"
  }

  measure: total_invoice_amt {
    type: sum
    sql: ${invoice_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Monto Comprobante"
    description: "La suma de los cargos más los impuestos menos las bonificaciones."
  }

  measure: total_open_amt {
    type: sum
    sql: ${open_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Saldo Comprobante"
  }

  measure: total_tax_amt {
    type: sum
    sql: ${tax_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Impuestos Comprobante"
  }

  measure: total_original_amt {
    type: sum
    sql: ${original_amt} ;;
    view_label: "Comprobante"
    group_label: "Total"
    label: "Monto Original Comprobante"
    description: "Monto original del comprobante antes de la conversión, para cuando la moneda es distinta a pesos."
  }
}
