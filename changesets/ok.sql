--liquibase formatted sql

--changeset lnavarrete:20250224_081512 runOnChange:true stripComments:false
--comment: create_table_t_incoming_mastercard

create sequence s_control_dispute_file_id_seq
    as integer;

create table t_control_disputes_files
(
    control_dispute_file_id integer default nextval('s_control_dispute_file_id_seq'::regclass) not null,
    bucket_name varchar(100) not null,
    file_source_name varchar(100) not null,
    file_target_name varchar(100) not null,
    file_target_key varchar(250) not null,
    etag_target_desc varchar(60) not null,
    job_name varchar(150) null,
    status_parent_code varchar(30) not null,
    status_code char(3) not null,
    category_file_parent_code varchar(30) not null,
    category_file_code char(10) not null,
    upload_date timestamp not null,
    validation_date timestamp null,
    total_rows_number integer null,
    successful_rows_number integer null,
    failed_rows_number integer null,
    attempt_number integer default 0 not null,
    user_updated varchar(50) not null,
    created_date timestamp not null default now(),
    updated_date timestamp,
    user_created varchar(150)
);
