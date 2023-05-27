-- SQL Modifications Scripts File

-- Splitting String to Columns
SELECT DeclaratieregelOmschrijving FROM newschema.wpjj_zp_invoices_copy LIMIT 1;
-- SET @var_string = "15B087 - 1 of 2 polikliniekbezoeken/ consultaties op afstand bij een uitstulping van de tussenwervelschijf met druk op de zenuwbanen (HNP) (Subtrajectnr. 17706) - creditering factuur 12201701";

-- Method 1
SELECT 
  TRIM(SUBSTRING_INDEX(@var_string, '-', 1)) 
    AS dbc_code,
  TRIM(SUBSTRING_INDEX(@var_string, 'creditering factuur', -1))
    AS credit_invoice,
  TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(@var_string, 'Subtrajectnr. ', -1), ')', 1))
    AS subtracject,
  TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(@var_string, '-', -1), '(Subtrajectnr.', 1))
    AS descript
FROM newschema.wpjj_zp_invoices_copy;

-- Method 2    
-- SELECT REGEXP_SUBSTR('15B087 - 1 of 2 polikliniekbezoeken/ consultaties op afstand bij een uitstulping van de tussenwervelschijf met druk op de zenuwbanen (HNP) (Subtrajectnr. 17706) - creditering factuur 12201701', '(.*)\s') Result;
SET @var_string = "15B087 - 1 of 2 polikliniekbezoeken/ consultaties op afstand bij een uitstulping van de tussenwervelschijf met druk op de zenuwbanen (HNP) (Subtrajectnr. 17706) - creditering factuur 12201701";
SELECT REGEXP_SUBSTR(@var_string, '.{6}') as dbc_code;
SELECT REGEXP_SUBSTR('15B087 - 1 of 2 polikliniekbezoeken/ consultaties op afstand bij een uitstulping van de tussenwervelschijf met druk op de zenuwbanen (HNP) (Subtrajectnr. 17706) - creditering factuur 12201701', '.{6}' , 1) as dbc_code;
SELECT REGEXP_SUBSTR('15B087 - 1 of 2 polikliniekbezoeken/ consultaties op afstand bij een uitstulping van de tussenwervelschijf met druk op de zenuwbanen (HNP) (Subtrajectnr. 17706) - creditering factuur 12201701', '[factuur ]([0-9]{8})') as credit_invoice_number;
SELECT REGEXP_SUBSTR('15B087 - 1 of 2 polikliniekbezoeken/ consultaties op afstand bij een uitstulping van de tussenwervelschijf met druk op de zenuwbanen (HNP) (Subtrajectnr. 17706) - creditering factuur 12201701', '[Subtrajectnr ].([[:digit:]])+' ,1,2 ) as subtraj_number;
SELECT REGEXP_SUBSTR('15B087 - 1 of 2 polikliniekbezoeken/ consultaties op afstand bij een uitstulping van de tussenwervelschijf met druk op de zenuwbanen (HNP) (Subtrajectnr. 17706) - creditering factuur 12201701', '(?m)[ -]([[:alnum:]].*[[:punct:]][Subtrajectnr])', 1, 1 ) as subtraj_number;
SELECT REGEXP_SUBSTR('15B087 - 1 of 2 polikliniekbezoeken/ consultaties op afstand bij een uitstulping van de tussenwervelschijf met druk op de zenuwbanen (HNP) (Subtrajectnr. 17706) - creditering factuur 12201701', '[ - ]([A-Za-z0-9].*)[ - ]', 1, 2) as invoice_number;

