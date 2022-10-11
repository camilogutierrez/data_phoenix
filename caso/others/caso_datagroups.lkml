## Caso DataGroups

datagroup: caso_default_dg {
  sql_trigger:  SELECT
                  MAX(_auditoria._fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM @{gcp_ambiente}.FTH_Caso`
                WHERE FechaEntidad = (SELECT MAX(FechaEntidad) AS MaxFechaEntidad FROM @{gcp_ambiente}.FTH_Caso`) ;;
  max_cache_age: "12 hours"
  label: "Caso Default"
  description: "Monitorea la actualizacion del campo _fechaUltimaActualizacion sobre la ultima particion existente."
}
