--does race play a role in graduates of 2010-2014?
select r.white ,r.black, r.hispanic, r.asian_pacific_islander, r.american_indian_alaska_native, e.state_name, sum(e.persons_25_w_4_yrs_college) as persons_25_w_4_yrs_college
from raceandsex as r
join educationdata as e
on r.year = r.year
where e.year = '2010-2014'
group by r.white, e.state_name, r.black, r.hispanic, r.asian_pacific_islander, r.american_indian_alaska_native




