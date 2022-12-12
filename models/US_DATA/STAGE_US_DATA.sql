{{ config(materialized='table') }}
select to_number(to_char(START_TIME, 'yyyymmdd')) as date_id,* from {{source('properties','US_ACCIDENT_INCREMENTAL_LOAD')}}