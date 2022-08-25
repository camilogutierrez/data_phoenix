view: lk_ultimo_cierre_orden {
  label: "Cierres"
  derived_table: {
    sql:
      SELECT
        MAX(FechaEntidad) AS UltimoCierre
      FROM `teco-prod-edw-5e1b.ue4_prod_edw_cfg_gcp.CFG_CierreDiario`
      WHERE (Estado= 'OK' OR (Estado= 'PENDIENTE' AND FechaEntidad <= CURRENT_DATE()))
      AND EntidadStage = 'PUBLICACION' AND Entidad = EntidadDependencia
      AND Entidad = "FTH_Orden" ;;
  }

## Dimensions

  ## Primary Key

  dimension: ultimo_cierre {
    hidden: yes
    primary_key: yes
    type: date
    sql: ${TABLE}.UltimoCierre ;;
    datatype: date
    convert_tz: no
  }
}
