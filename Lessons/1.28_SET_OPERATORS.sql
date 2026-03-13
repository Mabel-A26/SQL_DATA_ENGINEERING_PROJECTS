SELECT[1, 1, 1, 2];

SELECT unnest([1, 1, 1, 2]);

SELECT unnest([1, 1, 3]);

SELECT unnest([1, 1, 1, 2])
UNION
SELECT unnest([1, 1, 3]);

SELECT unnest([1, 1, 1, 2])
UNION ALL
SELECT unnest([1, 1, 3]);

SELECT unnest([1, 1, 1, 2])
Intersect
SELECT unnest([1, 1, 3]);

SELECT unnest([1, 1, 1, 2])
Intersect ALL
SELECT unnest([1, 1, 3]);

SELECT unnest([1, 1, 1, 2])
except
SELECT unnest([1, 1, 3]);

SELECT unnest([1, 1, 1, 2])
except ALL
SELECT unnest([1, 1, 3]);

CREATE TEMP TABLE jobs_2023 AS
SELECT * EXCLUDE (job_id, job_posted_date)
FROM job_postings_fact
WHERE EXTRACT(YEAR FROM job_posted_date) = 2023;

SELECT * FROM jobs_2023;

DROP TABLE jobs_2023;

CREATE TEMP TABLE jobs_2024 AS
SELECT * EXCLUDE (job_id, job_posted_date)
FROM job_postings_fact
WHERE EXTRACT(YEAR FROM job_posted_date) = 2024;

SELECT * FROM jobs_2024;

SELECT
    'jobs_2023' AS table_name,
    COUNT(*) AS record_count
FROM jobs_2023

UNION

SELECT
    'jobs_2024' AS table_name,
    COUNT(*)
FROM jobs_2024;

SELECT * FROM jobs_2023
UNION
SELECT * FROM jobs_2024;

SELECT * FROM jobs_2023
UNION ALL
SELECT * FROM jobs_2024;

SELECT * FROM jobs_2023
except
SELECT * FROM jobs_2024;

SELECT * FROM jobs_2023
except all
SELECT * FROM jobs_2024;

SELECT * FROM jobs_2023
Intersect
SELECT * FROM jobs_2024;

SELECT * FROM jobs_2023
Intersect ALL
SELECT * FROM jobs_2024;

--text sql
SELECT CHAR_LENGTH ('SQL');

SELECT LOWER ('SQL');

SELECT UPPER ('Sql');
--extract
SELECT LEFT ('Sql', 2);

SELECT RIGHT ('Sql', 2);

SELECT Substring ('SQL', 2, 2);
SELECT Substring ('SQL', 2, 1);

SELECT CONCAT ('SQL', '-', 'Functions');
SELECT 'SQL' || '-' || 'Functions';

SELECT REPLACE('SQL', 'Q', '_');