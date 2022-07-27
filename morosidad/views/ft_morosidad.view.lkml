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
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CREATE_DATE ;;
    group_label: "Fecha Creacion"
    label: "Creacion"
  }

  dimension_group: fec_co_vie {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FEC_CO_VIE ;;
    group_label: "Fecha CO VIE"
    label: "CO VIE"
  }

  dimension_group: fec_proce {
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
    sql: ${TABLE}.FEC_PROCE ;;
    group_label: "Fecha Proce."
    label: "Proce."
  }

  dimension_group: fecha_proceso {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
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
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA_VTO_GUIA ;;
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
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PROX_ACCION_FECHA ;;
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
      quarter,
      year
    ]
    sql: ${TABLE}.START_COLLECT_DATE ;;
    group_label: "Fecha Gestion Mora"
    label: "Gestion Mora"
  }

  dimension_group: ult_accion_fecha_exe {
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
    sql: ${TABLE}.ULT_ACCION_FECHA_EXE ;;
    group_label: "Fecha Ultima Accion"
    label: "Ultima Accion"
  }

  ## Strings

  dimension: accion_ejecutada {
    type: string
    sql: ${TABLE}.ACCION_EJECUTADA ;;
    group_item_label: "Accion Ejecutada"
  }

  dimension: apellido_cliente {
    type: string
    sql: ${TABLE}.APELLIDO_CLIENTE ;;
    group_label: "Cliente"
    group_item_label: "Apellido"
  }

  dimension: ciclo {
    type: string
    sql: ${TABLE}.CICLO ;;
    label: "Ciclo Facturacion"
  }

  dimension: cuenta_code {
    type: string
    sql: ${TABLE}.CUENTA_CODE ;;
    group_label: "Cliente"
    group_item_label: "Cuenta Codigo"
    description: "Responsable de pago / Cuenta Code"
  }

  dimension: cuenta_nplay {
    type: string
    sql: ${TABLE}.CUENTA_NPLAY ;;
    label: "Cuenta NPLAY"
  }

  dimension: cuenta_producto {
    type: string
    sql: ${TABLE}.CUENTA_PRODUCTO ;;
    label: "Cuenta Producto"
  }

  dimension: cuenta_segmentacion {
    type: string
    sql: ${TABLE}.CUENTA_SEGMENTACION ;;
    label: "Cuenta Segmentacion"
  }

  dimension: cust_segment {
    type: string
    sql: ${TABLE}.CUST_SEGMENT ;;
    group_label: "Cliente"
    group_item_label: "Segmento"
  }

  dimension: cust_subsegment1 {
    type: string
    sql: ${TABLE}.CUST_SUBSEGMENT1 ;;
    group_label: "Cliente"
    group_item_label: "Sub Segmento"
  }

  dimension: customer_code {
    type: string
    sql: ${TABLE}.CUSTOMER_CODE ;;
    group_label: "Cliente"
    group_item_label: "Codigo"
  }

  dimension: dni_cuit {
    type: string
    sql: ${TABLE}.DNI_CUIT ;;
    group_label: "DNI"
    group_item_label: "CUIT"

  }

  dimension: dni_nplay {
    type: string
    sql: ${TABLE}.DNI_NPLAY ;;
    group_label: "DNI"
    group_item_label: "NPLAY"
  }

  dimension: dni_producto {
    type: string
    sql: ${TABLE}.DNI_PRODUCTO ;;
    group_label: "DNI"
    group_item_label: "Producto"
  }

  dimension: dni_segmentacion {
    type: string
    sql: ${TABLE}.DNI_SEGMENTACION ;;
    group_label: "DNI"
    group_item_label: "Segmentacion"
  }

  dimension: dunning_flag {
    type: string
    sql: ${TABLE}.DUNNING_FLAG ;;
    label: "Dunning"
  }

  dimension: dunning_flag_des {
    type: string
    sql: ${TABLE}.DUNNING_FLAG_DES ;;
    label: "Dunning Descripcion"
  }

  dimension: exec_status {
    type: string
    sql: ${TABLE}.EXEC_STATUS ;;
    label: "Status Ejecucion"
  }

  dimension: exec_status_des {
    type: string
    sql: ${TABLE}.EXEC_STATUS_DES ;;
    label: "Status Ejecucion Descripcion"
  }

  dimension: group_code {
    type: string
    sql: ${TABLE}.GROUP_CODE ;;
    label: "Collection Group"
  }

  dimension: group_version {
    type: string
    sql: ${TABLE}.GROUP_VERSION ;;
    label: "Version Group"
  }

  dimension: linea_mora {
    type: string
    sql: ${TABLE}.LINEA_MORA ;;
    label: "Linea Mora"
  }

  dimension: mgr_status {
    type: string
    sql: ${TABLE}.MGR_STATUS ;;
    group_label: "Migracion"
    group_item_label: "Status"
    label: "Migracion Status"
  }

  dimension: mgr_status_des {
    type: string
    sql: ${TABLE}.MGR_STATUS_DES ;;
    group_label: "Migracion"
    group_item_label: "Status Descripcion"
    label: "Migracion Status Descripcion"
  }

  dimension: mgr_status_reason {
    type: string
    sql: ${TABLE}.MGR_STATUS_REASON ;;
    group_label: "Migracion"
    group_item_label: "Status Razon"
    label: "Migracion Status Razon"
  }

  dimension: mgr_status_reason_des {
    type: string
    sql: ${TABLE}.MGR_STATUS_REASON_DES ;;
    group_label: "Migracion"
    group_item_label: "Status Razon Descripcion"
    label: "Migracion Status Razon Descripcion"
  }

  dimension: nombre_cliente {
    type: string
    sql: ${TABLE}.NOMBRE_CLIENTE ;;
    group_label: "Cliente"
    group_item_label: "Nombre"
  }

  dimension: particion {
    type: string
    sql: ${TABLE}.PARTICION ;;
    label: "Particion"
  }

  dimension: razonsocial {
    type: string
    sql: ${TABLE}.RAZONSOCIAL ;;
    group_label: "Cliente"
    group_item_label: "Razon Social"
  }

  dimension: tipo_doc {
    type: string
    sql: ${TABLE}.TIPO_DOC ;;
    group_label: "Cliente"
    group_item_label: "Documento Tipo"
  }

  dimension: tipo_mora_hito {
    type: string
    sql: ${TABLE}.TIPO_MORA_HITO ;;
    label: "Tipo Mora Hito"
  }

  dimension: ult_accion_code_exe {
    type: string
    sql: ${TABLE}.ULT_ACCION_CODE_EXE ;;
    label: "Hito Ultimo Codigo"
  }


  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
    group_label: "Cliente"
    group_item_label: "Cuenta ID"
  }

  dimension: cant_lin_nopre {
    type: number
    sql: ${TABLE}.CANT_LIN_NOPRE ;;
    label: "Cantidad Lin NoPre"
  }

  dimension: cuenta_q_fija_bundle {
    type: number
    sql: ${TABLE}.CUENTA_Q_FIJA_BUNDLE ;;
    group_label: "Cuenta Q Fija"
    group_item_label: "Bundle"
  }

  dimension: cuenta_q_fija_internet {
    type: number
    sql: ${TABLE}.CUENTA_Q_FIJA_INTERNET ;;
    group_label: "Cuenta Q Fija"
    group_item_label: "Internet"
  }

  dimension: cuenta_q_fija_toip {
    type: number
    sql: ${TABLE}.CUENTA_Q_FIJA_TOIP ;;
    group_label: "Cuenta Q Fija"
    group_item_label: "TOIP"
  }

  dimension: cuenta_q_fija_tv {
    type: number
    sql: ${TABLE}.CUENTA_Q_FIJA_TV ;;
    group_label: "Cuenta Q Fija"
    group_item_label: "TV"
  }

  dimension: cuenta_q_movil_abono {
    type: number
    sql: ${TABLE}.CUENTA_Q_MOVIL_ABONO ;;
    group_label: "Cuenta Q Movil"
    group_item_label: "Abono"
  }

  dimension: cuenta_q_movil_pre {
    type: number
    sql: ${TABLE}.CUENTA_Q_MOVIL_PRE ;;
    group_label: "Cuenta Q Movil"
    group_item_label: "Pre"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
    group_label: "Cliente"
    group_item_label: "Cliente ID"
  }

  dimension: dias_proximo_hito {
    type: number
    sql: ${TABLE}.DIAS_PROXIMO_HITO ;;
    label: "Dias Proximo Hito"
  }

  dimension: dni_q_fija_bundle {
    type: number
    sql: ${TABLE}.DNI_Q_FIJA_BUNDLE ;;
    group_label: "DNI Q Fija"
    group_item_label: "Bundle"
  }

  dimension: dni_q_fija_internet {
    type: number
    sql: ${TABLE}.DNI_Q_FIJA_INTERNET ;;
    group_label: "DNI Q Fija"
    group_item_label: "Internet"
  }

  dimension: dni_q_fija_toip {
    type: number
    sql: ${TABLE}.DNI_Q_FIJA_TOIP ;;
    group_label: "DNI Q Fija"
    group_item_label: "TOIP"
  }

  dimension: dni_q_fija_tv {
    type: number
    sql: ${TABLE}.DNI_Q_FIJA_TV ;;
    group_label: "DNI Q Fija"
    group_item_label: "TV"
  }

  dimension: dni_q_movil_abono {
    type: number
    sql: ${TABLE}.DNI_Q_MOVIL_ABONO ;;
    group_label: "DNI Q Movil"
    group_item_label: "Abono"
  }

  dimension: dni_q_movil_pre {
    type: number
    sql: ${TABLE}.DNI_Q_MOVIL_PRE ;;
    group_label: "DNI Q Movil"
    group_item_label: "Pre"
  }

  dimension: ult_accion_id_exe {
    type: number
    value_format_name: id
    sql: ${TABLE}.ULT_ACCION_ID_EXE ;;
    label: "Hito Ultimo ID"
  }

  ## Hidden

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


  ## Measures

  measure: count {
    type: count
    label: "Cantidad"
  }

  measure: total_open_amount {
    type: sum
    sql: ${TABLE}.OPEN_AMOUNT ;;
    label: "Open Amount"
  }

  measure: total_os_amount {
    type: sum
    sql: ${TABLE}.OS_AMOUNT ;;
    label: "OS Amount"
  }

  measure: total_saldo {
    type: sum
    sql: ${TABLE}.SALDO ;;
    label: "Saldo"
  }

  measure: total_saldo_a_vencer {
    type: sum
    sql: ${TABLE}.SALDO_A_VENCER ;;
    label: "Saldo a Vencer"
  }

  measure: total_saldo_vencido {
    type: sum
    sql: ${TABLE}.SALDO_VENCIDO ;;
    label: "Saldo Vencido"
  }
}
