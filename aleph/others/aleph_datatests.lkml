test: aleph_is_accurate {
  explore_source: aleph {
    column: count {
      field: orders.count
    }
  }
  assert: count_is_expected_value {
    expression: ${orders.count} = 2704 ;;
  }
}
