## Portabilidad DataGroups

datagroup: portabilidad_default_dg {
  sql_trigger:   SELECT
                  MAX(_fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM @{gcp_ambiente}.FTH_Portabilidad`
                WHERE FechaEntidad = (SELECT MAX(FechaEntidad) AS MaxFechaEntidad FROM @{gcp_ambiente}.FTH_Portabilidad`) ;;
  max_cache_age: "12 hours"
  label: "Portabilidad Default"
  description: "Monitorea la actualizacion del campo _fechaUltimaActualizacion sobre la ultima particion existente."
}
