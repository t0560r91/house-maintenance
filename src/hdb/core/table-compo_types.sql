create table core.compo_types (
    id serial primary key,
    sys_id int references core.systems (id),
    compo_type text not null,
    unique (sys_id, compo_type)
);
