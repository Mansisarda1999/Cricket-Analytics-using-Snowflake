-- create database
create database cricket;
-- create 4 different schemas
create schema land; 
create schema raw;
create schema clean;
create schema consumption;

show schemas in database cricket;

use schema cricket.land;

-- json file format
create or replace file format my_json_format
 type = json
 null_if = ('\\n', 'null', '')
    strip_outer_array = true
    comment = 'Json File Format with outer stip array flag true'; 

-- creating an internal stage
create or replace stage cricket.land.my_stg; 

-- lets list the internal stage
list @cricket.land.my_stg;

-- check if data is being loaded or not
list @my_stg/cricket/json/;

-- quick check if data is coming correctly or not
select 
        t.$1:meta::variant as meta, 
        t.$1:info::variant as info, 
        t.$1:innings::array as innings, 
        metadata$filename as file_name,
        metadata$file_row_number int,
        metadata$file_content_key text,
        metadata$file_last_modified stg_modified_ts
     from  @my_stg/cricket/json/1384402.json (file_format => 'my_json_format') t;









