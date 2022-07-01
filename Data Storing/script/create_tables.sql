create database db_lab;

use db_lab;

create table patterns
(
    pattern_name varchar(60) not null PRIMARY KEY,
    link         varchar(120)
);

create table segments
(
    segment_name varchar(60) not null primary key
);

create table pattern_segment
(
    pattern_name varchar(60) not null,
    segment_name varchar(60) not null,

    primary key (pattern_name, segment_name),

    foreign key (pattern_name) references patterns (pattern_name),
    foreign key (segment_name) references segments (segment_name)
);

create table images
(
    pattern_name varchar(60)  not null,
    segment_name varchar(60)  not null,
    link         varchar(120) not null,
    alt          varchar(120),

    primary key (pattern_name, segment_name, link),
    foreign key (pattern_name) references patterns (pattern_name),
    foreign key (segment_name) references segments (segment_name)
);

create table words
(
    word        varchar(60) not null primary key,
    total_count int default (0)
);

create table word_locations
(
    pattern_name varchar(60) not null,
    segment_name varchar(60) not null,
    word         varchar(45) not null,
    count        int default (0),

    primary key (pattern_name, segment_name, word),
    foreign key (pattern_name) references patterns (pattern_name),
    foreign key (segment_name) references segments (segment_name),
    foreign key (word) references words (word)
);

