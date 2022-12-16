--does race play a role in graduates of 2010-2014?
/*select r.white ,r.black, r.hispanic, r.asian_pacific_islander, r.american_indian_alaska_native, e.state_name, sum(e.persons_25_w_4_yrs_college) as persons_25_w_4_yrs_college
from raceandsex as r
join educationdata as e
on r.year = r.year
where e.year = '2010-2014'
group by r.white, e.state_name, r.black, r.hispanic, r.asian_pacific_islander, r.american_indian_alaska_native
order by white*/


--Which year had the most graduates?(2010-2014, 2009-2013, 2008-2012, 2006-2010, 2005-2009
/*select year,sum(persons_25_w_4_yrs_college)
from educationdata
where year = '2010-2014' OR year = '2009-2013' OR year = '2006-2010' OR year = '2005-2009'
group by year*/

--Which state has the most 4 year college graduates?
/*select state_name, sum(persons_25_w_4_yrs_college)
from educationdata
group by state_name 
order by sum(persons_25_w_4_yrs_college) desc*/

