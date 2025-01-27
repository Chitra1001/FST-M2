-- Load input file from HDFS
raw_data = LOAD '/root/input' USING PigStorage('\t') AS (character:chararray, dialogiue:chararray);
grouped_data = GROUP raw_data BY character;
line_counts = FOREACH grouped_data GENERATE $0 AS charec, COUNT($1) AS no_of_dialoges;
ordered = ORDER line_counts BY $1 DESC;
-- To remove the old output folder
rmf /root/Projectpigresult1;
-- Store the result in HDFS
STORE ordered INTO '/root/Projectpigresult1';

