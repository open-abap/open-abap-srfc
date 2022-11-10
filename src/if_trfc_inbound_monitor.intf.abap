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

  TYPES: BEGIN OF foo2,
           unit_id        TYPE x LENGTH 16,
           message_id     TYPE symsgid,
           message_number TYPE symsgno,
           message_v1     TYPE symsgv,
           message_v2     TYPE symsgv,
           message_v3     TYPE symsgv,
           message_v4     TYPE symsgv,
           uname          TYPE syuname,
         END OF foo2.
  TYPES foo3 TYPE STANDARD TABLE OF foo2 WITH DEFAULT KEY.
  METHODS get_unit_information_by_dest
    IMPORTING
      dest_name   TYPE clike
      unit_number TYPE i DEFAULT 20
    RETURNING
      VALUE(unit_information_table) TYPE foo3.

ENDINTERFACE.