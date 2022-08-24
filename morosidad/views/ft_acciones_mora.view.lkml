view: ft_acciones_mora {
  label: "Acciones Mora"
  sql_table_name: @{gcp_ambiente}.FT_AccionesMora` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: object_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
  }

  ## Dates

  dimension_group: close_collect {
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
    sql: ${TABLE}.CLOSE_COLLECT_DATE ;;
    datatype: timestamp
    group_label: "Fecha Fin Gestion Mora"
    label: "Fin Gestion Mora"
  }

  dimension_group: prox_accion_fecha {
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
    sql: ${TABLE}.PROX_ACCION_FECHA ;;
    datatype: timestamp
    group_label: "Fecha Proxima Accion"
    label: "Proxima Accion"
  }

  dimension_group: resume_actual {
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
    sql: ${TABLE}.RESUME_ACTUAL_DATE ;;
    datatype: timestamp
    group_label: "Fecha Rehabilitacion"
    label: "Rehabilitacion"
  }

  dimension_group: start_collect {
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
    sql: ${TABLE}.START_COLLECT_DATE ;;
    datatype: timestamp
    group_label: "Fecha Inicio Gestion Mora"
    label: "Inicio Gestion Mora"
  }

  dimension_group: ult_accion_fecha_exe {
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
    sql: ${TABLE}.ULT_ACCION_FECHA_EXE ;;
    datatype: timestamp
    group_label: "Fecha Hito Ultimo"
    label: "Hito Ultimo"
  }

  dimension_group: _fecha_creacion {
    type: time
    datatype: datetime
    sql: ${TABLE}._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension_group: _fecha_ultima_actualizacion {
    type: time
    datatype: datetime
    sql: ${TABLE}._fechaUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Fecha Actualizacion"
  }

  ## Strings

  dimension: _sesion_id {
    type: string
    sql: ${TABLE}._sesionId ;;
    view_label: "Auditoria"
    label: "Sesion Id"
  }

  dimension: _usuario_creacion {
    type: string
    sql: ${TABLE}._usuarioCreacion ;;
    view_label: "Auditoria"
    label: "Usuario Creacion"
  }

  dimension: _usuario_ultima_actualizacion {
    type: string
    sql: ${TABLE}._usuarioUltimaActualizacion ;;
    view_label: "Auditoria"
    label: "Usuario Modificacion"
  }

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
    view_label: "Cliente"
    label: "Cuenta Codigo"
    description: "Responsable de pago / Cuenta Code"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    view_label: "Cliente"
    label: "Codigo"
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.DOCUMENT_NUMBER ;;
    view_label: "Cliente"
    label: "Documento"
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.DOCUMENT_TYPE ;;
    view_label: "Cliente"
    label: "Tipo Documento"
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
    view_label: "Cliente"
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

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
    view_label: "Cliente"
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
    label: "Cobro Gestion Motivo"
  }

  dimension: msisdn {
    type: string
    sql: ${TABLE}.MSISDN ;;
    label: "Linea"
  }

  dimension: pa_status {
    type: string
    sql: ${TABLE}.PA_STATUS ;;
    group_label: "Plan Financiacion"
    group_item_label: "Estado"
    label: "Plan Financiacion Estado"
  }

  dimension: plan_code {
    type: string
    sql: ${TABLE}.PLAN_CODE ;;
    group_label: "Plan Financiacion"
    group_item_label: "Codigo"
    label: "Plan Financiacion Codigo"
  }

  dimension: plan_version {
    type: string
    sql: ${TABLE}.PLAN_VERSION ;;
    group_label: "Plan Financiacion"
    group_item_label: "Version"
    label: "Plan Financiacion Version"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    view_label: "Cliente"
    label: "Razon Social"
  }

  dimension: resume_accion_cancel_status {
    type: string
    sql: ${TABLE}.RESUME_ACCION_CANCEL_STATUS ;;
    group_label: "Rehabilitacion"
    group_item_label: "Estado Cancelacion"
    label: "Rehabilitacion Estado Cancelacion"
    description: "1: Initialized 2: Successfully cancelled 3: Cancellation failed 4: No need to cancel"
  }

  dimension: resume_accion_status {
    type: string
    sql: ${TABLE}.RESUME_ACCION_STATUS ;;
    group_label: "Rehabilitacion"
    group_item_label: "Estado"
    label: "Rehabilitacion Estado"
  }

  dimension: resume_action_code {
    type: string
    sql: ${TABLE}.RESUME_ACTION_CODE ;;
    group_label: "Rehabilitacion"
    group_item_label: "Codigo"
    label: "Rehabilitacion Codigo"
  }

  dimension: ult_accion_cancel_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_CANCEL_STATUS ;;
    group_label: "Ultima Accion"
    group_item_label: "Rehabilitacion Ultimo Estado Cancelacion"
    label: "Ultima Accion Rehabilitacion Ultimo Estado Cancelacion"
  }

  dimension: ult_accion_code_exe {
    type: string
    sql: ${TABLE}.ULT_ACCION_CODE_EXE ;;
    group_label: "Ultima Accion"
    group_item_label: "Hito Ultimo Codigo"
    label: "Ultima Accion Hito Ultimo Codigo"
  }

  dimension: ult_accion_hold_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_HOLD_STATUS ;;
    group_label: "Ultima Accion"
    group_item_label: "Hito Estado Espera"
    label: "Ultima Accion Hito Estado Espera"
    description: "0: No se retiene la orden de trabajo 1: Se está reteniendo la orden de trabajo 2: La retención de la orden de trabajo se invierte"
  }

  dimension: ult_accion_name {
    type: string
    sql: ${TABLE}.ULT_ACCION_NAME ;;
    group_label: "Ultima Accion"
    group_item_label: "Mora Hito Descripcion"
    label: "Ultima Accion Mora Hito Descripcion"
  }

  dimension: ult_accion_status {
    type: string
    sql: ${TABLE}.ULT_ACCION_STATUS ;;
    group_label: "Ultima Accion"
    group_item_label: "Ejecutada"
    label: "Ultima Accion Ejecutada"
  }

  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    label: "Cuenta ID"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    view_label: "Cliente"
    label: "ID"
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GROUP_ID ;;
    label: "Collection Group ID"
  }

  dimension: resume_action_id {
    type: number
    sql: ${TABLE}.RESUME_ACTION_ID ;;
    group_label: "Rehabilitacion"
    group_item_label: "ID"
    label: "Rehabilitacion ID"
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
    label: "Subscripcion Numero"
  }

  dimension: ult_accion_id_exe {
    type: number
    value_format_name: id
    sql: ${TABLE}.ULT_ACCION_ID_EXE ;;
    group_label: "Ultima Accion"
    group_item_label: "Hito Ultimo ID"
    label: "Ultima Accion Hito Ultimo ID"
  }

  dimension: ult_accion_task_order_id {
    type: number
    sql: ${TABLE}.ULT_ACCION_TASK_ORDER_ID ;;
    group_label: "Ultima Accion"
    group_item_label: "Orden de Trabajo ID"
    label: "Ultima Accion Orden de Trabajo ID"
  }

  ## Hidden

  dimension: os_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OS_AMOUNT ;;
  }

  dimension: saldo_a_vencer {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_A_VENCER ;;
  }

  dimension: saldo_vencido {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_VENCIDO ;;
  }

## Measures

  measure: total_os_amount {
    type: sum
    sql: ${os_amount} ;;
    label: "Saldo Vencido Hito"
  }

  measure: total_saldo_vencido {
    type: sum
    sql: ${saldo_vencido} ;;
    label: "Saldo Vencido"
  }

  measure: total_saldo_a_vencer {
    type: sum
    sql: ${saldo_a_vencer} ;;
    label: "Saldo A Vencer"
  }

  measure: count {
    type: count
    label: "Acciones"
  }
}
