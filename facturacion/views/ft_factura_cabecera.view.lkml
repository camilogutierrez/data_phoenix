view: ft_factura_cabecera_view {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FT_FacturaCabecera` ;;
  suggestions: no
  label: "Factura Cabecera"

  ## Primary Key

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${invoice_id} ;;
  }

  ## Native Dimensions

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
  }

  dimension: addr_altura_piso_depto {
    type: string
    sql: ${TABLE}.ADDR_ALTURA_PISO_DEPTO ;;
  }

  dimension: addr_calle {
    type: string
    sql: ${TABLE}.ADDR_CALLE ;;
  }

  dimension: addr_id {
    type: number
    sql: ${TABLE}.ADDR_ID ;;
  }

  dimension: addr_localidad {
    type: string
    sql: ${TABLE}.ADDR_LOCALIDAD ;;
  }

  dimension: addr_postal_code {
    type: string
    sql: ${TABLE}.ADDR_POSTAL_CODE ;;
  }

  dimension: addr_provincia {
    type: string
    sql: ${TABLE}.ADDR_PROVINCIA ;;
  }

  dimension: be_id {
    type: number
    sql: ${TABLE}.BE_ID ;;
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
  }

  dimension: busi_type {
    type: string
    sql: ${TABLE}.BUSI_TYPE ;;
  }

  dimension: channel_description {
    type: string
    sql: ${TABLE}.CHANNEL_DESCRIPTION ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.CURRENCY_NAME ;;
  }

  dimension: cust_document_number {
    type: string
    sql: ${TABLE}.CUST_DOCUMENT_NUMBER ;;
  }

  dimension: cust_document_type {
    type: string
    sql: ${TABLE}.CUST_DOCUMENT_TYPE ;;
  }

  dimension: cust_first_name {
    type: string
    sql: ${TABLE}.CUST_FIRST_NAME ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: cust_iibb_category {
    type: string
    sql: ${TABLE}.CUST_IIBB_CATEGORY ;;
  }

  dimension: cust_iva_category {
    type: string
    sql: ${TABLE}.CUST_IVA_CATEGORY ;;
  }

  dimension: cust_last_name {
    type: string
    sql: ${TABLE}.CUST_LAST_NAME ;;
  }

  dimension: cust_segment {
    type: string
    sql: ${TABLE}.CUST_SEGMENT ;;
  }

  dimension: cust_subsegment1 {
    type: string
    sql: ${TABLE}.CUST_SUBSEGMENT1 ;;
  }

  dimension: cust_subsegment2 {
    type: string
    sql: ${TABLE}.CUST_SUBSEGMENT2 ;;
  }

  dimension: discount_amt {
    type: number
    sql: ${TABLE}.DISCOUNT_AMT ;;
  }

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DUE_DATE ;;
    datatype: timestamp
  }

  dimension: ind_fact_migradas {
    type: string
    sql: ${TABLE}.IND_FACT_MIGRADAS ;;
  }

  dimension: ind_legal_no {
    type: string
    sql: ${TABLE}.IND_LEGAL_NO ;;
  }

  dimension: invoice_amt {
    type: number
    sql: ${TABLE}.INVOICE_AMT ;;
  }

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.INVOICE_DATE ;;
    datatype: timestamp
  }

  dimension: invoice_id {
    type: number
    sql: ${TABLE}.INVOICE_ID ;;
  }

  dimension: invoice_id_asoc_ncnd {
    type: number
    value_format_name: id
    sql: ${TABLE}.INVOICE_ID_ASOC_NCND ;;
  }

  dimension: invoice_letter {
    type: string
    sql: ${TABLE}.INVOICE_LETTER ;;
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
  }

  dimension: invoice_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.INVOICE_NO_ASOC_NCND ;;
  }

  dimension: invoice_status {
    type: string
    sql: ${TABLE}.INVOICE_STATUS ;;
  }

  dimension: legal_no {
    type: string
    sql: ${TABLE}.LEGAL_NO ;;
  }

  dimension: legal_no_asoc_ncnd {
    type: string
    sql: ${TABLE}.LEGAL_NO_ASOC_NCND ;;
  }

  dimension: lpf_amt {
    type: number
    sql: ${TABLE}.LPF_AMT ;;
  }

  dimension: open_amt {
    type: number
    sql: ${TABLE}.OPEN_AMT ;;
  }

  dimension: original_amt {
    type: number
    sql: ${TABLE}.ORIGINAL_AMT ;;
  }

  dimension: point_sale_description {
    type: string
    sql: ${TABLE}.POINT_SALE_DESCRIPTION ;;
  }

  dimension: point_sale_id {
    type: string
    sql: ${TABLE}.POINT_SALE_ID ;;
  }

  dimension: pri_identity {
    type: string
    sql: ${TABLE}.PRI_IDENTITY ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.REASON_CODE ;;
  }

  dimension: reason_description {
    type: string
    sql: ${TABLE}.REASON_DESCRIPTION ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.REGION_CODE ;;
  }

  dimension: sales_municipality {
    type: string
    sql: ${TABLE}.SALES_MUNICIPALITY ;;
  }

  dimension: sales_province {
    type: string
    sql: ${TABLE}.SALES_PROVINCE ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  dimension: tax_amt {
    type: number
    sql: ${TABLE}.TAX_AMT ;;
  }

  dimension: trans_id {
    type: number
    sql: ${TABLE}.TRANS_ID ;;
  }

  dimension: trans_type {
    type: string
    sql: ${TABLE}.TRANS_TYPE ;;
  }

  dimension: trans_type_asoc_ncnd {
    type: string
    sql: ${TABLE}.TRANS_TYPE_ASOC_NCND ;;
  }

  dimension: trans_type_des {
    type: string
    sql: ${TABLE}.TRANS_TYPE_DES ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
