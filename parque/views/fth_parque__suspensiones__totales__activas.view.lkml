view: fth_parque__suspensiones__totales__activas {

## Dimensions
  # Date
  dimension_group: fecha_suspension1 {
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
    sql: ${TABLE}.FechaSuspension1 ;;
    label: "Suspension 1"
  }

  dimension_group: fecha_suspension_ultima {
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
    sql: ${TABLE}.FechaSuspensionUltima ;;
    label: "Suspension Ultima"
  }

  ## String
  dimension: motivo_suspension1 {
    type: string
    sql: ${TABLE}.MotivoSuspension1 ;;
    label: "Motivo Suspension 1"
  }

  dimension: motivo_suspension_ultima {
    type: string
    sql: ${TABLE}.MotivoSuspensionUltima ;;
    label: "Motivo Suspension Ultima"
  }

  ## Number
  dimension: cantidad_suspensiones_activas {
    type: number
    sql: ${TABLE}.CantidadSuspensionesActivas ;;
    label: "Cantidad Suspensiones Activas"
  }

## Measures

}
