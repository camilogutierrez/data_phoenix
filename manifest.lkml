project_name: "Data_Phoenix_Reporting"

## PROJECTS ##

# DEV: teco-dev-edw-8b23
# TST: teco-test-edw-d589
# PRD: teco-prod-edw-5e1b

constant: gcp_project {
  value: "teco-dev-edw-8b23"
  export: none
}

## DATASETS ##

# DEV: ue4_dev_edw_pub_gcp
# TST: ue4_test_edw_pub_gcp
# PRD: ue4_prod_edw_pub_gcp

constant: gcp_dataset {
  value: "ue4_dev_edw_pub_gcp"
  export: none
}

  # ALEPH

# DEV: ue4_dev_edw_alp_gcp
# TST: ue4_test_edw_alp_gcp
# PRD: ue4_prod_edw_alp_gcp

constant: gcp_dataset_aleph {
  value: "ue4_dev_edw_pub_gcp"
  export: none
}
