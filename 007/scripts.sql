-- connect to local database server - in MySQL Shelll

mysqlsh --sql scott@localhost/mysql_shorts

-- Get explain plan for a simple query
explain select * from `user` where job_title = 'Accountant'\G

-- Add an index for the job_title column
ALTER TABLE `mysql_shorts`.`user`
    ADD INDEX `job_title` (`job_title`);

-- Run the explain plan again.
explain select * from `user` where job_title = 'Accountant'\G