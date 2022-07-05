view: ft_cuenta_cambios_ciclo {
  label: "Cuenta Cambios Ciclo"
  sql_table_name: @{gcp_ambiente}.FT_CuentaCambiosCiclo` ;;
  suggestions: no

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${eff_date} AS STRING FORMAT 'YYYYMMDD'),'-',${acct_id});;
  }

  ## Dates

  dimension_group: eff {
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
    sql: ${TABLE}.EFF_DATE ;;
    datatype: timestamp
    label: "Efectiva"
    group_label: "Fecha Efectiva"
  }

  dimension_group: exp {
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
    sql: ${TABLE}.EXP_DATE ;;
    datatype: timestamp
    label: "Expiracion"
    group_label: "Fecha Expiracion"
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
  }

  dimension: act_payment_mode {
    type: string
    sql: ${TABLE}.ACT_PAYMENT_MODE ;;
  }

  dimension: act_payment_mode_des {
    type: string
    sql: ${TABLE}.ACT_PAYMENT_MODE_DES ;;
  }

  dimension: bill_cycle_type_new {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE_NEW ;;
  }

  dimension: bill_cycle_type_old {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE_OLD ;;
  }

  dimension: ind_cambio_ciclo {
    type: string
    sql: ${TABLE}.IND_CAMBIO_CICLO ;;
  }

  dimension: pri_payment_mode {
    type: string
    sql: ${TABLE}.PRI_PAYMENT_MODE ;;
  }

  dimension: pri_payment_mode_des {
    type: string
    sql: ${TABLE}.PRI_PAYMENT_MODE_DES ;;
  }

  dimension: ult_payment_mode {
    type: string
    sql: ${TABLE}.ULT_PAYMENT_MODE ;;
  }

  dimension: ult_payment_mode_des {
    type: string
    sql: ${TABLE}.ULT_PAYMENT_MODE_DES ;;
  }

  ## Numbers

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

##############
## Measures ##
##############

  measure: count {
    type: count
    drill_fields: []
  }
}
