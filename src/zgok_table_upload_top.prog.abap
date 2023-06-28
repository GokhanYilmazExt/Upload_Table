*&---------------------------------------------------------------------*
*& Include          ZGOK_TABLE_UPLOAD_TOP
*&---------------------------------------------------------------------*

"Selection parameters
DATA: gv_upload_choice LIKE RLGRAP-FILENAME.


"Screen parameters
*DATA: gv_id type VRM_ID,
*      gt_values type VRM_VALUES,
*      gs_value type VRM_VALUE.


data : directory TYPE string,
       filetable TYPE filetable,
       line      TYPE LINE OF filetable,
       rc        TYPE i.
