*&---------------------------------------------------------------------*
*& Include          ZGOK_TABLE_UPLOAD_PBO
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module ZGOK_TABLE_UPLOAD_PBO OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
module status_0100 output.
 SET PF-STATUS '0100'.
 SET TITLEBAR 'Choice screen for upload'.


"Upload dropdown parameters
 PERFORM get_upload_choice using '1' 'Upload XSL file'.
 PERFORM get_upload_choice using '2' 'Upload PRM file'.
 PERFORM get_upload_choice using '3' 'Upload XML file'.
 gv_id = 'GV_UPLOAD_CHOICE'.
 call function 'VRM_SET_VALUES'
   exporting
     id                    = gv_id
     values                = gt_values
  EXCEPTIONS
    ID_ILLEGAL_NAME       = 1
    OTHERS                = 2
           .




endmodule.




*&---------------------------------------------------------------------*
*& Form GET_UPLOAD_CHOICE
*&---------------------------------------------------------------------*
form get_upload_choice  using    lv_key
                                 lv_text.
gs_value-key = lv_key.
gs_value-text = lv_text.
append gs_value to gt_values.

endform.
