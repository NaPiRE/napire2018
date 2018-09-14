
set feedback off
--
-- Project Data
--

PROMPT 1 PROJECT CHARACTERISTICS
PROMPT 1.1 Country and Number of completed Questionaires per Country
SELECT      /*csv*/ "v_23" AS "Country", COUNT("v_23") AS "Number"
FROM        "completed_country"
GROUP BY    "v_23";

PROMPT
PROMPT 1.2 Number of completed Questionaires in t otal
SELECT  /*csv*/ count(*) AS "Number"
FROM    "completed_country";

PROMPT
PROMPT 1.3 How many people are involved in your project?
SELECT  /*csv*/"v_3" AS "Number of People"
FROM    "completed_country";
 
PROMPT
PROMPT 1.4 Main industrial sector of your project and the application domain of the software you build
SELECT      /*csv*/ "v_1" AS "Sector", COUNT("v_1") AS "Number"
FROM        "completed_country"
GROUP BY    "v_1";
SELECT  /*csv*/ "v_2" AS "Other Sector"
FROM    "completed_country"
WHERE   "v_1" LIKE '%Other%';

PROMPT
PROMPT 1.5 Class of systems or services you work on in the context of your project
SELECT      /*csv*/ "v_4" AS "Class", COUNT ("v_4") AS "Number"
FROM        "completed_country"
GROUP BY    "v_4";
SELECT  /*csv*/ "v_5" AS "Other Class"
FROM    "completed_country"
WHERE   "v_4" LIKE '%Other%';


PROMPT
PROMPT 1.6 Are there quality attributes which are of particularly high importance for your development project? If yes which one(s)?
SELECT  /*csv*/ "Attribute", COUNT("Attribute") AS "Number"
FROM
(
    SELECT  'Compatibility' AS "Attribute"
    FROM    "completed_country"
    WHERE   "v_6" = 'quoted'
    UNION ALL
    SELECT  'Maintainability' AS "Attribute"
    FROM    "completed_country"
    WHERE   "v_7" = 'quoted'
    UNION ALL
    SELECT  'Performance' AS "Attribute"
    FROM    "completed_country"
    WHERE   "v_8" = 'quoted'
    UNION ALL
    SELECT  'Portability' AS "Attribute"
    FROM    "completed_country"
    WHERE   "v_9" = 'quoted'
    UNION ALL
    SELECT  'Reliability' AS "Attribute"
    FROM    "completed_country"
    WHERE   "v_10" = 'quoted'
    UNION ALL
    SELECT  'Security' AS "Attribute"
    FROM    "completed_country"
    WHERE   "v_11" = 'quoted'
    UNION ALL
    SELECT  'Safety' AS "Attribute"
    FROM    "completed_country"
    WHERE   "v_12" = 'quoted'
    UNION ALL
    SELECT  'Usability' AS "Attribute"
    FROM    "completed_country"
    WHERE   "v_13" = 'quoted'
    UNION ALL
    SELECT  'Other' AS "Attribute"
    FROM    "completed_country"
    WHERE   "v_14" = 'quoted'
)
GROUP BY "Attribute";
SELECT  /*csv*/ "v_15" AS "Other Attribute"
FROM    "completed_country"
WHERE   "v_14" = 'quoted'; 

PROMPT
PROMPT 1.7 Is your project distributed?
SELECT      /*csv*/"v_16" AS "Distribution", COUNT("v_16") AS "Number"
FROM        "completed_country"
GROUP BY    "v_16";

PROMPT
PROMPT 1.8 What is the main role you occupy in your project?
SELECT      /*csv*/"v_17" AS "Role", count("v_17") AS "Number"
FROM        "completed_country"
GROUP BY    "v_17";
SELECT  /*csv*/ "v_18" AS "Other Role"
FROM    "completed_country"
WHERE   "v_17" LIKE '%Other%'; 

PROMPT
PROMPT 1.9 How many years of industrial experience do you have in your role?
SELECT  /*csv*/"v_19" AS "Years"
FROM    "completed_country";

PROMPT
PROMPT 1.10 Do you have a certification in this role? If yes which one?
SELECT      /*csv*/"v_20" AS "Certifition", count("v_20") AS "Number"
FROM        "completed_country"
WHERE       "v_20" <> '-66' AND "v_20" <> '-99'
GROUP BY    "v_20";

PROMPT
PROMPT 1.11 Which organisational role does your project team have in your project?
SELECT      /*csv*/"v_21" AS "Role", count("v_21") AS "Number"
FROM        "completed_country"
GROUP BY    "v_21";
SELECT  /*csv*/ "v_22" AS "Other Role"
FROM    "completed_country"
WHERE   "v_21" LIKE '%Other%'; 

PROMPT
PROMPT 1.12 How would you personally characterise your way of working in your project?
SELECT      /*csv*/"v_24" AS "Way", count("v_24") AS "Number"
FROM        "completed_country"
GROUP BY    "v_24";

PROMPT
PROMPT 1.13 In general how would you rate the relationship between your project team and your customer?
SELECT      /*csv*/"v_25" AS "Relation", count("v_25") AS "Number"
FROM        "completed_country"
GROUP BY    "v_25";

PROMPT
PROMPT 1.14 In your opinion what is the reason for the particularly bad relationship?
SELECT      /*csv*/"v_25" AS "Rating", "v_26" AS "Reason"
FROM        "completed_country"
WHERE       ("v_25" LIKE '%ad%') AND ("v_26" <> '-99' AND "v_26" <> '-66');

PROMPT
PROMPT 1.15 In your opinion what is the reason for the particularly good relationship?
SELECT      /*csv*/ "v_25" AS "Rating", "v_27" AS "Reason"
FROM        "completed_country"
WHERE       ("v_25" LIKE '%ood%') AND ("v_27" <> '-99' AND "v_27" <> '-66');

--
-- Status Quo
--
PROMPT
PROMPT 2 STATUS QUO IN RE

PROMPT
PROMPT 2.1 How are the requirements elicited in your project?
SELECT /*csv*/ "Way", COUNT("Way") AS "Number"
FROM
(
    SELECT  'several iterations' AS "Way"
    FROM    "completed_country"
    WHERE   "v_28" = 'quoted'
    UNION ALL
    SELECT  'dedicated project phase' AS "Way"
    FROM    "completed_country"
    WHERE   "v_29" = 'quoted'
    UNION ALL
    SELECT  'other' AS "Way"
    FROM    "completed_country"
    WHERE   "v_34" = 'quoted'
)
GROUP BY "Way";
SELECT  /*csv*/ "v_35" AS "Other Way"
FROM    "completed_country"
WHERE   "v_34" = 'quoted'; 

PROMPT
PROMPT 2.2 Which techniques do you use for your requirements elicitations?
SELECT /*csv*/ "Technique", COUNT("Technique") AS "Number"
FROM
(
    SELECT  'Interview' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_36" = 'quoted'
    UNION ALL
    SELECT  'Analysis of existing documents' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_37" = 'quoted'
    UNION ALL
    SELECT  'Risk analyses' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_38" = 'quoted'
    UNION ALL
    SELECT  'Prototyping' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_39" = 'quoted'
    UNION ALL
    SELECT  'Workshops and focus groups' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_40" = 'quoted'
    UNION ALL
    SELECT  'Reuse databases / guidelines' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_41" = 'quoted'
    UNION ALL
    SELECT  'Design Thinking / Lean Startup' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_42" = 'quoted'
    UNION ALL
    SELECT  'External experts' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_43" = 'quoted'
    UNION ALL
    SELECT  'Observations' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_44" = 'quoted'
    UNION ALL
    SELECT  'We do not elicit requirements (ourselves)' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_47" = 'quoted'
    UNION ALL
    SELECT  'Other' AS "Technique"
    FROM    "completed_country"
    WHERE   "v_45" = 'quoted'
)
GROUP BY "Technique";
SELECT  /*csv*/ "v_46" AS "Other Technique"
FROM    "completed_country"
WHERE   "v_45" = 'quoted';

PROMPT
PROMPT 2.3 Who has the primary responsibility for eliciting requirements?
SELECT      /*csv*/ "v_51" AS "Role", count("v_51") AS "Number"
FROM        "completed_country"
GROUP BY    "v_51";
SELECT  /*csv*/ "v_52" AS "Other Responsibility"
FROM    "completed_country"
WHERE   "v_51" LIKE '%Other%'; 

PROMPT
PROMPT 2.4 At what level of granularity do you document requirements and when?
SELECT      /*csv*/ "v_59" AS "Level/Time", count("v_59") AS "Number"
FROM        "completed_country"
GROUP BY    "v_59";
SELECT  /*csv*/ "v_60" AS "Other Level"
FROM    "completed_country"
WHERE   "v_59" LIKE '%Other%';

PROMPT
PROMPT 2.5 How do you make use of the documented requirements?
SELECT /*csv*/ "Use", COUNT("Use") AS "Number"
FROM
(
SELECT  'Basis for the implementation' AS "Use"
FROM    "completed_country"
WHERE   "v_61" = 'quoted'
UNION ALL
SELECT  'Source for tests' AS "Use"
FROM    "completed_country"
WHERE   "v_62" = 'quoted'
UNION ALL
SELECT  'Used in customer acceptance' AS "Use"
FROM    "completed_country"
WHERE   "v_63" = 'quoted'
UNION ALL
SELECT  'Part of the contract' AS "Use"
FROM    "completed_country"
WHERE   "v_64" = 'quoted'
UNION ALL
SELECT  'Reminder for further discussions with the customer, product owner, and / or other team members' AS "Use"
FROM "completed_country"
WHERE   "v_65" = 'quoted'
UNION ALL
SELECT  'Other' AS "Use"
FROM    "completed_country"
WHERE   "v_66" = 'quoted'
)
GROUP BY "Use";
SELECT  /*csv*/ "v_67" AS "Other Use"
FROM    "completed_country"
WHERE   "v_66" ='quoted';

PROMPT
PROMPT 2.6 For which information do you make an explicit distinction when documenting your requirements?
SELECT /*csv*/ "Information", COUNT ("Information") AS "Number"
FROM
(
SELECT  'Architectural constraints' AS "Information"
FROM    "completed_country"
WHERE   "v_76" = 'quoted'
UNION ALL
SELECT  'Development process aspects' AS "Information"
FROM    "completed_country"
WHERE   "v_73" = 'quoted'
UNION ALL
SELECT  'Formal properties' AS "Information"
FROM    "completed_country"
WHERE   "v_79" = 'quoted'
UNION ALL
SELECT  'Functional properties of the system' AS "Information"
FROM    "completed_country"
WHERE   "v_68" = 'quoted'
UNION ALL
SELECT  'Goals' AS "Information"
FROM    "completed_country"
WHERE   "v_70" = 'quoted'
UNION ALL
SELECT  'Quality properties' AS "Information"
FROM    "completed_country"
WHERE   "v_71" = 'quoted'
UNION ALL
SELECT  'Rules' AS "Information"
FROM    "completed_country"
WHERE   "v_74" = 'quoted'
UNION ALL
SELECT  'Stakeholders' AS "Information"
FROM    "completed_country"
WHERE   "v_78" = 'quoted'
UNION ALL
SELECT  'System behaviour' AS "Information"
FROM    "completed_country"
WHERE   "v_77" = 'quoted'
UNION ALL
SELECT  'Technical interfaces' AS "Information"
FROM    "completed_country"
WHERE   "v_75" = 'quoted'
UNION ALL
SELECT  'Usage scenarios' AS "Information"
FROM    "completed_country"
WHERE   "v_69" = 'quoted'
UNION ALL
SELECT  'User interface(s)' AS "Information"
FROM    "completed_country"
WHERE   "v_72" = 'quoted'
UNION ALL
SELECT  'Other' AS "Information"
FROM    "completed_country"
WHERE   "v_80" = 'quoted'
) 
GROUP BY "Information";
SELECT  /*csv*/ "v_81" AS "Other Use"
FROM    "completed_country"
WHERE   "v_80" ='quoted';

PROMPT
PROMPT 2.7 How do you document requirements?
SELECT /*csv*/ "Method", COUNT("Method") AS "Number"
FROM
(
    SELECT  'Activity diagrams' AS "Method"
    FROM    "completed_country"
    WHERE   "v_87" = 'quoted'
    UNION ALL
    SELECT  'Business process models' AS "Method"
    FROM    "completed_country"
    WHERE   "v_92" = 'quoted'
    UNION ALL
    SELECT  'Class diagrams' AS "Method"
    FROM    "completed_country"
    WHERE   "v_88" = 'quoted'
    UNION ALL
    SELECT  'Goal models' AS "Method"
    FROM    "completed_country"
    WHERE   "v_91" = 'quoted'
    UNION ALL
    SELECT  'Natural language / informal (plain) text' AS "Method"
    FROM    "completed_country"
    WHERE   "v_83" = 'quoted'
    UNION ALL
    SELECT 'Prototypes / User screens' AS "Method"
    FROM    "completed_country"
    WHERE   "v_93" = 'quoted'
    UNION ALL
    SELECT  'Sequence diagrams' AS "Method"
    FROM    "completed_country"
    WHERE   "v_89" = 'quoted'
    UNION ALL
    SELECT  'Sketches' AS "Method"
    FROM    "completed_country"
    WHERE   "v_94" = 'quoted'
    UNION ALL
    SELECT  'State machines' AS "Method"
    FROM    "completed_country"
    WHERE   "v_90" = 'quoted'
    UNION ALL
    SELECT  'Structured lists of requirements' AS "Method"
    FROM    "completed_country"
    WHERE   "v_84" = 'quoted'
    UNION ALL
    SELECT  'Use case diagrams' AS "Method"
    FROM    "completed_country"
    WHERE   "v_86" = 'quoted'
    UNION ALL
    SELECT 'Use cases' AS "Method"
    FROM    "completed_country"
    WHERE   "v_82" = 'quoted'
    UNION ALL
    SELECT  'User stories' AS "Method"
    FROM    "completed_country"
    WHERE   "v_85" = 'quoted'
    UNION ALL
    SELECT  'Other' AS "Method"
    FROM    "completed_country"
    WHERE   "v_95" = 'quoted'
)
GROUP BY "Method";
SELECT  /*csv*/ "v_96" AS "Other Method"
FROM    "completed_country"
WHERE   "v_95" ='quoted';

PROMPT
PROMPT 2.8 Which classes of non-functional requirements do you explicitly consider in your requirements documentation? (
SELECT /*csv*/ "Class", COUNT("Class") AS "Number"
FROM
(
    SELECT  'Compatibility' AS "Class"
    FROM    "completed_country"
    WHERE   "v_97" = 'quoted'
    UNION ALL
    SELECT  'Maintainability' AS "Class"
    FROM    "completed_country"
    WHERE   "v_98" = 'quoted'
    UNION ALL
    SELECT  'Performance efficiency' AS "Class"
    FROM    "completed_country"
    WHERE   "v_99" = 'quoted'
    UNION ALL
    SELECT  'Portability' AS "Class"
    FROM    "completed_country"
    WHERE   "v_100" = 'quoted'
    UNION ALL
    SELECT  'Reliability' AS "Class"
    FROM    "completed_country"
    WHERE   "v_101" = 'quoted'
    UNION ALL
    SELECT  'Safety' AS "Class"
    FROM    "completed_country"
    WHERE   "v_102" = 'quoted'
    UNION ALL
    SELECT  'Security' AS "Class"
    FROM    "completed_country"
    WHERE   "v_303" = 'quoted'
    UNION ALL
    SELECT  'Usability' AS "Class"
    FROM    "completed_country"
    WHERE   "v_103" = 'quoted'
    UNION ALL
    SELECT  'Other' AS "Class"
    FROM    "completed_country"
    WHERE   "v_104" = 'quoted'
)
GROUP BY "Class";
SELECT  /*csv*/ "v_105" AS "Other Use"
FROM    "completed_country"
WHERE   "v_104" ='quoted';

PROMPT
PROMPT 2.9 How do you document each type of non-functional requirements selected in the previous question?
SELECT /*csv*/ "Type", "Artifact" FROM
(
    SELECT  'Compatiblity' AS "Type", "v_343" AS "Artifact"
    FROM    "completed_country"
    UNION ALL
    SELECT  'Maintainability' AS "Type", "v_344" AS "Artifact"
    FROM    "completed_country"
    UNION ALL
    SELECT  'Performance' AS "Type", "v_345" AS "Artifact"
    FROM    "completed_country"
    UNION ALL
    SELECT  'Portability' AS "Type", "v_346" AS "Artifact"
    FROM    "completed_country"
    UNION ALL
    SELECT  'Reliability' AS "Type", "v_347" AS "Artifact"
    FROM    "completed_country"
    UNION ALL
    SELECT  'Safety' AS "Type", "v_348" AS "Artifact"
    FROM    "completed_country"
    UNION ALL
    SELECT  'Security' AS "Type", "v_349" AS "Artifact"
    FROM    "completed_country"
    UNION ALL
    SELECT  'Usability' AS "Type", "v_350" AS "Artifact"
    FROM    "completed_country"
    UNION ALL
    SELECT  'OTHER' AS "Type", "v_351" AS "Artifact"
    FROM    "completed_country"
)
WHERE "Artifact" <> '-66' AND "Artifact" <> '-99';  

PROMPT
PROMPT 2.11 How do you verify and / or validate your requirements?
SELECT /*csv*/ "Way", COUNT("Way") AS "Number"
FROM
(
    SELECT  'Automatic checking' AS "Way"
    FROM    "completed_country"
    WHERE   "v_110" = 'quoted'
    UNION ALL
    SELECT  'Informal peer reviews' AS "Way"
    FROM    "completed_country"
    WHERE   "v_108" = 'quoted'
    UNION ALL
    SELECT  'Inspections (formal technical reviews using reading techniques or checklists)' AS "Way"
    FROM    "completed_country"
    WHERE   "v_106" = 'quoted'
    UNION ALL
    SELECT  'Simulations' AS "Way"
    FROM    "completed_country"
    WHERE   "v_109" = 'quoted'
    UNION ALL
    SELECT  'Walkthroughs' AS "Way"
    FROM    "completed_country"
    WHERE   "v_107" = 'quoted'
    UNION ALL
    SELECT  'We do not verify and / or validate our requirements' AS "Way"
    FROM    "completed_country"
    WHERE   "v_111" = 'quoted'
    UNION ALL
    SELECT  'Other' AS "Way"
    FROM    "completed_country"
    WHERE   "v_112" = 'quoted'
)
GROUP BY "Way";
SELECT  /*csv*/ "v_113" AS "Other Way"
FROM    "completed_country"
WHERE   "v_112" ='quoted';

PROMPT
PROMPT 2.12 How do you align software testing with requirements?
SELECT /*csv*/ "Way", COUNT("Way") AS "Number"
FROM
(
    SELECT  'Testers participate in requirements reviews' AS "Way"
    FROM    "completed_country"
    WHERE   "v_158" = 'quoted'
    UNION ALL
    SELECT  'We check the coverage of requirements with tests' AS "Way"
    FROM    "completed_country"
    WHERE   "v_159" = 'quoted'
    UNION ALL
    SELECT  'We define acceptance criteria and tests for requirements' AS "Way"
    FROM    "completed_country"
    WHERE   "v_160" = 'quoted'
    UNION ALL
    SELECT  'We derive tests from system models' AS "Way"
    FROM    "completed_country"
    WHERE   "v_161" = 'quoted'
    UNION ALL
    SELECT  'We do not align tests and requirements' AS "Way"
    FROM    "completed_country"
    WHERE   "v_162" = 'quoted'
    UNION ALL
    SELECT  'Other' AS "Way"
    FROM    "completed_country"
    WHERE   "v_163" = 'quoted'
)
GROUP BY "Way";
SELECT  /*csv*/ "v_164" AS "Other Way"
FROM    "completed_country"
WHERE   "v_163" ='quoted';

PROMPT
PROMPT 2.13 How do you deal with changing requirements after the initial release of the system (or parts of it)?
SELECT      /*csv*/"v_165" AS "Way", COUNT("v_165") AS "Number"
FROM        "completed_country"
GROUP BY "v_165";
SELECT  /*csv*/ "v_166" AS "Other Use"
FROM    "completed_country"
WHERE   "v_165"  LIKE '%Other%';

PROMPT
PROMPT 2.14 Right now how satisfied are you with how requirements engineering is done in your project?
SELECT      /*csv*/"v_167" AS "Degree", count("v_167") AS "Number"
FROM        "completed_country"
GROUP BY    "v_167";

PROMPT
PROMPT 2.15 Disatisfaction - Why are you rather dissatisfied with how requirements engineering is done in your project?
SELECT  /*csv*/ "v_168" AS "Reason"
FROM    "completed_country"
WHERE   "v_168" <> '-99' AND "v_168" <> '-66';

PROMPT
PROMPT 2.16 Disatisfaction - What are the consequences of the dissatisfying requirements engineering?
SELECT  /*csv*/ "v_170" AS "Consequences"
FROM    "completed_country"
WHERE   "v_170" <> '-99' AND "v_170" <> '-66';

PROMPT
PROMPT 2.17 Disatisfaction - Necessary Change?
SELECT  /*csv*/ "v_171" AS "Consequences"
FROM    "completed_country"
WHERE   "v_171" <> '-99' AND "v_171" <> '-66';

PROMPT
PROMPT 2.18 Satisfaction - Why are you rather satisfied with how requirements engineering is done in your project?
SELECT  /*csv*/ "v_169" AS "Consequences"
FROM    "completed_country"
WHERE   "v_169" <> '-99' AND "v_169" <> '-66';

PROMPT
PROMPT 2.19 Satisfaction - What are the consequenes of the satisfying requirements engineering?
SELECT  /*csv*/ "v_172" AS "Consequences"
FROM    "completed_country"
WHERE   "v_172" <> '-99' AND "v_172" <> '-66';

PROMPT
PROMPT 2.20 Satisfaction - At some point in the past you were likely not fully satisfied with your projects requirements engineering. If anything what happened to make you satisfied?
SELECT  /*csv*/ "v_173" AS "Consequences"
FROM    "completed_country"
WHERE   "v_173" <> '-99' AND "v_173" <> '-66';

--
--- Problems
--
PROMPT
PROMPT 3 PROBLEMS IN RE
PROMPT
PROMPT 3.1 Considering your personal experiences how do the following problems in requirements engineering apply to your project?
SELECT  /*csv*/ "Problem", "Rating", COUNT("Rating") AS "Number" 
FROM
(
    SELECT 'Communication flaws within the project team' AS "Problem", "v_174" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Communication flaws between the project and the customer' AS "Problem", "v_175" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Terminological problems' AS "Problem", "v_176" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Incomplete or hidden requirements' AS "Problem", "v_177" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Insufficient support by project lead' AS "Problem", "v_178" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Insufficient support by customer' AS "Problem", "v_179" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Stakeholders with difficulties in separating requirements from previously known solution designs' AS "Problem", "v_180" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Inconsistent requirements' AS "Problem", "v_181" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Missing traceability' AS "Problem", "v_182" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Moving targets (changing goals, business processes and / or requirements' AS "Problem", "v_183" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Gold plating (implementation of features without corresponding requirements' AS "Problem", "v_184" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Weak access to customer needs and / or (internal) business information' AS "Problem", "v_185" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Weak knowledge about customer''s application domain' AS "Problem", "v_186" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Weak relationship between customer and project lead', "v_187" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Time boxing / Not enough time in general', "v_188" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Discrepancy between high degree of innovation and need for formal acceptance of (potentially wrong / incomplete / unknown) requirements', "v_189" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Technically unfeasible requirements', "v_190" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Underspecified requirements that are too abstract and allow for various interpretations', "v_191" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Unclear / unmeasurable non-functional requirements', "v_192" AS "Rating" FROM "completed_country"
    UNION ALL
    SELECT 'Volatile customer''s business domain regarding, e.g., changing points of contact, business processes or requirements', "v_193" AS "Rating" FROM "completed_country"
)
WHERE "Rating" <> '0'
GROUP BY "Problem", "Rating"
ORDER BY "Problem", "Rating";

PROMPT
PROMPT 3.2 Considering your personally experienced problems stated in the previous question which ones would you classify as the five most critical ones?
PROMPT Top 1
SELECT      /*csv*/ "v_246" AS "Problem", COUNT ("v_246") AS "Number" 
FROM        "completed_country"
WHERE       "v_246" <> 'Please make a selection'
GROUP BY    "v_246";
PROMPT Top 2
SELECT      /*csv*/ "v_248" AS "Problem", COUNT ("v_248") AS "Number" 
FROM        "completed_country"
WHERE       "v_248" <> 'Please make a selection'
GROUP BY    "v_248";
PROMPT Top 3
SELECT      /*csv*/ "v_250" AS "Problem", COUNT ("v_250") AS "Number" 
FROM        "completed_country" 
WHERE       "v_250" <> 'Please make a selection'
GROUP BY    "v_250";
PROMPT Top 4
SELECT      /*csv*/ "v_252" AS "Problem", COUNT ("v_252") AS "Number" 
FROM        "completed_country" 
WHERE       "v_252" <> 'Please make a selection'
GROUP BY    "v_252";
PROMPT Top 5
SELECT      /*csv*/ "v_254" AS "Problem", COUNT ("v_254") AS "Number" 
FROM        "completed_country"
WHERE       "v_254" <> 'Please make a selection'
GROUP BY    "v_254";

PROMPT
PROMPT 3.3 Considering your personally experienced most critical problems selected in the previous question which causes do they have?
SELECT  "Problem", "Cause"
FROM
(
    SELECT      /*csv*/ "v_246" AS "Problem", "v_277" AS "Cause"
    FROM        "completed_country"
    UNION ALL
    SELECT      /*csv*/ "v_248" AS "Problem", "v_278" AS "Cause"
    FROM        "completed_country"
    UNION ALL
    SELECT      /*csv*/ "v_250" AS "Problem", "v_279" AS "Cause"
    FROM        "completed_country"
    UNION ALL
    SELECT      /*csv*/ "v_252" AS "Problem", "v_280" AS "Cause"
    FROM        "completed_country"
    UNION ALL
    SELECT      /*csv*/ "v_254" AS "Problem", "v_281" AS "Cause"
    FROM        "completed_country"
) 
WHERE "Problem" <> '-66' AND "Problem" <> 'Please make a selection' AND "Cause" <> '-99'
ORDER BY "Problem";
    
PROMPT    
PROMPT 3.4 Considering your personally experienced most critical problems selected in the previous question which implications do they have?
SELECT  "Problem", "Implication"
FROM
(
    SELECT      /*csv*/ "v_246" AS "Problem", "v_282" AS "Implication"
    FROM        "completed_country"
    UNION ALL
    SELECT      /*csv*/ "v_248" AS "Problem", "v_283" AS "Implication"
    FROM        "completed_country"
    UNION ALL
    SELECT      /*csv*/ "v_250" AS "Problem", "v_284" AS "Implication"
    FROM        "completed_country"
    UNION ALL
    SELECT      /*csv*/ "v_252" AS "Problem", "v_285" AS "Implication"
    FROM        "completed_country"
    UNION ALL
    SELECT      /*csv*/ "v_254" AS "Problem", "v_286" AS "Implication"
    FROM        "completed_country"
) 
WHERE "Problem" <> '-66' AND "Problem" <> 'Please make a selection' AND "Implication" <> '-99'
ORDER BY "Problem";    

PROMPT
PROMPT 3.5 Besides the problems listed in the previous questions is there another prominent problem you experienced in your project? If so, which one?
SELECT  /*csv*/ "v_194" AS "Problem"
FROM    "completed_country"
WHERE   "v_194" <> '-99';

PROMPT
PROMPT 3.6 Is there any other unaddressed aspect that you experience in your RE process and that you would like to share with us?
SELECT  /*csv*/ "v_297" AS "Problem"
FROM    "completed_country"
WHERE   "v_297" <> '-99';


---
--- (FIRST) DEEPER ANALYSIS
---
PROMPT
PROMPT 4 SOME ADDITIONAL ANALYSIS
PROMPT
PROMPT 4.1 Way of RE w.r.t to way of working
SELECT /*csv*/ "Way of working", "Way of RE", count ("Way of RE") AS "Number"
FROM
(
    SELECT  "v_24" as "Way of working", 'Several iterations' AS "Way of RE"
    FROM    "completed_country"
    WHERE   "v_28" = 'quoted'
    UNION ALL
    SELECT  "v_24" as "Way of working", 'Dedicated Project Phase' AS "Way of RE"
    FROM    "completed_country"
    WHERE   "v_29" = 'quoted'
)
GROUP BY "Way of working", "Way of RE";
PROMPT
PROMPT 4.2 Method w.r.t to way of working
SELECT /*csv*/ "Way", "Method", COUNT("Method") AS "Number"
FROM
(
SELECT  'Activity diagrams' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_87" = 'quoted'
UNION ALL
SELECT  'Business process models' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_92" = 'quoted'
UNION ALL
SELECT  'Class diagrams' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_88" = 'quoted'
UNION ALL
SELECT  'Goal models' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_91" = 'quoted'
UNION ALL
SELECT  'Natural language / informal (plain) text' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_83" = 'quoted'
UNION ALL
SELECT 'Prototypes / User screens' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_93" = 'quoted'
UNION ALL
SELECT  'Sequence diagrams' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_89" = 'quoted'
UNION ALL
SELECT  'Sketches' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_94" = 'quoted'
UNION ALL
SELECT  'State machines' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_90" = 'quoted'
UNION ALL
SELECT  'Structured lists of requirements' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_84" = 'quoted'
UNION ALL
SELECT  'Use case diagrams' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_86" = 'quoted'
UNION ALL
SELECT 'Use cases' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_82" = 'quoted'
UNION ALL
SELECT  'User stories' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_85" = 'quoted'
UNION ALL
SELECT  'Other' AS "Method", "v_24" as "Way"
FROM    "completed_country"
WHERE   "v_95" = 'quoted'
)
GROUP BY "Way", "Method"
ORDER By "Way", "Method";

PROMPT
PROMPT 4.3 Hitlist of problems mentioned as Top 5-Problem
SELECT /*csv*/ "Problem" AS "Problem", count("Problem") AS "Number"
FROM 
(
    SELECT  "v_246" AS "Problem"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_248" AS "Problem"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_250" AS "Problem"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_252" AS "Problem"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_254" AS "Problem"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_252" AS "Problem"
    FROM    "completed_country"
)
WHERE "Problem" <> 'Please make a selection'
GROUP BY "Problem"
ORDER BY "Number" DESC;

PROMPT
PROMPT 4.4 Top 1 -Problems w.r.t. to way of working
PROMPT Top 1
SELECT      /*csv*/ "v_24" AS "Way", "v_246" AS "Problem", COUNT ("v_246") AS "Number" 
FROM        "completed_country"
WHERE       "v_246" <> 'Please make a selection'
GROUP BY    "v_24","v_246"
ORDER BY    "v_24", "Number" DESC, "v_246";

PROMPT
PROMPT 4.5 Hitlist of Problems mentioned as Top5-Problems w.r.t way of working
SELECT /*csv*/ "Way", "Problem" AS "Problem", count("Problem") AS "Number"
FROM 
(
    SELECT  "v_246" AS "Problem", "v_24" AS "Way"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_248" AS "Problem", "v_24" AS "Way"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_250" AS "Problem", "v_24" AS "Way"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_252" AS "Problem", "v_24" AS "Way"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_254" AS "Problem", "v_24" AS "Way"
    FROM    "completed_country"
    UNION ALL
    SELECT  "v_252" AS "Problem", "v_24" AS "Way"
    FROM    "completed_country"
)
WHERE "Problem" <> 'Please make a selection'
GROUP BY "Way", "Problem"
ORDER BY "Way", "Number" DESC, "Problem";