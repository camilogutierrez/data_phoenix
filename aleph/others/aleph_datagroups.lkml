## ALEPH DataGroups

datagroup: aleph_default_dg  {
  sql_trigger:  SELECT
                  MAX(_fechaUltimaActualizacion) AS Max_fechaUltimaActualizacion
                FROM `teco-dev-edw-8b23.ue4_dev_edw_alp_gcp.ALEPH` ;;
  max_cache_age: "12 hours"
  label: "Aleph Default"
  description: "Se ejecuta luego de la actualizacion del campo _fechaUltimaActualizacion"
}
