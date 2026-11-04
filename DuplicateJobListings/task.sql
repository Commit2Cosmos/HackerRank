WITH dups AS (
  SELECT company_id
  FROM job_listings
  GROUP BY title, description, company_id
  HAVING COUNT(*) > 1
) SELECT COUNT(DISTINCT company_id) FROM dups;