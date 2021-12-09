test: aleph_count {
  explore_source: aleph {
    column: count {}
  }
  assert: total_count {
    expression: ${aleph.count} = 2704 ;;
  }
}
