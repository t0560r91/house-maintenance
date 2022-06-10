create table core.compo_status (
    id serial primary key,
    compo_status text references env.param__compo_status
    -- compo_status_cd text
);