create sequence hibernate_sequence start with 1 increment by 1;

    create table DataPoint (
        id bigint not null,
        name varchar(255),
        primary key (id)
    );

    create table DataPoint_AUD (
        id bigint not null,
        REV integer not null,
        REVTYPE tinyint,
        name varchar(255),
        primary key (id, REV)
    );

    create table REVINFO (
        REV integer generated by default as identity,
        REVTSTMP bigint,
        primary key (REV)
    );

    alter table DataPoint_AUD 
        add constraint FK43jw6b5mtbfxur0xhyjxynbea 
        foreign key (REV) 
        references REVINFO;
