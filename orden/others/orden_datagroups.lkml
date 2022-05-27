## Orden DataGroups

datagroup: orden_default_dg {
  sql_trigger:  SELECT
                  MAX(_auditoria._fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM @{gcp_ambiente}.FTH_Orden`
                WHERE FechaEntidad = (SELECT MAX(FechaEntidad) AS MaxFechaEntidad FROM @{gcp_ambiente}.FTH_Orden`) ;;
  max_cache_age: "12 hours"
  label: "Orden Default"
  description: "Monitorea la actualizacion del campo _fechaUltimaActualizacion sobre la ultima particion existente"
}
