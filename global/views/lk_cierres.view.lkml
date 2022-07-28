view: lk_cierres {
  label: "Cierres"
  derived_table: {
    sql:
      SELECT
        FechaEntidad,
        Entidad,
        CAST(CAST(FechaEntidad AS STRING FORMAT 'YYYYMM') AS INT64) AS MesId,
        CAST(FORMAT_DATE("%d-%b-%Y", FechaEntidad) AS STRING) AS Cierre,
        EsFechaCierreMensual AS CierreMensualFlag,
        _fechaCreacion,
        _fechaUltimaActualizacion
      FROM `teco-prod-edw-5e1b.ue4_prod_edw_cfg_gcp.CFG_CierreDiario`
      WHERE (Estado= 'OK' OR (Estado= 'PENDIENTE' AND FechaEntidad <= CURRENT_DATE()))
      AND EntidadStage = 'PUBLICACION' AND Entidad = EntidadDependencia ;;
  }

## Dimensions

  ## Primary Key

  dimension: pk {
    hidden: yes
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${fecha_entidad} AS STRING FORMAT 'YYYYMMDD'),'-',${entidad}) ;;
  }

  ## Dates

  dimension: fecha_entidad {
    type: date
    sql: ${TABLE}.FechaEntidad ;;
    datatype: date
    convert_tz: no
    label: "Fecha Cierre"
  }

  dimension: fecha_creacion {
    type: date
    sql: ${TABLE}._fechaCreacion ;;
    datatype: datetime
    convert_tz: no
    label: "Fecha Creacion"
  }

  dimension: fecha_ultima_actualizacion {
    type: date
    sql: ${TABLE}._fechaUltimaActualizacion ;;
    datatype: datetime
    convert_tz: no
    label: "Fecha Ultima Actualizacion"
  }

  ## Strings

  dimension: cierre {
    type: string
    sql: ${TABLE}.Cierre ;;
    order_by_field: fecha_entidad
    label: "Cierre"
  }

  dimension: entidad {
    type: string
    sql: ${TABLE}.Entidad ;;
    label: "Entidad"
  }

  ## Numbers

  dimension: mes_id {
    type: number
    sql: ${TABLE}.MesId ;;
    value_format_name: id
    label: "Mes Id"
  }

  ## Flags

  dimension: es_cierre_mensual {
    type: yesno
    sql: ${TABLE}.CierreMensualFlag ;;
    label: "Es Cierre Mensual"
  }

## Measures

  measure: count_cierres {
    type: count
    label: "Cierres"
  }
}
