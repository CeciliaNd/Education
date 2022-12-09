/*Which state/region has the most 4 year college graduates from 2010-2014?*/
-----------------------------------------------------------------------------
select distinct state_name as state, 
sum(persons_25_w_4_yrs_college) AS persons_25_w_4_yrs_college, census_region_name
from educationdata
where year = '2010-2014'
group by state_name, census_region_name
order by persons_25_w_4_yrs_college desc



/*Which year had the most graduates?*/
-----------------------------------------
select year, sum(persons_25_w_4_yrs_college ) as graduates
from popdemodata 
group by year
order by year desc


/*which state has the most people with a hs diploma or more*/   
---------------------------------------------------------------
select sum(persons_25_w_hs_dipl_or_more) AS persons_25_w_hs_diplo_or_more, state_name
from educationdata
group by state_name
order by state_name


/*which state has the most people with a hs diploma +25 yrs old*/




