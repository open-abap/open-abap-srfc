CLASS cl_trfc_client_inbound DEFINITION PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_bgrfc_client.
ENDCLASS.

CLASS cl_trfc_client_inbound IMPLEMENTATION.

  METHOD if_bgrfc_client~delete_failed_unit.
    ASSERT 1 = 2.
  ENDMETHOD.

  METHOD if_bgrfc_client~run_failed_unit.
    ASSERT 1 = 2.
  ENDMETHOD.

ENDCLASS.