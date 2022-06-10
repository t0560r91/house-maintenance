create table core.locations (
    id serial primary key,
    sys_id int not null references core.systems (id),
    compo_type_id int not null references core.compo_types (id),
    loc_id int not null,
    loc_descr text,
    -- is_interior,
    -- room_id,
    -- field_id,
    unique (sys_id, compo_type_id, loc_id)
);