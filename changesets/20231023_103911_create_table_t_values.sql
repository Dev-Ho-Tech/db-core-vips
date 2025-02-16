--liquibase formatted sql

--changeset gcuentas:20231023_103911 runOnChange:true stripComments:false
--comment: create_table_t_values

create table sch_core.t_values
(

    value_id         integer      not null,
    code             varchar(30)  not null,
    description_desc varchar(150) not null,
    parent_id        integer      null,
    created_date     timestamp    not null default now(),
    updated_date     timestamp    null,
    user_created     varchar(50)  not null,
    user_updated     varchar(50)  null
);

alter table sch_core.t_values
    add constraint pk_t_values primary key (value_id);

comment on table sch_core.t_values is 'Tabla que guardara los estados o indicadores de la base de datos.';

comment on column sch_core.t_values.value_id is 'identificador principal de la tabla';
comment on column sch_core.t_values.code is 'codigo del cual se identificara el estado, indicador o contante que servira para las demas tablas';
comment on column sch_core.t_values.description_desc is 'descripcion del registro.';
comment on column sch_core.t_values.parent_id is 'id que agrupa los valores que puede tener una tabla.';
comment on column sch_core.t_values.user_created is 'Usuario que creo el registro';
comment on column sch_core.t_values.created_date is 'fecha en que se creo el registro';
comment on column sch_core.t_values.updated_date is 'fecha en la que se modifico el registro';
comment on column sch_core.t_values.user_updated is 'usuario que modifico el registro';


--rollback drop table sch_core.t_values;
