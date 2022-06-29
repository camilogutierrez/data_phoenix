view: ft_cargos_rehabilitacion {
  sql_table_name: @{gcp_ambiente}.FT_CargosRehabilitacion`;;
  suggestions: no
  label: "Cargos Rehabilitacion"

  ## Primary Key
  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.CARGOSPK;;
  }

  ##############################
  ##  Cargos Rehabilitacion   ##
  ##############################


  ## Dates

  dimension_group: invoice {
    type: time
    timeframes: [
      raw,
      time,
      date,
      time_of_day,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.INVOICE_DATE ;;
    group_label: "Comprobante Fecha Emision"
    label: "Comprobante Emision"
  }

  dimension_group: resume {
    type: time
    timeframes: [
      raw,
      time,
      date,
      time_of_day,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.RESUME_DATE ;;
    group_label: "Rehabilitación Fecha"
    label: "Rehabilitacion"
  }

  ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    group_label: "Cliente"
    label: "Cuenta Codigo"
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
    label: "Ciclo Facturacion ID"
    description: "Contiene el ciclo de facturacion en formato fecha completo YYYYMMDD"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    group_label: "Cliente"
    label: "Cliente Codigo"
  }

  dimension: invoice_no {
    type: string
    sql: ${TABLE}.INVOICE_NO ;;
    label: "Prefactura ID"
    description: "Numero interno de comprobante HW"
  }

  ## Numbers

  dimension: accion_id {
    type: number
    sql: ${TABLE}.ACCION_ID ;;
    label: "Accion ID"
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    group_label: "Cliente"
    label: "Cuenta ID"
  }

  dimension: charge_code_id {
    type: number
    sql: ${TABLE}.CHARGE_CODE_ID ;;
    label: "Cargo ID"
    description: "ID de Cargos de las terminales de venta, e intereses y otros conceptos."
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    group_label: "Cliente"
    label: "Cliente ID"
  }

  dimension: invoice_detail_id {
    type: number
    sql: ${TABLE}.INVOICE_DETAIL_ID ;;
    label: "Item Facturado ID"
  }

  dimension: task_order_id {
    type: number
    sql: ${TABLE}.TASK_ORDER_ID ;;
    label: "Orden de Trabajo ID"
  }

  ## Hidden ##

  dimension: charge_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CHARGE_AMT ;;
  }

  ##############
  ## Measures ##
  ##############

  measure: total_charge_amt {
    type: sum
    sql: ${TABLE}.CHARGE_AMT ;;
    label: "Cargo Total"
  }

  measure: count {
    type: count
    group_label: "Cantidad"
    label: "Count"
  }

}
