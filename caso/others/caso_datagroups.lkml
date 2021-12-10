## Caso DataGroups

datagroup: caso_default_dg  {
  sql_trigger:  SELECT
                  MAX(_auditoria._fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM @{gcp_dataset_pub}.FTH_Caso`
                WHERE FechaEntidad = (SELECT MAX(FechaEntidad) AS MaxFechaEntidad FROM @{gcp_dataset_pub}.FTH_Caso`) ;;
  max_cache_age: "2 hours"
  label: "Caso Default"
  description: "Monitorea la actualizacion del campo _fechaUltimaActualizacion sobre la ultima particion existente"
}
