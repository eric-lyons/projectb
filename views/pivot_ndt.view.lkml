

view: pivot_ndt {
  derived_table: {
    explore_source: users {
      column: state {}
      column: email {}
      column: first_name {}
      column: gender {}
      column: city {}
      column: age {}
    }
  }
  dimension: state {
    label: " 1 State"
  }
  dimension: email {
    label: " 1 Email"
  }
  dimension: first_name {
    label: " 1 First Name"
  }
  dimension: gender {
    label: " 1 Gender"
  }
  dimension: city {
    label: " 1 City"
  }
  dimension: age {
    label: " 1 Age"
    type: number
  }
}
