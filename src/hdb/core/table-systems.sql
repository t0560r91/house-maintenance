create table core.systems (
    id serial primary key,
    sys_name text unique not null references env.param__sys_name (sys_name),
    sys_descr text,
    category text not null references env.param_sys_category (sys_category)
);

insert into core.systems values
    (1, 'foundation', null, 'structural'),
    (2, 'framing', null, 'structural'),

    (default, 'flooring', null, 'membrane'),
    (default, 'siding', null, 'membrane'),
    (default, 'door', null, 'membrane'),
    (default, 'windows', null, 'membrane'),
    (default, 'roofing', null, 'membrane'),

    (default, 'insulation', null, 'functional'),
    (default, 'heating', null, 'functional'),
    (default, 'drainage', null, 'functional'),
    (default, 'plumbing', null, 'functional'),
    (default, 'electrical', null, 'functional'),
    (default, 'sewage', null, 'functional'),
    (default, 'telecommunication', null, 'functional');
