*&---------------------------------------------------------------------*
*& Include          ZGOK_TABLE_UPLOAD_PAI
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  ZGOK_TABLE_UPLOAD_PAI  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
module user_command_0100 input.
  case sy-ucomm.
    when 'BACK'.
      leave to screen 0.
    when 'GETFILE'.

      leave to screen 0.
    when others.
  endcase.
endmodule.
module d9001_value_filepath input.

*Select the file from the Local system
  CALL METHOD cl_gui_frontend_services=>get_temp_directory
    CHANGING
      temp_dir = directory.
  CALL METHOD cl_gui_frontend_services=>file_open_dialog
    EXPORTING
      window_title      = 'SELECT THE FILE'
      initial_directory = directory
*      file_filter       = '*.XLS'
      multiselection    = ' '
    CHANGING
      file_table        = filetable
      rc                = rc.
  IF rc = 1.
    READ TABLE filetable INDEX 1 INTO line.
    gv_upload_choice = line-filename.
  else.
    MESSAGE 'Please select only one record.' type 'E'.
  ENDIF.

CASE gv_upload_choice.
  WHEN '1'.

  WHEN '2'.

  WHEN '3'.

ENDCASE.
endmodule.
