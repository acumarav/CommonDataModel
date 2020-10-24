set search_path to results;
set search_path to cdm531;
show search_path ;


copy CARE_SITE
    from 's3://awsohdsibucket/care_site.csv'
    iam_role 'arn:aws:iam::292253656449:role/redshift_S3'
    DELIMITER '\t'  CSV
    region 'eu-central-1';


COPY CDM_SOURCE FROM 's3://awsohdsibucket/cdm_source.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY CONDITION_ERA FROM 's3://awsohdsibucket/condition_era.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY CONDITION_OCCURRENCE FROM 's3://awsohdsibucket/condition_occurrence.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY COST FROM 's3://awsohdsibucket/cost.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY DEATH FROM 's3://awsohdsibucket/death.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY DEVICE_EXPOSURE FROM 's3://awsohdsibucket/device_exposure.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY DRUG_ERA FROM 's3://awsohdsibucket/drug_era.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY DRUG_EXPOSURE FROM 's3://awsohdsibucket/drug_exposure.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY LOCATION FROM 's3://awsohdsibucket/location.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY MEASUREMENT FROM 's3://awsohdsibucket/measurement.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY OBSERVATION FROM 's3://awsohdsibucket/observation.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY OBSERVATION_PERIOD FROM 's3://awsohdsibucket/observation_period.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY PAYER_PLAN_PERIOD FROM 's3://awsohdsibucket/payer_plan_period.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY PERSON FROM 's3://awsohdsibucket/person.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY PROCEDURE_OCCURRENCE FROM 's3://awsohdsibucket/procedure_occurrence.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY PROVIDER FROM 's3://awsohdsibucket/provider.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';
COPY VISIT_OCCURRENCE FROM 's3://awsohdsibucket/visit_occurrence.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3'  DELIMITER '\t' CSV region 'eu-central-1';


COPY CONCEPT_ANCESTOR FROM 's3://awsohdsibucket/vocab/CONCEPT_ANCESTOR.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3' DELIMITER '\t' CSV IGNOREHEADER  1 region 'eu-central-1';
COPY CONCEPT_CLASS FROM 's3://awsohdsibucket/vocab/CONCEPT_CLASS.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3' DELIMITER '\t' CSV IGNOREHEADER 1 region 'eu-central-1';
COPY CONCEPT FROM 's3://awsohdsibucket/vocab/CONCEPT.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3' DELIMITER '\t' DATEFORMAT 'YYYYMMDD' CSV IGNOREHEADER 1 QUOTE '\b' region 'eu-central-1';

COPY CONCEPT_SYNONYM FROM 's3://awsohdsibucket/vocab/CONCEPT_SYNONYM.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3' DELIMITER '\t' DATEFORMAT 'YYYYMMDD' CSV IGNOREHEADER 1 QUOTE '\b' region 'eu-central-1';
COPY CONCEPT_RELATIONSHIP FROM 's3://awsohdsibucket/vocab/CONCEPT_RELATIONSHIP.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3' DELIMITER '\t' DATEFORMAT 'YYYYMMDD' CSV IGNOREHEADER 1 QUOTE '\b' region 'eu-central-1';
COPY DOMAIN FROM 's3://awsohdsibucket/vocab/DOMAIN.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3' DELIMITER '\t' DATEFORMAT 'YYYYMMDD' CSV IGNOREHEADER 1 QUOTE '\b' region 'eu-central-1';
COPY DRUG_STRENGTH FROM 's3://awsohdsibucket/vocab/DRUG_STRENGTH.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3' DELIMITER '\t' DATEFORMAT 'YYYYMMDD' CSV IGNOREHEADER 1 QUOTE '\b' region 'eu-central-1';
COPY RELATIONSHIP FROM 's3://awsohdsibucket/vocab/RELATIONSHIP.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3' DELIMITER '\t' DATEFORMAT 'YYYYMMDD' CSV IGNOREHEADER 1 QUOTE '\b' region 'eu-central-1';
COPY VOCABULARY FROM 's3://awsohdsibucket/vocab/VOCABULARY.csv' iam_role 'arn:aws:iam::292253656449:role/redshift_S3' DELIMITER '\t' DATEFORMAT 'YYYYMMDD' CSV IGNOREHEADER 1 QUOTE '\b' region 'eu-central-1';

select * from stl_load_errors order by starttime desc ;

--DELETE FROM  CONCEPT_ANCESTOR;
--DELETE FROM  CONCEPT_CLASS;
--DELETE FROM  CONCEPT;
--DELETE FROM  CONCEPT_SYNONYM;
--DELETE FROM  CONCEPT_RELATIONSHIP;
--DELETE FROM  DOMAIN;
--DELETE FROM  DRUG_STRENGTH;
--DELETE FROM  RELATIONSHIP;
--DELETE FROM  VOCABULARY;
