-----------------------------------------------------------------------------
--run this combined script to refresh the ELA Test Prep Grade 3 BigQuery Datasource---
-----------------------------------------------------------------------------

--[step 01.1] import data from classroom trackers

--import grade 3 ela test prep quiz 1.1 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_1`;


--import grade 3 ela test prep quiz 1.2b data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_2b`;


--import grade 3 ela test prep quiz 1.3 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_3`;


--import grade 3 ela test prep quiz 1.4 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_4`;


--import grade 3 ela test prep quiz 2.1 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_1`;


--import grade 3 ela test prep quiz 2.2 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_2`;


--import grade 3 ela test prep quiz 2.3 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_3`;


--import grade 3 ela test prep quiz 2.4 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_4`;


--import grade 3 ela practice test data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_ela_practice_test`;


-- --import grade 3 ela gtra quiz 1
-- SELECT *
-- FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_gtra_quiz_1`;


--import grade 3 ela test prep quiz 3.1 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_1`;


--import grade 3 ela test prep quiz 3.2 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_2`;


--import grade 3 ela test prep quiz 3.3 data
SELECT *
FROM `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_3`;
--add a data pull for the next assessment below






--[step 01.2] import data from the ela test prep question bank

SELECT * 
FROM `harlemlinksy2122.questions.test_prep_ela` ;





--[step 01.3] import data from the students (subgroups and demographics) table

SELECT * 
FROM `harlemlinksy2122.demographics.students` ;






--[step 01.4] unpivot classroom trackers
--add a new code block below for each new unit

----unpivot grade 3 ela test prep quiz 1.1
--unpivot points earned for grade 3 ela test prep quiz 1.1
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_1` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_1` UNPIVOT(points_earned FOR question_id IN (
    test_prep_ela_grade3_quiz_1_1_q01,
    test_prep_ela_grade3_quiz_1_1_q02,
    test_prep_ela_grade3_quiz_1_1_q03,
    test_prep_ela_grade3_quiz_1_1_q04,
    test_prep_ela_grade3_quiz_1_1_q05,
    test_prep_ela_grade3_quiz_1_1_q06

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 1.1
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_1_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_1` UNPIVOT(student_answer FOR question_id IN (
    response_test_prep_ela_grade3_quiz_1_1_q01,
    response_test_prep_ela_grade3_quiz_1_1_q02,
    response_test_prep_ela_grade3_quiz_1_1_q03,
    response_test_prep_ela_grade3_quiz_1_1_q04,
    response_test_prep_ela_grade3_quiz_1_1_q05,
    response_test_prep_ela_grade3_quiz_1_1_q06

      )) ;


----unpivot grade 3 ela test prep quiz 1.2b
--unpivot points earned for grade 3 ela test prep quiz 1.2b
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_2b` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_2b` UNPIVOT(points_earned FOR question_id IN (
    test_prep_ela_grade3_quiz_1_2b_q01,
    test_prep_ela_grade3_quiz_1_2b_q02,
    test_prep_ela_grade3_quiz_1_2b_q03,
    test_prep_ela_grade3_quiz_1_2b_q04,
    test_prep_ela_grade3_quiz_1_2b_q05,
    test_prep_ela_grade3_quiz_1_2b_q06

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 1.2b
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_2b_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_2b` UNPIVOT(student_answer FOR question_id IN (
    response_test_prep_ela_grade3_quiz_1_2b_q01,
    response_test_prep_ela_grade3_quiz_1_2b_q02,
    response_test_prep_ela_grade3_quiz_1_2b_q03,
    response_test_prep_ela_grade3_quiz_1_2b_q04,
    response_test_prep_ela_grade3_quiz_1_2b_q05,
    response_test_prep_ela_grade3_quiz_1_2b_q06

      )) ;


----unpivot grade 3 ela test prep quiz 1.3
--unpivot points earned for grade 3 ela test prep quiz 1.3
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_3` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_3` UNPIVOT(points_earned FOR question_id IN (
    test_prep_ela_grade3_quiz_1_3_q01,
    test_prep_ela_grade3_quiz_1_3_q02,
    test_prep_ela_grade3_quiz_1_3_q03,
    test_prep_ela_grade3_quiz_1_3_q04,
    test_prep_ela_grade3_quiz_1_3_q05,
    test_prep_ela_grade3_quiz_1_3_q06

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 1.3
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_3_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_3` UNPIVOT(student_answer FOR question_id IN (
    response_test_prep_ela_grade3_quiz_1_3_q01,
    response_test_prep_ela_grade3_quiz_1_3_q02,
    response_test_prep_ela_grade3_quiz_1_3_q03,
    response_test_prep_ela_grade3_quiz_1_3_q04,
    response_test_prep_ela_grade3_quiz_1_3_q05,
    response_test_prep_ela_grade3_quiz_1_3_q06

      )) ;


----unpivot grade 3 ela test prep quiz 1.4
--unpivot points earned for grade 3 ela test prep quiz 1.4
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_4` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_4` UNPIVOT(points_earned FOR question_id IN (
    test_prep_ela_grade3_quiz_1_4_q01,
    test_prep_ela_grade3_quiz_1_4_q02,
    test_prep_ela_grade3_quiz_1_4_q03,
    test_prep_ela_grade3_quiz_1_4_q04,
    test_prep_ela_grade3_quiz_1_4_q05,
    test_prep_ela_grade3_quiz_1_4_q06

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 1.4
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_4_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_1_4` UNPIVOT(student_answer FOR question_id IN (
    response_test_prep_ela_grade3_quiz_1_4_q01,
    response_test_prep_ela_grade3_quiz_1_4_q02,
    response_test_prep_ela_grade3_quiz_1_4_q03,
    response_test_prep_ela_grade3_quiz_1_4_q04,
    response_test_prep_ela_grade3_quiz_1_4_q05,
    response_test_prep_ela_grade3_quiz_1_4_q06

      )) ;


----unpivot grade 3 ela test prep quiz 2.1
--unpivot points earned for grade 3 ela test prep quiz 2.1
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_1` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_1` UNPIVOT(points_earned FOR question_id IN (
    test_prep_ela_grade3_quiz_2_1_q01,
    test_prep_ela_grade3_quiz_2_1_q02,
    test_prep_ela_grade3_quiz_2_1_q03,
    test_prep_ela_grade3_quiz_2_1_q04,
    test_prep_ela_grade3_quiz_2_1_q05,
    test_prep_ela_grade3_quiz_2_1_q06

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 2.1
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_1_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_1` UNPIVOT(student_answer FOR question_id IN (
    response_test_prep_ela_grade3_quiz_2_1_q01,
    response_test_prep_ela_grade3_quiz_2_1_q02,
    response_test_prep_ela_grade3_quiz_2_1_q03,
    response_test_prep_ela_grade3_quiz_2_1_q04,
    response_test_prep_ela_grade3_quiz_2_1_q05,
    response_test_prep_ela_grade3_quiz_2_1_q06

      )) ;


----unpivot grade 3 ela test prep quiz 2.2
--unpivot points earned for grade 3 ela test prep quiz 2.2
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_2` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_2` UNPIVOT(points_earned FOR question_id IN (
    test_prep_ela_grade3_quiz_2_2_q01,
    test_prep_ela_grade3_quiz_2_2_q02,
    test_prep_ela_grade3_quiz_2_2_q03,
    test_prep_ela_grade3_quiz_2_2_q04,
    test_prep_ela_grade3_quiz_2_2_q05,
    test_prep_ela_grade3_quiz_2_2_q06,
    test_prep_ela_grade3_quiz_2_2_q07

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 2.2
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_2_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_2` UNPIVOT(student_answer FOR question_id IN (
    response_test_prep_ela_grade3_quiz_2_2_q01,
    response_test_prep_ela_grade3_quiz_2_2_q02,
    response_test_prep_ela_grade3_quiz_2_2_q03,
    response_test_prep_ela_grade3_quiz_2_2_q04,
    response_test_prep_ela_grade3_quiz_2_2_q05,
    response_test_prep_ela_grade3_quiz_2_2_q06

      )) ;


----unpivot grade 3 ela test prep quiz 2.3
--unpivot points earned for grade 3 ela test prep quiz 2.3
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_3` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_3` UNPIVOT(points_earned FOR question_id IN (
    test_prep_ela_grade3_quiz_2_3_q01,
    test_prep_ela_grade3_quiz_2_3_q02,
    test_prep_ela_grade3_quiz_2_3_q03,
    test_prep_ela_grade3_quiz_2_3_q04,
    test_prep_ela_grade3_quiz_2_3_q05

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 2.3
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_3_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_3` UNPIVOT(student_answer FOR question_id IN (
    response_test_prep_ela_grade3_quiz_2_3_q01,
    response_test_prep_ela_grade3_quiz_2_3_q02,
    response_test_prep_ela_grade3_quiz_2_3_q03,
    response_test_prep_ela_grade3_quiz_2_3_q04,
    response_test_prep_ela_grade3_quiz_2_3_q05

      )) ;


----unpivot grade 3 ela test prep quiz 2.4
--unpivot points earned for grade 3 ela test prep quiz 2.4
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_4` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_4` UNPIVOT(points_earned FOR question_id IN (
    test_prep_ela_grade3_quiz_2_4_q01,
    test_prep_ela_grade3_quiz_2_4_q02,
    test_prep_ela_grade3_quiz_2_4_q03,
    test_prep_ela_grade3_quiz_2_4_q04,
    test_prep_ela_grade3_quiz_2_4_q05,
    test_prep_ela_grade3_quiz_2_4_q06,
    test_prep_ela_grade3_quiz_2_4_q07

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 2.4
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_4_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_2_4` UNPIVOT(student_answer FOR question_id IN (
    response_test_prep_ela_grade3_quiz_2_4_q01,
    response_test_prep_ela_grade3_quiz_2_4_q02,
    response_test_prep_ela_grade3_quiz_2_4_q03,
    response_test_prep_ela_grade3_quiz_2_4_q04,
    response_test_prep_ela_grade3_quiz_2_4_q05,
    response_test_prep_ela_grade3_quiz_2_4_q06

      )) ;


----unpivot grade 3 ela practice test
--unpivot points earned for grade 3 ela practice test
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_ela_practice_test` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_ela_practice_test` UNPIVOT(points_earned FOR question_id IN (
   test_prep_ela_grade3_ela_practice_test_q01,
   test_prep_ela_grade3_ela_practice_test_q02,
   test_prep_ela_grade3_ela_practice_test_q03,
   test_prep_ela_grade3_ela_practice_test_q04,
   test_prep_ela_grade3_ela_practice_test_q05,
   test_prep_ela_grade3_ela_practice_test_q06,
   test_prep_ela_grade3_ela_practice_test_q07,
   test_prep_ela_grade3_ela_practice_test_q08,
   test_prep_ela_grade3_ela_practice_test_q09,
   test_prep_ela_grade3_ela_practice_test_q10,
   test_prep_ela_grade3_ela_practice_test_q11,
   test_prep_ela_grade3_ela_practice_test_q12,
   test_prep_ela_grade3_ela_practice_test_q13,
   test_prep_ela_grade3_ela_practice_test_q14,
   test_prep_ela_grade3_ela_practice_test_q15

      )) ;
--unpivot multiple choice responses for grade 3 ela practice test
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_ela_practice_test_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_ela_practice_test` UNPIVOT(student_answer FOR question_id IN (
   response_test_prep_ela_grade3_ela_practice_test_q01,
   response_test_prep_ela_grade3_ela_practice_test_q02,
   response_test_prep_ela_grade3_ela_practice_test_q03,
   response_test_prep_ela_grade3_ela_practice_test_q04,
   response_test_prep_ela_grade3_ela_practice_test_q05,
   response_test_prep_ela_grade3_ela_practice_test_q06,
   response_test_prep_ela_grade3_ela_practice_test_q07,
   response_test_prep_ela_grade3_ela_practice_test_q08,
   response_test_prep_ela_grade3_ela_practice_test_q09,
   response_test_prep_ela_grade3_ela_practice_test_q10,
   response_test_prep_ela_grade3_ela_practice_test_q11,
   response_test_prep_ela_grade3_ela_practice_test_q12,
   response_test_prep_ela_grade3_ela_practice_test_q13,
   response_test_prep_ela_grade3_ela_practice_test_q14,
   response_test_prep_ela_grade3_ela_practice_test_q15

      )) ;


-- ----unpivot grade 3 gtra quiz 1
-- --unpivot points earned for grade 3 gtra quiz 1
-- CREATE OR REPLACE TABLE
--   `harlemlinksy2122.unpivots.ela_test_prep_grade3_gtra_quiz_1` AS
-- SELECT
--   osis,
--   question_id,
--   points_earned
-- FROM
--   `harlemlinksy2122.trackers.ela_test_prep_grade3_gtra_quiz_1` UNPIVOT(points_earned FOR question_id IN (
--    test_prep_ela_grade3_gtra_quiz_1_q01,
--    test_prep_ela_grade3_gtra_quiz_1_q02,
--    test_prep_ela_grade3_gtra_quiz_1_q03,
--    test_prep_ela_grade3_gtra_quiz_1_q04,
--    test_prep_ela_grade3_gtra_quiz_1_q05,
--    test_prep_ela_grade3_gtra_quiz_1_q06

--       )) ;
-- --unpivot multiple choice responses for grade 3 ela gtra quiz 1
-- CREATE OR REPLACE TABLE
--   `harlemlinksy2122.unpivots.ela_test_prep_grade3_gtra_quiz_1_responses` AS
-- SELECT
--   osis,
--   question_id,
--   student_answer
-- FROM
--   `harlemlinksy2122.trackers.ela_test_prep_grade3_gtra_quiz_1` UNPIVOT(student_answer FOR question_id IN (
--    response_test_prep_ela_grade3_gtra_quiz_1_q01,
--    response_test_prep_ela_grade3_gtra_quiz_1_q02,
--    response_test_prep_ela_grade3_gtra_quiz_1_q03,
--    response_test_prep_ela_grade3_gtra_quiz_1_q04,
--    response_test_prep_ela_grade3_gtra_quiz_1_q05,
--    response_test_prep_ela_grade3_gtra_quiz_1_q06

--       )) ;



----unpivot grade 3 ela test prep quiz 3.1
--unpivot points earned for grade 3 ela test prep quiz 3.1
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_1` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_1` UNPIVOT(points_earned FOR question_id IN (
   test_prep_ela_grade3_quiz_3_1_q01,
   test_prep_ela_grade3_quiz_3_1_q02,
   test_prep_ela_grade3_quiz_3_1_q03,
   test_prep_ela_grade3_quiz_3_1_q04,
   test_prep_ela_grade3_quiz_3_1_q05,
   test_prep_ela_grade3_quiz_3_1_q06,
   test_prep_ela_grade3_quiz_3_1_q07

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 3.1
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_1_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_1` UNPIVOT(student_answer FOR question_id IN (
   response_test_prep_ela_grade3_quiz_3_1_q01,
   response_test_prep_ela_grade3_quiz_3_1_q02,
   response_test_prep_ela_grade3_quiz_3_1_q03,
   response_test_prep_ela_grade3_quiz_3_1_q04,
   response_test_prep_ela_grade3_quiz_3_1_q05,
   response_test_prep_ela_grade3_quiz_3_1_q06,
   response_test_prep_ela_grade3_quiz_3_1_q07

      )) ;



----unpivot grade 3 ela test prep quiz 3.2
--unpivot points earned for grade 3 ela test prep quiz 3.2
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_2` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_2` UNPIVOT(points_earned FOR question_id IN (
   test_prep_ela_grade3_quiz_3_2_q01,
   test_prep_ela_grade3_quiz_3_2_q02,
   test_prep_ela_grade3_quiz_3_2_q03,
   test_prep_ela_grade3_quiz_3_2_q04,
   test_prep_ela_grade3_quiz_3_2_q05,
   test_prep_ela_grade3_quiz_3_2_q06,
   test_prep_ela_grade3_quiz_3_2_q07

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 3.2
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_2_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_2` UNPIVOT(student_answer FOR question_id IN (
   response_test_prep_ela_grade3_quiz_3_2_q01,
   response_test_prep_ela_grade3_quiz_3_2_q02,
   response_test_prep_ela_grade3_quiz_3_2_q03,
   response_test_prep_ela_grade3_quiz_3_2_q04,
   response_test_prep_ela_grade3_quiz_3_2_q05,
   response_test_prep_ela_grade3_quiz_3_2_q06,
   response_test_prep_ela_grade3_quiz_3_2_q07

      )) ;



--unpivot multiple choice responses for grade 3 ela test prep quiz 3.1
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_1_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_1` UNPIVOT(student_answer FOR question_id IN (
   response_test_prep_ela_grade3_quiz_3_1_q01,
   response_test_prep_ela_grade3_quiz_3_1_q02,
   response_test_prep_ela_grade3_quiz_3_1_q03,
   response_test_prep_ela_grade3_quiz_3_1_q04,
   response_test_prep_ela_grade3_quiz_3_1_q05,
   response_test_prep_ela_grade3_quiz_3_1_q06,
   response_test_prep_ela_grade3_quiz_3_1_q07

      )) ;



----unpivot grade 3 ela test prep quiz 3.3
--unpivot points earned for grade 3 ela test prep quiz 3.3
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_3` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_3` UNPIVOT(points_earned FOR question_id IN (
   test_prep_ela_grade3_quiz_3_3_q01,
   test_prep_ela_grade3_quiz_3_3_q02,
   test_prep_ela_grade3_quiz_3_3_q03,
   test_prep_ela_grade3_quiz_3_3_q04,
   test_prep_ela_grade3_quiz_3_3_q05,
   test_prep_ela_grade3_quiz_3_3_q06,
   test_prep_ela_grade3_quiz_3_3_q07,
   test_prep_ela_grade3_quiz_3_3_q08,
   test_prep_ela_grade3_quiz_3_3_q09,
   test_prep_ela_grade3_quiz_3_3_q10,
   test_prep_ela_grade3_quiz_3_3_q11,
   test_prep_ela_grade3_quiz_3_3_q12,
   test_prep_ela_grade3_quiz_3_3_q13

      )) ;
--unpivot multiple choice responses for grade 3 ela test prep quiz 3.3
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_3_responses` AS
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.trackers.ela_test_prep_grade3_quiz_3_3` UNPIVOT(student_answer FOR question_id IN (
   response_test_prep_ela_grade3_quiz_3_3_q01,
   response_test_prep_ela_grade3_quiz_3_3_q02,
   response_test_prep_ela_grade3_quiz_3_3_q03,
   response_test_prep_ela_grade3_quiz_3_3_q04,
   response_test_prep_ela_grade3_quiz_3_3_q05,
   response_test_prep_ela_grade3_quiz_3_3_q06,
   response_test_prep_ela_grade3_quiz_3_3_q07,
   response_test_prep_ela_grade3_quiz_3_3_q08,
   response_test_prep_ela_grade3_quiz_3_3_q09,
   response_test_prep_ela_grade3_quiz_3_3_q10,
   response_test_prep_ela_grade3_quiz_3_3_q11,
   response_test_prep_ela_grade3_quiz_3_3_q12,
   response_test_prep_ela_grade3_quiz_3_3_q13

      )) ;
--add unpivots for new quizzes below





--[step 01.5] combines all unpivoted trackers into a single table
--add a new code block below for each new unit


----combine points earned for grade 3 ela test prep quizzes
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unions.ela_test_prep_grade3` AS
--pull unpivoted data from grade 3 ela test prep quiz 1.1
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_1` 
--pull unpivoted data from grade 3 ela test prep quiz 1.2b
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_2b` 
--pull unpivoted data from grade 3 ela test prep quiz 1.3
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_3` 
--pull unpivoted data from grade 3 ela test prep quiz 1.4
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_4` 
--pull unpivoted data from grade 3 ela test prep quiz 2.1
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_1`
--pull unpivoted data from grade 3 ela test prep quiz 2.2
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_2`
--pull unpivoted data from grade 3 ela test prep quiz 2.3
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_3`
--pull unpivoted data from grade 3 ela test prep quiz 2.4
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_4`
--pull unpivoted data from grade 3 ela practice test
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_ela_practice_test`
-- --pull unpivoted data from grade 3 ela gtra quiz 1
-- UNION ALL
-- SELECT
--   osis,
--   question_id,
--   points_earned
-- FROM
--  `harlemlinksy2122.unpivots.ela_test_prep_grade3_gtra_quiz_1`

--pull unpivoted data from grade 3 ela test prep quiz 3.1
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_1`
--pull unpivoted data from grade 3 ela test prep quiz 3.2
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_2`
 --pull unpivoted data from grade 3 ela test prep quiz 3.3
UNION ALL
SELECT
  osis,
  question_id,
  points_earned
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_3`
--insert UNION ALL code block here for the next quiz 
  
  ;



----combine multiple choice responses for grade 3 ela test prep quizzes
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unions.ela_test_prep_grade3_responses` AS
--pull unpivoted data from grade 3 ela test prep quiz 1.1 responses
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_1_responses` 
--pull unpivoted data from grade 3 ela test prep quiz 1.2b responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_2b_responses` 
--pull unpivoted data from grade 3 ela test prep quiz 1.3 responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
  `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_3_responses` 
--pull unpivoted data from grade 3 ela test prep quiz 1.4 responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_1_4_responses` 
--pull unpivoted data from grade 3 ela test prep quiz 2.1 responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_1_responses` 
--pull unpivoted data from grade 3 ela test prep quiz 2.2 responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_2_responses` 
--pull unpivoted data from grade 3 ela test prep quiz 2.3 responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_3_responses` 
--pull unpivoted data from grade 3 ela test prep quiz 2.4 responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_2_4_responses` 
--pull unpivoted data from grade 3 ela practice test responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_ela_practice_test_responses`
-- --pull unpivoted data from grade 3 gtra quiz 1 responses
-- UNION ALL
-- SELECT
--   osis,
--   question_id,
--   student_answer
-- FROM
--  `harlemlinksy2122.unpivots.ela_test_prep_grade3_gtra_quiz_1_responses`

--pull unpivoted data from grade 3 ela test prep quiz 3.1 responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_1_responses` 
--pull unpivoted data from grade 3 ela test prep quiz 3.2 responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_2_responses` 
--pull unpivoted data from grade 3 ela test prep quiz 3.3 responses
UNION ALL
SELECT
  osis,
  question_id,
  student_answer
FROM
 `harlemlinksy2122.unpivots.ela_test_prep_grade3_quiz_3_3_responses`
--insert UNION ALL code block here for the next quiz 
  
  ;






--[step 01.6] join questions table to unions table to create results table

CREATE OR REPLACE TABLE
  `harlemlinksy2122.unions.ela_test_prep_grade3_responses_str` AS

SELECT 
osis,
question_id AS response_id,
student_answer,
--convert the item analysis question id to match the points earned question id
--this field will be used to join the multiple choice responses to the points earned results
SUBSTRING(question_id, 10) AS question_id
FROM `harlemlinksy2122.unions.ela_test_prep_grade3_responses`;





CREATE OR REPLACE TABLE
--the results is used to calculate benchmarks grouped by students.osis and questions.unit
  `harlemlinksy2122.results.ela_test_prep_grade3` AS
SELECT
  unions.osis,
  unions.question_id,
--pulls in columns for questions.points_available and questions.unit
  grade_level,
  quiz,
  ccls_standard,
  standard_description,
  question_text,
  points_earned,
  points_available,
  student_answer,
  correct_answer,
  genre,
  SUBSTRING(responses.question_id, 10) AS substr_question_id,
  question_type
FROM
  `harlemlinksy2122.unions.ela_test_prep_grade3_responses_str` responses
  
LEFT JOIN
  `harlemlinksy2122.unions.ela_test_prep_grade3` unions
ON
  unions.osis = responses.osis AND 
  unions.question_id = responses.question_id 
LEFT JOIN
  `harlemlinksy2122.questions.test_prep_ela` questions
ON
  unions.question_id = questions.question_id

WHERE 
  unions.osis IS NOT NULL ;






--[step 01.7] use the results table to calculate benchmarks using CASE WHEN
   
CREATE OR REPLACE TABLE
  `harlemlinksy2122.benchmarks.ela_test_prep_grade3` AS
SELECT
  osis,
  quiz,
  SUM(points_earned)/SUM(points_available) AS ela_tp_pct_points,
--used to add student-assessment-level benchmarks to tables with student-question level granularity
  CASE
    WHEN SUM(points_earned)/SUM(points_available) >= .88 THEN "Level 4"
    WHEN SUM(points_earned)/SUM(points_available) BETWEEN .59
  AND .87999999 THEN "Level 3"
    WHEN SUM(points_earned)/SUM(points_available) BETWEEN .35
  AND .58999999 THEN "Level 2"
    WHEN SUM(points_earned)/SUM(points_available) < .35 THEN "Level 1"
  ELSE
  ""
END
  AS ela_tp_benchmark
FROM
  `harlemlinksy2122.results.ela_test_prep_grade3`
WHERE
  osis IS NOT NULL
GROUP BY
  1,
  2 ;






--[step 01.8] creates or replaces table `harlemlinksy2122.datasources.ela_tp_grade3`
--this table is linked directly to Google Data Studio as a datasource
--it serves as the datasouse for the grade 3 ela test prep dashboard

CREATE OR REPLACE TABLE
  `harlemlinksy2122.datasources.ela_tp_grade3` AS

SELECT
  --start by pulling the osis on the combined results table
  results.osis,
  --pull these columns from the .demographics.students table
  student,
  sy_21_22_class,
  sped,
  enl,
  hl_upk,
  holdovers,
  new_students,
  ais,
  --also pull these test-related columns from the results table
  question_id,
  ccls_standard,
  standard_description,
  question_text,
  results.quiz,
  points_earned,
  points_available,
  student_answer,
  correct_answer,
  genre,
  ela_tp_pct_points,
  ela_tp_benchmark,
  question_type,
  CASE
    WHEN ela_cusp_status = "Cusp - ELA" THEN "ELA Cusp Students"
    ELSE "ELA Non-Cusp Students"
  END AS ela_cusp_status

FROM
  `harlemlinksy2122.results.ela_test_prep_grade3` results

LEFT JOIN 
`harlemlinksy2122.demographics.students` students

ON results.osis = students.osis

LEFT JOIN
`harlemlinksy2122.benchmarks.ela_test_prep_grade3` benchmarks

ON results.osis = benchmarks.osis AND results.quiz = benchmarks.quiz

LEFT JOIN
`harlemlinksy2122.datasources.ela_cusp_students` cusp

ON results.osis = cusp.osis 

WHERE results.osis IS NOT NULL ;

---END----------------------------------------------------------------------------