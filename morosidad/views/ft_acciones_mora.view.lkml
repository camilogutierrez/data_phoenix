view: ft_acciones_mora {
  sql_table_name: @{gcp_ambiente}.FT_AccionesMora` ;;
  label: "Acciones Mora"

  ## Dimensions

    ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.ACCIONESPK;;
  }

    ## Dates

  dimension_group: close_collect {
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
    sql: ${TABLE}.CLOSE_COLLECT_DATE ;;
    group_label: "Fecha Fin Gestion Mora"
    label: "Fin Gestion Mora"
  }

  dimension_group: fecha_saldo {
    type: time
    timeframes: [
      raw,
      date,
      day_of_month,
      day_of_week,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    datatype: date
    sql: ${TABLE}.FECHA_SALDO ;;
    group_label: "Fecha Saldo"
    label: "Saldo"
  }

  dimension_group: prox_accion_fecha {
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
    group_label: "Mora Fecha Inicio Gestion"
    label: "Mora Inicio Gestion"
  }

  dimension_group: ult_accion_fecha_exe {
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
    sql: ${TABLE}.ULT_ACCION_FECHA_EXE ;;
    group_label: "Hito Ultimo Fecha"
    label: "Hito Ultimo"
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
    group_label: "Rehabilitacion Fecha"
    label: "Rehabilitacion"
  }

    ## Strings

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    group_label: "Cliente"
    label: "Cuenta Codigo"
    description: "Responsable de pago / Cuenta Code"
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

  dimension: exec_status {
    type: string
    sql: ${TABLE}.EXEC_STATUS ;;
    label: "Hito Estado"
    description: "2 - Ejecutando"
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
    label: "Collecion Group"
  }

  dimension: group_version {
    type: string
    sql: ${TABLE}.GROUP_VERSION ;;
    label: "Group Version"
  }

  dimension: ult_accion_hold_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_HOLD_STATUS ;;
    group_label: "Ultima Accion"
    group_item_label: "Hito Estado Espera"
    description: "0: No se retiene la orden de trabajo 1: Se está reteniendo la orden de trabajo 2: La retención de la orden de trabajo se invierte"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
    group_label: "Cliente"
    label: "Apellido"
  }

  dimension: mgr_status {
    type: string
    sql: ${TABLE}.MGR_STATUS ;;
    label: "Cobro Gestion Estado"
    description: "Tipo de tratamiento de cobro al objeto gestionado. 1=Bajo Control de Cobro, 2=No Bajo Control de Cobro, 3=Suspendido, 4=Gestionado Manualmente."
  }

  dimension: mgr_status_reason {
    type: string
    sql: ${TABLE}.MGR_STATUS_REASON ;;
    label: "Cobro Motivo Gestion"
  }

  dimension: msisdn {
    type: string
    sql: ${TABLE}.MSISDN ;;
    label: "Linea"
  }

  dimension: pa_status {
    type: string
    sql: ${TABLE}.PA_STATUS ;;
    label: "Plan Financiacion Estado"
  }

  dimension: plan_code {
    type: string
    sql: ${TABLE}.PLAN_CODE ;;
    label: "Plan Financiacion Codigo"
  }

  dimension: plan_version {
    type: string
    sql: ${TABLE}.PLAN_VERSION ;;
    label: "Plan Financiacion Version"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    group_label: "Cliente"
    label: "Razon Social"
  }

  dimension: resume_accion_cancel_status {
    type: string
    sql: ${TABLE}.RESUME_ACCION_CANCEL_STATUS ;;
    group_item_label: "Rehabilitacion Estado Cancelacion"
    description: "1: Initialized 2: Successfully cancelled 3: Cancellation failed 4: No need to cancel"
  }

  dimension: resume_accion_status {
    type: string
    sql: ${TABLE}.RESUME_ACCION_STATUS ;;
    group_item_label: "Rehabilitacion Estado"
  }

  dimension: resume_action_code {
    type: string
    sql: ${TABLE}.RESUME_ACTION_CODE ;;
    group_item_label: "Rehabilitacion Codigo"

  }

  dimension: ult_accion_cancel_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_CANCEL_STATUS ;;
    group_label: "Ultima Accion"
    group_item_label: "Rehabilitacion Ultimo Estado Cancelacion"
  }

  dimension: ult_accion_code_exe {
    type: string
    sql: ${TABLE}.ULT_ACCION_CODE_EXE ;;
    group_label: "Ultima Accion"
    group_item_label: "Hito Ultimo Codigo"
  }

  dimension: ult_accion_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_STATUS ;;
    group_label: "Ultima Accion"
    group_item_label: "Ejecutada"
  }

  dimension: ult_accion_name {
    type: string
    sql: ${TABLE}.ULT_ACCION_NAME ;;
    group_label: "Ultima Accion"
    group_item_label: "Mora Hito Descripcion"
  }

    ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    group_label: "Cliente"
    label: "Cuenta ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    group_label: "Cliente"
    label: "ID"
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GROUP_ID ;;
    label: "Collection Group ID"
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
    label: "Object ID"
  }

  dimension: resume_action_id {
    type: number
    sql: ${TABLE}.RESUME_ACTION_ID ;;
    group_item_label: "Rehabilitacion ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Subscripcion Numero"
  }

  dimension: ult_accion_task_order_id {
    type: number
    sql: ${TABLE}.ULT_ACCION_TASK_ORDER_ID ;;
    group_label: "Ultima Accion"
    group_item_label: "Orden de Trabajo ID"
  }

  dimension: ult_accion_id_exe {
    type: number
    sql: ${TABLE}.ULT_ACCION_ID_EXE ;;
    group_label: "Ultima Accion"
    group_item_label: "Hito Ultimo ID"
  }

  ## Hidden

  dimension: os_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OS_AMOUNT ;;
  }

  dimension: saldo_vencido {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENCIDO ;;
  }

  dimension: saldo_x_vencer {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_X_VENCER ;;
  }


  ## Measures

  measure: total_os_amount {
    type: sum
    sql: ${TABLE}.OS_AMOUNT ;;
    group_label: "Total"
    label: "Saldo Vencido Hito"
  }

  measure: total_saldo_vencido {
    type: sum
    sql: ${TABLE}.SALDO_VENCIDO ;;
    group_label: "Total"
    label: "Saldo Vencido"
  }

  measure: total_saldo_x_vencer {
    type: sum
    sql: ${TABLE}.SALDO_X_VENCER ;;
    group_label: "Total"
    label: "Saldo por Vencer"
  }

  measure: count_object_id {
    type: count_distinct
    sql: ${TABLE}.OBJECT_ID ;;
    group_label: "Count"
    label: "Object ID"
  }

  measure: count {
    type: count
    group_label: "Cantidad"
    label: "Count"
  }

}
