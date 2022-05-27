## PIC DataGroups

datagroup: pic_default_dg {
  sql_trigger:  SELECT
                  MAX(_auditoria._fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM @{gcp_ambiente}.FT_CALLIN`
                WHERE FECHA_INI_LLAMADA_ARGSRCId = (SELECT MAX(FECHA_INI_LLAMADA_ARGSRCId ) AS MaxFechaEntidad FROM @{gcp_ambiente}.FTH_CALLIN`) ;;
  max_cache_age: "12 hours"
  label: "PIC Default"
  description: "Monitorea la actualizacion del campo _fechaUltimaActualizacion sobre la ultima particion existente"
}
