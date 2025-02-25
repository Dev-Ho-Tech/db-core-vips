--liquibase formatted sql

--changeset lnavarrete:20250224_081511 runOnChange:true stripComments:false
--comment: create_table_t_incoming_mastercard

create table IF NOT EXISTS t_control_disputes_files_3(id integer)
