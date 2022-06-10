create table core.components (
    id serial primary key,
    sys_id int not null references core.systems (id),
    compo_type_id int not null references core.compo_types (id),
    loc_id int not null references core.locations (id),
    compo_model text,
    compo_status_id int not null references core.compo_status_id (id),
    unit_count int,
    comm_date date,
    inspected_date date,
    updated_date date,
    decom_date date,
    predecessor_id int references core.components(id),
    successor_id int references core.components(id)
);

insert into core.componenets values
    (default, 

    