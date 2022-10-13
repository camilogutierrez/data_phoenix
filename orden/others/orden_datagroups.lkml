## Orden DataGroups

datagroup: orden_default_dg {
  sql_trigger:  SELECT
                  MAX(_auditoria._fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM `teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp.FTH_Orden`
                WHERE FechaEntidad = (SELECT MAX(FechaEntidad) AS MaxFechaEntidad FROM `teco-prod-edw-5e1b.ue4_prod_edw_pub_gcp.FTH_Orden`) ;;
  max_cache_age: "12 hours"
  label: "Orden Default"
  description: "Monitorea la actualizacion del campo _fechaUltimaActualizacion sobre la ultima particion existente."
}
