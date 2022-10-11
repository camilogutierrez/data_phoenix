view: lk_cierres_portabilidad {
  label: "Cierres"
  derived_table: {
    sql:
      SELECT
        FechaEntidad,
        CAST(CAST(FechaEntidad AS STRING FORMAT 'YYYYMM') AS INT64) AS MesId,
        CAST(FORMAT_DATE("%d-%b-%Y", FechaEntidad) AS STRING) AS Cierre,
        EsFechaCierreMensual AS CierreMensualFlag
      FROM `teco-prod-edw-5e1b.ue4_prod_edw_cfg_gcp.CFG_CierreDiario`
      WHERE (Estado= 'OK' OR (Estado= 'PENDIENTE' AND FechaEntidad <= CURRENT_DATE()))
      AND EntidadStage = 'PUBLICACION' AND Entidad = EntidadDependencia
      AND Entidad = "FTH_Portabilidad" ;;
  }

## Dimensions

  ## Primary Key

  dimension: fecha_entidad {
    hidden: yes
    primary_key: yes
    type: date
    sql: ${TABLE}.FechaEntidad ;;
    datatype: date
    convert_tz: no
  }

  ## Strings

  dimension: cierre {
    type: string
    sql: ${TABLE}.Cierre ;;
    order_by_field: fecha_entidad
    label: "Cierre"
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
}
