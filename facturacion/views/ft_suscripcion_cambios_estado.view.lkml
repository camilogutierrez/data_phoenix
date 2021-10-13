view: ft_suscripcion_cambios_estado_view {
  sql_table_name: `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FT_SuscripcionCambiosEstado` ;;
  label: "Suscripcion Cambios Estado"

  dimension: acct_code {
    type: string
    sql: ${TABLE}.ACCT_CODE ;;
  }

  dimension: acct_id {
    type: number
    sql: ${TABLE}.ACCT_ID ;;
  }

  dimension: bill_cycle_type {
    type: string
    sql: ${TABLE}.BILL_CYCLE_TYPE ;;
  }

  dimension_group: change {
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
    sql: ${TABLE}.CHANGE_DATE ;;
    datatype: timestamp
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CUST_ID ;;
  }

  dimension: dst_status {
    type: string
    sql: ${TABLE}.DST_STATUS ;;
  }

  dimension: dst_status_des {
    type: string
    sql: ${TABLE}.DST_STATUS_DES ;;
  }

  dimension: dst_status_detail {
    type: string
    sql: ${TABLE}.DST_STATUS_DETAIL ;;
  }

  dimension: dst_status_detail_des {
    type: string
    sql: ${TABLE}.DST_STATUS_DETAIL_DES ;;
  }

  dimension: ind_movimiento {
    type: number
    sql: ${TABLE}.IND_MOVIMIENTO ;;
  }

  dimension: movimiento_des {
    type: string
    sql: ${TABLE}.MOVIMIENTO_DES ;;
  }

  dimension: payment_mode {
    type: string
    sql: ${TABLE}.PAYMENT_MODE ;;
  }

  dimension_group: rehabilitacion {
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
    sql: ${TABLE}.REHABILITACION_DATE ;;
    datatype: timestamp
  }

  dimension: src_status {
    type: string
    sql: ${TABLE}.SRC_STATUS ;;
  }

  dimension: src_status_des {
    type: string
    sql: ${TABLE}.SRC_STATUS_DES ;;
  }

  dimension: src_status_detail {
    type: string
    sql: ${TABLE}.SRC_STATUS_DETAIL ;;
  }

  dimension: src_status_detail_des {
    type: string
    sql: ${TABLE}.SRC_STATUS_DETAIL_DES ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.SUB_ID ;;
  }

  dimension: sub_identity {
    type: string
    sql: ${TABLE}.SUB_IDENTITY ;;
  }

  dimension_group: suspension {
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
    sql: ${TABLE}.SUSPENSION_DATE ;;
    datatype: timestamp
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
