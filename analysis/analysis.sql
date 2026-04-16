
-- --Write a query to calculate the total number of claims per policy type.
select policytypename as policy_name,count(claimid) as no_of_claims
from claims c 
join policies p on p.policyid = c.policyid
join policytypes pt on pt.policytypeid = p.policytypeid
group by policytypename
order by policytypename ;



--Use analytical functions to determine the monthly claim frequency and average claim amount.
--monthly claim frequency : no of claims per month

select date_trunc('month',claimdate) as claim_month,
count(*) as claim_frequency,
avg(claimamount) as average_claim_amount
from claims c 
group by claim_month;
