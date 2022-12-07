/*Which state/region has the most 4 year college graduates from 2010-2014?*/



-----------------------------------------------------------------------------
select distinct state_name as state, census_region_name as region, persons_25_w_4_yrs_college
from educationdata
where year = '2010-2014'
group by state_name, census_region_name,persons_25_w_4_yrs_college 
order by state_name 


