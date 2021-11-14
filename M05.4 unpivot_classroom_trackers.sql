--[step 01.4] unpivot classroom trackers
--add a new code block below for each new unit

--unpivot math grade 5 baseline data
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.math_grade5_baseline` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.math_grade5_baseline` UNPIVOT(points_earned FOR question_id IN (math_grade5_baseline_q01,
math_grade5_baseline_q02,
math_grade5_baseline_q03,
math_grade5_baseline_q04,
math_grade5_baseline_q05,
math_grade5_baseline_q06,
math_grade5_baseline_q07,
math_grade5_baseline_q08,
math_grade5_baseline_q09,
math_grade5_baseline_q10

      )) ;

--unpivot math grade 5 unit 1 data
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.math_grade5_unit1` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.math_grade5_unit1` UNPIVOT(points_earned FOR question_id IN (math_grade5_unit1_q01,
math_grade5_unit1_q02,
math_grade5_unit1_q03,
math_grade5_unit1_q04,
math_grade5_unit1_q05,
math_grade5_unit1_q06,
math_grade5_unit1_q07,
math_grade5_unit1_q08,
math_grade5_unit1_q09,
math_grade5_unit1_q10

      )) ;


--unpivot math grade 5 unit 2 data
CREATE OR REPLACE TABLE
  `harlemlinksy2122.unpivots.math_grade5_unit2` AS
SELECT
  osis,
  question_id,
  points_earned
FROM
  `harlemlinksy2122.trackers.math_grade5_unit2` UNPIVOT(points_earned FOR question_id IN (math_grade5_unit2_q01,
math_grade5_unit2_q02,
math_grade5_unit2_q03,
math_grade5_unit2_q04,
math_grade5_unit2_q05,
math_grade5_unit2_q06,
math_grade5_unit2_q07,
math_grade5_unit2_q08,
math_grade5_unit2_q09,
math_grade5_unit2_q10

      )) ;
--add unpivots for new units below