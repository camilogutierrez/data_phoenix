view: ft_morosidad_resumen {
  sql_table_name: @{gcp_ambiente}.FT_MorosidadResumen` ;;
  suggestions: no
  label: "Morsidad Resumen"

  ## Primary Key

  dimension: mororesumenpk {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.MORORESUMENPK ;;
  }

  #########################
  ##  Morosidad Resumen  ##
  #########################


  ## Dates

  dimension_group: fecha_pago_mas_reciente {
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
    sql: ${TABLE}.fecha_pago_mas_reciente ;;
    label: "Pago Mas Reciente"
  }

  dimension_group: fecha_saldo {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: date
    convert_tz: no
    sql: ${TABLE}.FECHA_SALDO ;;
    label: "Saldo"
  }

  dimension_group: min_venc_fac {
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
    sql: ${TABLE}.MIN_VENC_FAC ;;
    label: "Min Vencimiento Factura"
  }

  dimension_group: start_collect {
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
    sql: ${TABLE}.START_COLLECT_DATE ;;
    label: "Start Collect"
  }

  ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    label: "Account Code"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    label: "Customer Code"
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.DOCUMENT_NUMBER ;;
    label: "Document Number"
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DOCUMENT_TYPE ;;
    label: "Document Type"
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
    label: "First Name"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
    label: "Last Name"
  }

  dimension: plan_financiamiento {
    type: string
    sql: ${TABLE}.PlanFinanciamiento ;;
    label: "Plan Financiamiento"
  }

  dimension: producto_adquirido_familia_producto {
    type: string
    sql: ${TABLE}.ProductoAdquiridoFamiliaProducto ;;
    label: "Producto Adquirido - Familia Producto"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    label: "Razon Social"
  }

  dimension: tipo_linea_mora {
    type: string
    sql: ${TABLE}.TipoLineaMora ;;
    label: "Tipo Linea Mora"
  }

  dimension: ult_bill_cycle_type {
    type: string
    sql: ${TABLE}.ULT_BILL_CYCLE_TYPE ;;
    label: "ULT Bill Cycle Type"
  }


  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Account ID"
  }

  dimension: cant_degra {
    type: number
    sql: ${TABLE}.CANT_DEGRA ;;
    label: "Cantidad Degradaciones"
  }

  dimension: cant_dias_moroso {
    type: number
    sql: ${TABLE}.CANT_DIAS_MOROSO ;;
    label: "Cantidad Dias Moroso"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    label: "Customer ID"
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
    label: "Object ID"
  }

  dimension: pago_mas_reciente {
    type: number
    sql: ${TABLE}.pago_mas_reciente ;;
    label: "Pago Mas Reciente"
  }

  dimension: saau_v_hasta_30_d {
    type: number
    sql: ${TABLE}.SAAU_V_HASTA_30D ;;
    group_label: "SAAU V"
    group_item_label: "1- Hasta 30"
  }

  dimension: saau_v_31_a_60_d {
    type: number
    sql: ${TABLE}.SAAU_V_31_A_60D ;;
    group_label: "SAAU V"
    group_item_label: "2- 31 a 60"
  }

  dimension: saau_v_61_a_90_d {
    type: number
    sql: ${TABLE}.SAAU_V_61_A_90D ;;
    group_label: "SAAU V"
    group_item_label: "3- 61 a 90"
  }

  dimension: saau_v_91_a_120_d {
    type: number
    sql: ${TABLE}.SAAU_V_91_A_120D ;;
    group_label: "SAAU V"
    group_item_label: "4- 91 a 120"
  }

  dimension: saau_v_121_a_150_d {
    type: number
    sql: ${TABLE}.SAAU_V_121_A_150D ;;
    group_label: "SAAU V"
    group_item_label: "5- 121 a 150"
  }

  dimension: saau_v_151_a_180_d {
    type: number
    sql: ${TABLE}.SAAU_V_151_A_180D ;;
    group_label: "SAAU V"
    group_item_label: "6- 151 a 180"
  }

  dimension: saau_v_181_a_360_d {
    type: number
    sql: ${TABLE}.SAAU_V_181_A_360D ;;
    group_label: "SAAU V"
    group_item_label: "7- 181 a 360"
  }

  dimension: saau_v_may_360_d {
    type: number
    sql: ${TABLE}.SAAU_V_MAY_360D ;;
    group_label: "SAAU V"
    group_item_label: "8- Mayor a 360"
  }

  dimension: serv_activos_cuenta {
    type: number
    sql: ${TABLE}.ServActivosCuenta ;;
    label: "Servicios Activos Cuenta"
  }

  dimension: serv_susp_cuenta {
    type: number
    sql: ${TABLE}.ServSuspCuenta ;;
    label: "Servicios Suspendidos Cuenta"
  }

  ## Hidden ##

  dimension: importe_pago_mas_reciente {
    hidden: yes
    type: number
    sql: ${TABLE}.importe_pago_mas_reciente ;;
  }

  dimension: saldo_fact_a_vencer {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_FACT_A_VENCER ;;
  }

  dimension: saldo_vencido {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENCIDO ;;
  }

  ##############
  ## Measures ##
  ##############

  measure: total_importe_pago_mas_reciente {
    type: sum
    sql: ${TABLE}.importe_pago_mas_reciente ;;
    label: "Importe Pago Mas Reciente"
  }

  measure: total_saldo_fact_a_vencer {
    type: sum
    sql: ${TABLE}.SALDO_FACT_A_VENCER ;;
    label: "Saldo Factura a Vencer"
  }

  measure: total_saldo_vencido {
    type: sum
    sql: ${TABLE}.SALDO_VENCIDO ;;
    label: "Saldo Vencido"
  }

}
