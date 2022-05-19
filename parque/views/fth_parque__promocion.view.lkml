view: fth_parque__promocion {

## Dimensions

  # Date
  dimension_group: promocion_fecha_fin {
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
    sql: PromocionFechaFin ;;
    label: "Promocion Fin"
  }

  # String
  dimension: pago_ajuste_precio_srcid {
    type: string
    sql: PagoAjustePrecioSRCId ;;
    label: "Pago Ajuste Precio"
  }

  dimension: promocion_nombre {
    type: string
    sql: PromocionNombre ;;
    label: "Promocion Nombre"
  }

  # Yesno
  dimension: marca_promocion {
    type: yesno
    sql: MarcaPromocion ;;
    label: "Marca Promocion"
  }

  # Hidden
  dimension: fth_parque__promocion {
    type: string
    hidden: yes
    sql: fth_parque__promocion ;;
  }

## Measures
}
