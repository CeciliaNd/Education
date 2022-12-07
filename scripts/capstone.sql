/*Which state/region has the most 4 year college graduates from 2010-2014?*/
-----------------------------------------------------------------------------
select distinct state_name as state, 
sum(persons_25_w_4_yrs_college) AS persons_25_w_4_yrs_college,
case
 when census_region_name IS NULL 
    THEN 'N/A' ELSE census_region_name 
        END AS census_region_name
from educationdata
where year = '2010-2014'
group by state_name, census_region_name
order by persons_25_w_4_yrs_college desc

/*Which gender has the most graduates?*/
-----------------------------------------
select max(population_male_25_44) AS male ,max(population_female_25_44) AS female --sum(persons_25_w_4_yrs_college) as degrees
from popdemodata 
order by persons_25_w_4_yrs_college desc
--where year = '1975'

select year 
from popdemodata

