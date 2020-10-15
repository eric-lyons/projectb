view: TIME_TEST {
  derived_table: {
    explore_source: users {
      column: count {}
      column: state {}
      column: gender {}
      filters: {
        field: users.state
        value: "New Jersey"
      }
    }
  }
  dimension: count {
    type: number
  }
  dimension: state {}
  dimension: gender {}
}
