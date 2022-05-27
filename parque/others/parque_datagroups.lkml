## Parque DataGroups

datagroup: parque_default_dg {
  sql_trigger:  SELECT
                  MAX(_auditoria._fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM @{gcp_ambiente}.FTH_Parque`
                WHERE FechaEntidad = (SELECT MAX(FechaEntidad) AS MaxFechaEntidad FROM @{gcp_ambiente}.FTH_Parque`) ;;
  max_cache_age: "12 hours"
  label: "Parque Default"
  description: "Monitorea la actualizacion del campo _fechaUltimaActualizacion sobre la ultima particion existente"
}
