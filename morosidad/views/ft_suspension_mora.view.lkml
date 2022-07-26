view: ft_suspension_mora {
  label: "Suspension Mora"
  sql_table_name: @{gcp_ambiente}.FT_SuspensionMora` ;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: suspensionpk {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.SUSPENSIONPK ;;
  }

  ## Dates

  dimension_group: fecha_saldo {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      quarter,
      year
    ]
    sql: ${TABLE}.FECHA_SALDO ;;
    datatype: date
    convert_tz: no
    group_label: "Fecha Saldo"
    label: "Saldo"
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
    group_label: "Fecha Rehabilitacion Actual"
    label: "Rehabilitacion Actual"
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
    group_label: "Fecha Gestion Mora"
    label: "Gestion Mora"
  }

  dimension: _fecha_creacion {
    type: date_time
    datatype: datetime
    sql: ${TABLE}._fechaCreacion ;;
    view_label: "Auditoria"
    label: "Fecha Creacion"
  }

  dimension: _fecha_ultima_actualizacion {
    type: date_time
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
    group_label: "Cliente"
    label: "Cuenta Codigo"
  }

  dimension: cust_code {
    type: string
    sql: ${TABLE}.CUST_CODE ;;
    group_label: "Cliente"
    label: "Cliente Codigo"
  }

  dimension: document_number {
    type: string
    sql: ${TABLE}.DOCUMENT_NUMBER ;;
    group_label: "Cliente"
    label: "Documento Numbero"
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

  dimension: msisdn {
    type: string
    sql: ${TABLE}.MSISDN ;;
    label: "Linea"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    group_label: "Cliente"
    label: "Razon Social"
  }

  dimension: ult_bill_cycle_type {
    type: string
    sql: ${TABLE}.ULT_BILL_CYCLE_TYPE ;;
    label: "Ultimo Ciclo Facturacion Tipo"
  }

  dimension: ult_dst_status {
    type: string
    sql: ${TABLE}.ULT_DST_STATUS ;;
    label: "ULT DST Status"
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
    label: "Cliente ID"
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
    label: "Object ID"
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
    group_label: "Ultima Accion"
    label: "Mora Hito ID"
  }

  ## Hidden ##

  dimension: os_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OS_AMOUNT ;;
  }

  dimension: saldo_total {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO_TOTAL ;;
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


  ##############
  ## Measures ##
  ##############

  measure: total_os_amount {
    type: sum
    sql: ${TABLE}.OS_AMOUNT ;;
    group_label: "Total"
    label: "Saldo Hito Vencido"
  }

  measure: total_saldo_total {
    type: sum
    sql: ${TABLE}.SALDO_TOTAL ;;
    group_label: "Total"
    label: "Saldo Total"
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
    group_label: "Cantidad"
    label: "Object ID"
  }

  measure: count {
    type: count
    group_label: "Cantidad"
    label: "Count"
  }

}
