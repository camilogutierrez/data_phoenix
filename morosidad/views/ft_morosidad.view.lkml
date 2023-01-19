view: ft_morosidad {
  label: "Morosidad"
  sql_table_name: @{gcp_ambiente}.FT_Morosidad` ;;
  suggestions: no

## Dimensions

 ## Primary Key

  dimension: object_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OBJECT_ID ;;
    label: "Object ID"
  }

 ## Dates

  dimension_group: create {
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CREATE_DATE ;;
    group_label: "Fecha Gestion Mora"
    label: "Gestion Mora"
  }

  dimension_group: fec_co_vie {
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FEC_CO_VIE ;;
    group_label: "Fecha Vencimiento Comprobante"
    label: "Vencimiento Comprobante"
    description: "Fecha de vencimiento del comprobante mas antiguo impago"
  }

  dimension_group: fec_proce {
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
    sql: ${TABLE}.FEC_PROCE ;;
    group_label: "Fecha Proceso RUS"
    label: "Proceso RUS"
  }

  dimension_group: fecha_proceso {
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA_PROCESO ;;
    group_label: "Fecha Proceso"
    label: "Proceso"
  }

  dimension_group: fecha_vto_guia {
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA_VTO_GUIA ;;
    view_label: "RUS"
    group_label: "Fecha Vencimiento Guia"
    label: "Vencimiento Guia"
  }

  dimension_group: prox_accion_fecha {
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PROX_ACCION_FECHA ;;
    group_label: "Fecha Proxima Accion"
    label: "Proxima Accion"
  }

  dimension_group: resume_actual_date {
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
    group_label: "Fecha Inicio Proceso"
    label: "Inicio Proceso"
    description: "Fecha de comienzo del proceso de Collectión (due date + 1)"
  }

  dimension_group: transit_date {
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
    sql: ${TABLE}.TRANSIT_DATE ;;
    datatype: timestamp
    group_label: "Fecha Transicion"
    label: "Transicion"
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
    group_label: "Fecha Inicio Mora Hito"
    label: "Inicio Mora Hito"
  }

  ## Strings

  dimension: accion_ejecutada {
    type: string
    sql: ${TABLE}.ACCION_EJECUTADA ;;
    label: "Accion ejecutada Si/No"
  }

  dimension: apellido_cliente {
    type: string
    sql: ${TABLE}.APELLIDO_CLIENTE ;;
    view_label: "Cliente"
    label: "Apellido"
  }

  dimension: ciclo {
    type: string
    sql: ${TABLE}.CICLO ;;
    view_label: "RUS"
    label: "Ciclo Facturacion"
  }

  dimension: cuenta_segmentacion {
    type: string
    sql: ${TABLE}.CUENTA_SEGMENTACION ;;
    view_label: "NPLAY"
    group_label: "Cuenta"
    group_item_label: "Segmentacion"
    label: "Cuenta Segmentacion"
  }

  dimension: cuenta_nplay {
    type: string
    sql: ${TABLE}.CUENTA_NPLAY ;;
    view_label: "NPLAY"
    group_label: "Cuenta"
    group_item_label: "NPLAY"
    label: "Cuenta NPLAY"
  }

  dimension: cuenta_producto {
    type: string
    sql: ${TABLE}.CUENTA_PRODUCTO ;;
    view_label: "NPLAY"
    group_label: "Cuenta"
    group_item_label: "Producto"
    label: "Cuenta Producto"
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
    label: "Subsegmento"
  }

  dimension: customer_code {
    type: string
    sql: ${TABLE}.CUSTOMER_CODE ;;
    view_label: "Cliente"
    label: "Codigo"
  }

  dimension: dni_cuit {
    type: string
    sql: ${TABLE}.DNI_CUIT ;;
    view_label: "Cliente"
    label: "Documento"
  }

  dimension: dni_nplay {
    type: string
    sql: ${TABLE}.DNI_NPLAY ;;
    view_label: "NPLAY"
    group_label: "DNI"
    group_item_label: "NPLAY"
    label: "DNI NPLAY"
  }

  dimension: dni_producto {
    type: string
    sql: ${TABLE}.DNI_PRODUCTO ;;
    view_label: "NPLAY"
    group_label: "DNI"
    group_item_label: "Producto"
    label: "DNI Producto"
  }

  dimension: dni_segmentacion {
    type: string
    sql: ${TABLE}.DNI_SEGMENTACION ;;
    view_label: "NPLAY"
    group_label: "DNI"
    group_item_label: "Segmentacion"
    label: "DNI Segmentacion"
  }

  dimension: dunning_flag {
    type: string
    sql: ${TABLE}.DUNNING_FLAG ;;
    label: "Dunning Flag"
  }

  dimension: dunning_flag_des {
    type: string
    sql: ${TABLE}.DUNNING_FLAG_DES ;;
    label: "Dunning Flag Descripcion"
  }

  dimension: exec_status {
    type: string
    sql: ${TABLE}.EXEC_STATUS ;;
    label: "Mora Estado Gestion ID"
  }

  dimension: exec_status_des {
    type: string
    sql: ${TABLE}.EXEC_STATUS_DES ;;
    label: "Mora Estado Gestion"
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.GROUP_CODE ;;
    label: "Colleccion Grupo"
  }

  dimension: group_version {
    type: string
    sql: ${TABLE}.GROUP_VERSION ;;
    label: "Linea Version"
  }

  dimension: linea_mora {
    type: string
    sql: ${TABLE}.LINEA_MORA ;;
    label: "Linea Mora"
  }

  dimension: mgr_status {
    type: string
    sql: ${TABLE}.MGR_STATUS ;;
    label: "Estado Gestion ID"
  }

  dimension: mgr_status_des {
    type: string
    sql: ${TABLE}.MGR_STATUS_DES ;;
    label: "Estado Gestion"
  }

  dimension: mgr_status_reason {
    type: string
    sql: ${TABLE}.MGR_STATUS_REASON ;;
    label: "Motivo Estado Gestion ID"
  }

  dimension: mgr_status_reason_des {
    type: string
    sql: ${TABLE}.MGR_STATUS_REASON_DES ;;
    label: "Motivo Estado Gestion"
  }

  dimension: nombre_cliente {
    type: string
    sql: ${TABLE}.NOMBRE_CLIENTE ;;
    view_label: "Cliente"
    label: "Nombre"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    view_label: "Cliente"
    label: "Razon Social"
  }

  dimension: tipo_doc {
    type: string
    sql: ${TABLE}.TIPO_DOC ;;
    view_label: "Cliente"
    label: "Tipo Documento"
  }

  dimension: tipo_mora_hito {
    type: string
    sql: ${TABLE}.TIPO_MORA_HITO ;;
    label: "Tipo Mora Hito"
  }

  dimension: ult_accion_code_exe {
    type: string
    sql: ${TABLE}.ULT_ACCION_CODE_EXE ;;
    label: "Mora Hito"
  }

  dimension: cuenta_code {
    type: string
    sql: ${TABLE}.CUENTA_CODE ;;
    view_label: "Cliente"
    label: "Cuenta Codigo"
  }

  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    view_label: "Cliente"
    label: "Cuenta ID"
  }

  dimension: cant_comprob {
    type: number
    sql: ${TABLE}.CANT_COMPROB ;;
    view_label: "RUS"
    label: "Comprobantes Vencidos"
    description: "Indica la cantidad de comprobantes vencidos de la cuenta  a la última la ejecución de RUS01."
  }

  dimension: cant_lin_nopre {
    type: number
    sql: ${TABLE}.CANT_LIN_NOPRE ;;
    view_label: "RUS"
    label: "Suscripciones Activas"
    description: "Indica la cantidad de lineas no prepagas activas de la cuenta a la última la ejecución de RUS01"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    view_label: "Cliente"
    label: "ID"
  }

  dimension: ult_accion_id_exe {
    type: number
    value_format_name: id
    sql: ${TABLE}.ULT_ACCION_ID_EXE ;;
    label: "Mora Hito ID"
  }

  dimension: cant_dias_mora {
    type: number
    sql: date_diff(${fecha_proceso_date}, ${fec_co_vie_date}, DAY) ;;
    label: "Dias Mora"
  }

  ## Hidden

  dimension: dias_proximo_hito {
    hidden: yes
    type: number
    sql: ${TABLE}.DIAS_PROXIMO_HITO ;;
  }

  dimension: open_amount {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_AMOUNT ;;
  }

  dimension: saldo {
    hidden: yes
    type: number
    sql: ${TABLE}.SALDO ;;
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

  dimension: cuenta_q_movil_pre {
    hidden: yes
    type: number
    sql: ${TABLE}.CUENTA_Q_MOVIL_PRE ;;
  }

  dimension: cuenta_q_movil_abono {
    hidden: yes
    type: number
    sql: ${TABLE}.CUENTA_Q_MOVIL_ABONO ;;
  }

  dimension: cuenta_q_fija_tv {
    hidden: yes
    type: number
    sql: ${TABLE}.CUENTA_Q_FIJA_TV ;;
  }

  dimension: cuenta_q_fija_internet {
    hidden: yes
    type: number
    sql: ${TABLE}.CUENTA_Q_FIJA_INTERNET ;;
  }

  dimension: cuenta_q_fija_toip {
    hidden: yes
    type: number
    sql: ${TABLE}.CUENTA_Q_FIJA_TOIP ;;
  }

  dimension: cuenta_q_fija_bundle {
    hidden: yes
    type: number
    sql: ${TABLE}.CUENTA_Q_FIJA_BUNDLE ;;
  }

  dimension: dni_q_movil_pre {
    hidden: yes
    type: number
    sql: ${TABLE}.DNI_Q_MOVIL_PRE ;;
  }

  dimension: dni_q_movil_abono {
    hidden: yes
    type: number
    sql: ${TABLE}.DNI_Q_MOVIL_ABONO ;;
  }

  dimension: dni_q_fija_tv {
    hidden: yes
    type: number
    sql: ${TABLE}.DNI_Q_FIJA_TV ;;
  }

  dimension: dni_q_fija_internet {
    hidden: yes
    type: number
    sql: ${TABLE}.DNI_Q_FIJA_INTERNET ;;
  }

  dimension: dni_q_fija_toip {
    hidden: yes
    type: number
    sql: ${TABLE}.DNI_Q_FIJA_TOIP ;;
  }

  dimension: dni_q_fija_bundle {
    hidden: yes
    type: number
    sql: ${TABLE}.DNI_Q_FIJA_BUNDLE ;;
  }

## Measures

  measure: count {
    type: count
    group_label: "Cantidad"
    label: "Registros"
  }

  measure: total_open_amount {
    type: sum
    sql: ${open_amount} ;;
    label: "Saldo Vencido"
  }

  measure: total_saldo {
    type: sum
    sql: ${saldo} ;;
    view_label: "RUS"
    label: "Saldo"
  }

  measure: total_saldo_a_vencer {
    type: sum
    sql: ${saldo_a_vencer} ;;
    view_label: "RUS"
    label: "Saldo a Vencer"
  }

  measure: total_saldo_vencido {
    type: sum
    sql: ${saldo_vencido} ;;
    view_label: "RUS"
    label: "Saldo Vencido"
  }

  measure: total_cant_lin_nopre {
    type: sum
    sql: ${cant_lin_nopre} ;;
    view_label: "RUS"
    group_label: "Cantidad"
    label: "Suscripciones Activas"
    description: "Indica la cantidad de lineas no prepagas activas de la cuenta a la última la ejecución de RUS01."
  }

  measure: total_cuenta_code {
    type: count_distinct
    sql: ${cuenta_code} ;;
    group_label: "Cantidad"
    label: "Cuenta Codigo"
    description: "Responsable de pago / Cuenta Code"
  }

  measure: total_cuenta_q_movil_pre {
    type: sum
    sql: ${cuenta_q_movil_pre} ;;
    view_label: "NPLAY"
    group_label: "Cuenta"
    group_item_label: "Movil Prepago"
    label: "Cuenta Movil Prepago"
  }

  measure: total_cuenta_q_movil_abono {
    type: sum
    sql: ${cuenta_q_movil_abono} ;;
    view_label: "NPLAY"
    group_label: "Cuenta"
    group_item_label: "Movil Abono"
    label: "Cuenta Movil Abono"
  }

  measure: total_cuenta_q_fija_tv {
    type: sum
    sql: ${cuenta_q_fija_tv} ;;
    view_label: "NPLAY"
    group_label: "Cuenta"
    group_item_label: "Fija TV"
    label: "Cuenta Fija TV"
  }

  measure: total_cuenta_q_fija_internet {
    type: sum
    sql: ${cuenta_q_fija_internet} ;;
    view_label: "NPLAY"
    group_label: "Cuenta"
    group_item_label: "Fija Internet"
    label: "Cuenta Fija Internet"
  }

  measure: total_cuenta_q_fija_toip {
    type: sum
    sql: ${cuenta_q_fija_toip} ;;
    view_label: "NPLAY"
    group_label: "Cuenta"
    group_item_label: "Fija TOIP"
    label: "Cuenta Fija TOIP "
  }

  measure: total_cuenta_q_fija_bundle {
    type: sum
    sql: ${cuenta_q_fija_bundle} ;;
    view_label: "NPLAY"
    group_label: "Cuenta"
    group_item_label: "Fija Bundle"
    label: "Cuenta Fija Bundle"
  }

  measure: total_dni_q_movil_pre {
    type: sum
    sql: ${dni_q_movil_pre} ;;
    view_label: "NPLAY"
    group_label: "DNI"
    group_item_label: "Movil Prepago"
    label: "DNI Movil Prepago"
  }

  measure: total_dni_q_movil_abono {
    type: sum
    sql: ${dni_q_movil_abono} ;;
    view_label: "NPLAY"
    group_label: "DNI"
    group_item_label: "Movil Abono"
    label: "DNI Movil Abono"
  }

  measure: total_dni_q_fija_tv {
    type: sum
    sql: ${dni_q_fija_tv} ;;
    view_label: "NPLAY"
    group_label: "DNI"
    group_item_label: "Fija TV"
    label: "DNI Fija TV"
  }

  measure: total_dni_q_fija_internet {
    type: sum
    sql: ${dni_q_fija_internet} ;;
    view_label: "NPLAY"
    group_label: "DNI"
    group_item_label: "Fija Internet"
    label: "DNI Fija Internet"
  }

  measure: total_dni_q_fija_toip {
    type: sum
    sql: ${dni_q_fija_toip} ;;
    view_label: "NPLAY"
    group_label: "DNI"
    group_item_label: "Fija TOIP"
    label: "DNI Fija TOIP"
  }

  measure: total_dni_q_fija_bundle {
    type: sum
    sql: ${dni_q_fija_bundle} ;;
    view_label: "NPLAY"
    group_label: "DNI"
    group_item_label: "Fija Bundle"
    label: "DNI Fija Bundle"
  }

  measure: total_cant_comprob {
    type: sum
    sql: ${cant_comprob} ;;
    view_label: "RUS"
    group_label: "Cantidad"
    label: "Comprobantes Vencidos"
    description: "Indica la cantidad de comprobantes vencidos de la cuenta  a la última la ejecución de RUS01."
  }

  measure: total_dias_proximo_hito {
    type: sum
    sql: ${dias_proximo_hito} ;;
    group_label: "Cantidad"
    label: "Dias Proximo Hito"
  }

}
