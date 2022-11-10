INTERFACE if_bgrfc_client PUBLIC.
  CLASS-METHODS delete_failed_unit
    IMPORTING
      unit_id TYPE any
    RAISING
      cx_bgrfc_invalid_unit.

  CLASS-METHODS run_failed_unit
    IMPORTING
      unit_id TYPE xsequence
    RAISING
      cx_bgrfc_invalid_unit.
ENDINTERFACE.