## Caso DataGroups

datagroup: pic_default_dg {
  sql_trigger:  SELECT
                  MAX(_auditoria._fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM `ue4_prod_edw_pub_gcp.FTH_Caso`
                WHERE FechaEntidad = (SELECT MAX(FechaEntidad) AS MaxFechaEntidad FROM `ue4_prod_edw_pub_gcp.FTH_Caso`) ;;
  max_cache_age: "12 hours"
  label: "Caso Default"
  description: "Monitorea la actualizacion del campo _fechaUltimaActualizacion sobre la ultima particion existente"
}
