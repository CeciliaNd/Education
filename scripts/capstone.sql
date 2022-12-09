/*Which state/region has the most 4 year college graduates?*/
-----------------------------------------------------------------------------
select distinct state_name as state, 
sum(persons_25_w_4_yrs_college) AS persons_25_w_4_yrs_college, census_region_name
from educationdata
where year = '2010-2014' OR year = '2009-2013' OR year = '2006-2010' OR year = '2005-2009'
group by state_name, census_region_name
order by persons_25_w_4_yrs_college desc



/*Which year had the most graduates?(2010-2014, 2009-2013, 2008-2012, 2006-2010, 2005-2009*/
-----------------------------------------
select year, sum(persons_25_w_4_yrs_college ) as graduates
from popdemodata 
where year = '2010-2014' OR year = '2009-2013' OR year = '2006-2010' OR year = '2005-2009'
group by year
order by year desc


/*which state has the most people with a hs diploma or more*/   
---------------------------------------------------------------
select sum(persons_25_w_hs_dipl_or_more) AS persons_25_w_hs_diplo_or_more, state_name, census_region_name
from educationdata
where year = '2010-2014' OR year = '2009-2013' OR year = '2006-2010' OR year = '2005-2009'
group by state_name, census_region_name
order by state_name


/*which state has the most people with a hs diploma +25 yrs old*/
-------------------------------------------------------------------
select sum(persons_25_w_hs_diploma) As persons_25_w_hs_diploma ,state_name, census_region_name, year
from popdemodata
where year = '2010-2014' OR year = '2009-2013' OR year = '2006-2010' OR year = '2005-2009'
group by state_name, census_region_name, year 
order by persons_25_w_hs_diploma desc

/*Does income play a role?*/
-------------------------------
select state_name, sum(median_family_income) as median_family_income, sum(median_household_income) as median_household_income, census_region_name
from popdemodata
group by state_name, census_region_name
order by median_family_income desc

/*does population play role?*/
select population_estimate, 