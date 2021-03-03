- dashboard: lookml_test

  title: Test




  filters:

  - name: run_id

    title: 'Run ID'

    type: field_filter

    explore: fact_results_impacts_tax

    field: fact_results_impacts_tax.run_id

    allow_multiple_values: false



  - name: year

    title: 'Dollar Year'

    type: number_filter

    allow_multiple_values: false
