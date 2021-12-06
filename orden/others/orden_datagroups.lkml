## Orden DataGroups

datagroup: orden_default_dg  {
  sql_trigger:  SELECT
                  MAX(_auditoria._fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FTH_Orden`
                WHERE FechaEntidad = (SELECT MAX(FechaEntidad) AS MaxFechaEntidad FROM `teco-dev-edw-8b23.ue4_dev_edw_pub_gcp.FTH_Orden`) ;;
  max_cache_age: "2 hours"
  label: "Orden Default"
  description: "Se ejecuta luego de la actualizacion del campo _fechaUltimaActualizacion sobre la ultima particion existente"
}
