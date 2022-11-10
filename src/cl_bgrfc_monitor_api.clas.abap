CLASS cl_bgrfc_monitor_api DEFINITION PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS create_trfc_monitor_inbound
      RETURNING
        VALUE(monitor_reference) TYPE REF TO if_trfc_inbound_monitor.

    CLASS-METHODS create_utility
      RETURNING
        VALUE(reference) TYPE REF TO if_bgrfc_monitor_api_utility.
ENDCLASS.

CLASS cl_bgrfc_monitor_api IMPLEMENTATION.
  METHOD create_trfc_monitor_inbound.
    ASSERT 1 = 2.
  ENDMETHOD.

  METHOD create_utility.
    ASSERT 1 = 2.
  ENDMETHOD.
ENDCLASS.