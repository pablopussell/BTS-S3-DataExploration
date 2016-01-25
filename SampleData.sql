SELECT
COUNT(DISTINCT tweetid)
FROM bts_s3_vine.vineitems;

SELECT 
tweetid, count(*) as frequency
FROM bts_s3_vine.vineitems
GROUP BY tweetid
ORDER BY frequency desc;

SELECT
*
FROM bts_s3_vine.vineitems
WHERE tweetid = '296439300915097600';