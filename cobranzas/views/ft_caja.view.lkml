view: ft_caja {
  label: "Caja"
  sql_table_name: @{gcp_ambiente}.FT_Caja`;;
  suggestions: no

## Dimensions

  ## Primary Key

  dimension: pk {
    primary_key: yes
    hidden: yes
    type:  string
    sql:${TABLE}.CAJAPK;;
    label: "PK"
  }

  ## Dates

  dimension_group: cr_close {
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
    sql: ${TABLE}.CR_CLOSE_DATE ;;
    datatype: timestamp
    group_label: "Fecha Cierre"
    label: "Cierre"
  }

  dimension_group: cr_open {
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
    sql: ${TABLE}.CR_OPEN_DATE ;;
    datatype: timestamp
    group_label: "Fecha Apertura"
    label: "Apertura"
  }

  dimension_group: trx_trans {
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
    sql: ${TABLE}.TRX_TRANS_DATE ;;
    datatype: timestamp
    group_label: "Fecha Transaccion"
    label: "Transaccion"
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

  dimension: canal2_point_sale_des {
    type: string
    sql: ${TABLE}.CANAL2_POINT_SALE_DES ;;
    label: "Punto Venta Canal"
    description: "Indica el Canal del punto de venta (caja): Agentes / Oficina Comercial Telecom / Ventas"
  }

  dimension: cr_mismatch_reason {
    type: string
    sql: ${TABLE}.CR_MISMATCH_REASON ;;
    label: "Motivo No Coincidencia"
  }

  dimension: cr_oper_id {
    type: string
    sql: ${TABLE}.CR_OPER_ID ;;
    label: "Operador"
  }

  dimension: cr_point_sale_id {
    type: string
    sql: ${TABLE}.CR_POINT_SALE_ID ;;
    label: "Punto Venta ID"
  }

  dimension: cr_prov_point_sale_id {
    type: string
    sql: ${TABLE}.CR_PROV_POINT_SALE_ID ;;
    label: "Punto Venta Provincia ID"
  }

  dimension: cr_staff_name {
    type: string
    sql: ${TABLE}.CR_STAFF_NAME ;;
    label: "Usuario"
  }

  dimension: cr_status {
    type: string
    sql: ${TABLE}.CR_STATUS ;;
    label: "Estado"
    description: "C: close, O: Open"
  }

  dimension: cr_status_des {
    type: string
    sql: ${TABLE}.CR_STATUS_DES ;;
    label: "Estado Descripci??n"
    description: "Close, Open"
  }

  dimension: crd_bank_acct_code {
    type: string
    sql: ${TABLE}.CRD_BANK_ACCT_CODE ;;
    label: "Entidad N??mero de Cuenta"
  }

  dimension: crd_tipo_operacion {
    type: string
    sql: ${TABLE}.CRD_TIPO_OPERACION ;;
    label: "Operaci??n Tipo"
    description: "1 Ajuste de Caja, 2 Apertura Caja, 3 Cash to Safe, 4  Cierre Caja, 5  Pago, 6 Reversi??n"
  }

  dimension: credit_card_type_des {
    type: string
    sql: ${TABLE}.CREDIT_CARD_TYPE_DES ;;
    label: "Tarjeta Descripci??n"
    description: "Informa el tipo de tarjeta: D??bito, Cr??dito, Maestro,  Electron, etc."
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.CURRENCY_NAME ;;
    label: "Moneda"
  }

  dimension: currency_symbol {
    type: string
    sql: ${TABLE}.CURRENCY_SYMBOL ;;
    label: "Moneda S??mbolo"
  }

  dimension: entity_des {
    type: string
    sql: ${TABLE}.ENTITY_DES ;;
    label: "Tarjeta Tipo"
    description: "Informa el tipo de tarjeta: D??bito, Cr??dito, Maestro,  Electron, etc."
  }

  dimension: entity_id {
    type: string
    sql: ${TABLE}.ENTITY_ID ;;
    label: "Tarjeta Tipo ID"
  }

  dimension: ind_cash_register_close {
    type: string
    sql: ${TABLE}.IND_CASH_REGISTER_CLOSE ;;
    label: "Indicador Cierre"
    description: "0: Abierta, 1:Cerrada"
  }

  dimension: ind_wondersoft {
    type: string
    sql: ${TABLE}.IND_WONDERSOFT ;;
    label: "Indicador Wondersoft"
    description: "Indicador de pago proveniente de Wondersoft."
  }

  dimension: num_boleta {
    type: string
    sql: ${TABLE}.NUM_BOLETA ;;
    label: "Boleta"
  }

  dimension: payment_method_des {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_DES ;;
    label: "Medio de Pago"
    description: "1 Sin informar, 2 Compensaci??n intereses no regulados, 3 D??bito a Pr??xima Factura, 4  D??bito autom??tico, 5 Efectivo, 6  Tarjeta de Cr??dito, 7 Tarjeta de D??bito"
  }

  dimension: payment_method_id {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD_ID ;;
    label: "Medio de Pago ID"
  }

  dimension: point_sale_des {
    type: string
    sql: ${TABLE}.POINT_SALE_DES ;;
    label: "Punto de Venta"
  }

  dimension: province_name {
    type: string
    sql: ${TABLE}.PROVINCE_NAME ;;
    label: "Provincia"
  }

  ## Numbers

  dimension: batch_no {
    type: number
    sql: ${TABLE}.BATCH_NO ;;
    value_format: "0"
    label: "Lote"
  }

  dimension: cr_emission_point_id {
    type: number
    sql: ${TABLE}.CR_EMISSION_POINT_ID ;;
    value_format: "0"
    label: "Punto Emisi??n ID"
  }

  dimension: crd_trans_id {
    type: number
    sql: ${TABLE}.CRD_TRANS_ID ;;
    value_format: "0"
    label: "Transacci??n ID"
    description: "Identificador de la operaci??n, n??mero interno de HW"
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.CURRENCY_ID ;;
    value_format: "0"
    label: "Modeda ID"
  }

  ## Hidden ##

  dimension: cash_reg_detail_id {
    hidden: yes
    type: number
    sql: ${TABLE}.CASH_REG_DETAIL_ID ;;
    label: "Caja Detalle ID"
  }

  dimension: cr_actual_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_ACTUAL_AMT ;;
  }

  dimension: cr_adj_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_ADJ_AMT ;;
  }

  dimension: cr_init_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_INIT_AMT ;;
  }

  dimension: cr_safe_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_SAFE_AMT ;;
  }

  dimension: cr_trans_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.CR_TRANS_AMT ;;
  }

  dimension: trans_detail_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TRANS_DETAIL_AMT ;;
  }

  dimension: trx_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.TRX_AMT ;;
  }

  dimension: crd_credit_card_type_id {
    type: number
    hidden: yes
    sql: ${TABLE}.CRD_CREDIT_CARD_TYPE_ID ;;
    value_format: "0"
    label: "Tarjeta Tipo ID"
  }

  dimension: crd_oper_id {
    hidden: yes
    type: string
    sql: ${TABLE}.CRD_OPER_ID ;;
    label: "Operador"
  }
  dimension: crd_staff_name {
    hidden: yes
    type: string
    sql: ${TABLE}.CRD_STAFF_NAME ;;
    label: "Usuario"
    description: "Es el c??digo de usuario (U o G)"
  }

  dimension: crd_trans_method {
    hidden: yes
    type: string
    sql: ${TABLE}.CRD_TRANS_METHOD ;;
    label: "Medio de Pago ID"
  }

## Measures

  measure: count_cash_reg_detail_id {
    type: count_distinct
    sql: ${TABLE}.CASH_REG_DETAIL_ID ;;
    group_label: "Cantidad"
    label: "Caja Detalle ID"
  }

 measure: total_cr_actual_amt {
    type: sum
    sql: ${TABLE}.CR_ACTUAL_AMT ;;
    group_label: "Total"
    label: "Importe Actual"
    description: "Monto actual del d??a corriente."
  }

  measure: total_cr_adj_amt {
    type: sum
    sql: ${TABLE}.CR_ADJ_AMT ;;
    group_label: "Total"
    label: "Importe Ajuste"
    description: "Monto de ajuste del d??a corriente."
  }

  measure: total_cr_init_amt {
    type: sum
    sql: ${TABLE}.CR_INIT_AMT ;;
    group_label: "Total"
    label: "Importe Inicial"
    description: "Monto inicial de la caja registradora."
  }

  measure: total_cr_safe_amt {
    type: sum
    sql: ${TABLE}.CR_SAFE_AMT ;;
    group_label: "Total"
    label: "Importe Reservado"
    description: "Importe reservado de la caja registradora."
  }

  measure: total_cr_trans_amt {
    type: sum
    sql: ${TABLE}.CR_TRANS_AMT ;;
    group_label: "Total"
    label: "Transacci??n Importe"
    description: "Importe de la transacci??n de la caja registradora."
  }

  measure: total_trans_detail_amt {
    type: sum
    sql: ${TABLE}.TRANS_DETAIL_AMT ;;
    group_label: "Total"
    label: "Transacci??n Importe Detalle"
    description: "Importe del detalle de la transacci??n."
  }

  measure: total_trx_amt {
    type: sum
    sql: ${TABLE}.TRX_AMT ;;
    group_label: "Total"
    label: "Transacci??n Importe Origen"
    description: "Importe de la transacci??n, proviene de las tablas de transacciones."
  }
}
