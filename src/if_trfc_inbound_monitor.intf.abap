INTERFACE if_trfc_inbound_monitor PUBLIC.

  METHODS delete_unit_list
    IMPORTING
      unit_table     TYPE any
      commit_changes TYPE abap_bool DEFAULT abap_true.

  TYPES foo1 TYPE STANDARD TABLE OF rfcdest WITH DEFAULT KEY.
  METHODS get_destinations
    IMPORTING
      error TYPE abap_bool DEFAULT abap_false
    RETURNING
      VALUE(dest_tab) TYPE foo1.

  TYPES foo2 TYPE STANDARD TABLE OF trfc_unit_info_inbound WITH DEFAULT KEY.
  METHODS get_unit_information_by_dest
    IMPORTING
      dest_name   TYPE clike
      unit_number TYPE i DEFAULT 20
    RETURNING
      VALUE(unit_information_table) TYPE foo2.

ENDINTERFACE.