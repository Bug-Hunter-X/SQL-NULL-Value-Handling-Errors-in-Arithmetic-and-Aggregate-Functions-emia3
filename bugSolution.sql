To fix this, use functions like ISNULL or COALESCE to provide a default value for NULLs.  For example: `SELECT ISNULL(col1, 0) + ISNULL(col2, 0) FROM mytable;` This code replaces any NULL values in `col1` and `col2` with 0 before performing the addition. Similarly, for aggregate functions, you might need to filter out NULL values using a WHERE clause or use functions that handle NULL values differently. For example: `SELECT AVG(CASE WHEN col1 IS NOT NULL THEN col1 ELSE 0 END) FROM mytable;` This calculates the average of `col1` after replacing NULLs with 0.  The choice between ISNULL and COALESCE depends on your specific database system; both achieve similar results.