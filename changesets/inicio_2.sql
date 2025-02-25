--liquibase formatted sql

--changeset lnavarrete:20250224_081516 runOnChange:true stripComments:false
--comment: create_table_t_incoming_mastercard

alter table t_control_disputes_files_3
	add dispute_registered_number integer;
