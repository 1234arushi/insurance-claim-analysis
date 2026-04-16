--creating index
create index idx_claims_claimdate on claims(claimdate);

-- Create roles: ClaimsAnalyst and ClaimsManager.
-- ‘ClaimsAnalyst’ role should have read-only access to claims and policies data.
-- ‘ClaimsManager’ role should have full access to claims data and the ability to update policy information

create role claimsanalyst login password 'password123';
create role claimsmanager login password 'password123';


grant select on claims,policies,policytypes to claimsanalyst;
grant select,insert,update,delete on claims,policies,policytypes to claimsmanager;