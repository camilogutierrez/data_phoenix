view: ft_morosidad {
  sql_table_name: @{gcp_ambiente}.FT_Morosidad` ;;
  suggestions: no
  label: "Morosidad"

 ## Primary Key
  dimension: pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.MOROSIDADPK ;;
  }

  ##################
  ##  Morosidad   ##
  ##################


  ## Dates

  dimension_group: due {
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
    sql: ${TABLE}.DUE_DATE ;;
    group_label: "Fecha Vto Guia"
    label: "Vto Guia"
  }

  dimension_group: prox_accion {
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
    sql: ${TABLE}.PROX_ACCION_FECHA ;;
    group_label: "Proxima Accion Fecha"
    label: "Proxima Accion"
  }

  dimension_group: resume_actual {
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
    sql: ${TABLE}.RESUME_ACTUAL_DATE ;;
    group_label: "Rehabilitacion Actual Fecha"
    label: "Rehabilitacion Actual"
  }

  dimension_group: start_collect {
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
    sql: ${TABLE}.START_COLLECT_DATE ;;
    group_label: "Fecha Gestion Mora"
    label: "Gestion Mora"
  }


  ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    group_label: "Cliente"
    label: "Cuenta Codigo"
    description: "Responsable de pago / Cuenta Code"
  }

  dimension: bill_cycle_id {
    type: string
    sql: ${TABLE}.BILL_CYCLE_ID ;;
    label: "Ciclo Facturacion ID"
    description: "Contiene el ciclo de facturación en formato fecha completo YYYYMMDD"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    group_label: "Cliente"
    label: "Codigo"
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.DOCUMENT_NUMBER ;;
    group_label: "Cliente"
    label: "Documento Numero"
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DOCUMENT_TYPE ;;
    group_label: "Cliente"
    label: "Documento Tipo"
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
    group_label: "Cliente"
    label: "Nombre"
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.GROUP_CODE ;;
    label: "Collection Group"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
    group_label: "Cliente"
    label: "Apellido"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    group_label: "Cliente"
    label: "Razon Social"
  }

  dimension: version_no {
    type: string
    sql: ${TABLE}.VERSION_NO ;;
    label: "Version Linea"
  }


  ## Numbers

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
    label: "Object ID"
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    group_label: "Cliente"
    label: "Cuenta ID"
  }

  dimension: action_id {
    type: number
    sql: ${TABLE}.ACTION_ID ;;
    label: "Accion ID"
  }

  dimension: collect_debt_id {
    type: number
    sql: ${TABLE}.COLLECT_DEBT_ID ;;
    label: "Collect Debt ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    group_label: "Cliente"
    label: "Cliente ID"
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GROUP_ID ;;
    label: "Collection Group ID"
  }

  dimension: payment_plan_id {
    type: number
    sql: ${TABLE}.PAYMENT_PLAN_ID ;;
    label: "Payment Plan ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Suscripcion Numero"
  }

  dimension: ult_accion_id_exe {
    type: number
    value_format_name: id
    sql: ${TABLE}.ULT_ACCION_ID_EXE ;;
    label: "Hito Ultimo ID"
  }


  ## Hidden ##

  dimension: adv_apply_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.ADV_APPLY_AMOUNT ;;
  }

  dimension: dispute_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.DISPUTE_AMOUNT ;;
  }

  dimension: invoice_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.INVOICE_AMOUNT ;;
  }

  dimension: late_payment_fee {
    hidden: yes
    type: number
    sql: ${TABLE}.LATE_PAYMENT_FEE ;;
  }

  dimension: open_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_AMOUNT ;;
  }

  dimension: os_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OS_AMOUNT ;;
  }

  dimension: pending_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.PENDING_AMOUNT ;;
  }

  dimension: writeoff_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.WRITEOFF_AMOUNT ;;
  }

##############
## Measures ##
##############

  measure: total_adv_apply_amount {
    type: sum
    sql: ${TABLE}.ADV_APPLY_AMOUNT ;;
    group_label: "Total"
    label: "Monto Factura Aplicado"
  }

  measure: total_dispute_amount {
    type: sum
    sql: ${TABLE}.DISPUTE_AMOUNT ;;
    group_label: "Total"
    label: "Moonto Reclamado"
  }

  measure: total_invoice_amount {
    type: sum
    sql: ${TABLE}.INVOICE_AMOUNT ;;
    group_label: "Total"
    label: "Monto del Comprobante"
  }

  measure: total_late_payment_fee {
    type: sum
    sql: ${TABLE}.LATE_PAYMENT_FEE ;;
    group_label: "Total"
    label: "Monto Interes por Mora"
  }

  measure: total_open_amount {
    type: sum
    sql: ${TABLE}.OPEN_AMOUNT ;;
    group_label: "Total"
    label: "Saldo Vencido"
  }

  measure: total_os_amount {
    type: sum
    sql: ${TABLE}.OS_AMOUNT ;;
    group_label: "Total"
    label: "Saldo Vencido Hito"
  }

  measure: total_pending_amount {
    type: sum
    sql: ${TABLE}.PENDING_AMOUNT ;;
    group_label: "Total"
    label: "Pending Amount"
  }

  measure: total_writeoff_amount {
    type: sum
    sql: ${TABLE}.WRITEOFF_AMOUNT ;;
    group_label: "Total"
    label: "Monto Cancelado"
  }

  measure: count_object_id {
    type: count_distinct
    sql: ${TABLE}.object_id ;;
    group_label: "Cantidad"
    label: "Object Id"
  }
}
