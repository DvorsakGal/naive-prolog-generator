% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : adda48a394554407363682045ff3b6008ccd277e40b4b9952735ad0f84264780
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred third_country_agreement/1, gloss('Union has concluded an agreement with the third country under whose law the body is established'), source('celex:32024R1689/oj#art_39').
:- pred established_under_law_of_third_country/2, gloss('Body is established under the law of a third country'), source('celex:32024R1689/oj#art_39').
:- pred meets_requirements_of_article_31/1, gloss('Conformity assessment body meets the requirements laid down in Article 31'), source('celex:32024R1689/oj#art_39').
:- pred ensures_equivalent_level_of_compliance/1, gloss('Conformity assessment body ensures an equivalent level of compliance to Article 31'), source('celex:32024R1689/oj#art_39').
:- pred permitted_authorisation_as_notified_body/1, gloss('Conformity assessment body may be authorised to carry out activities of notified bodies'), source('celex:32024R1689/oj#art_39').

permitted_authorisation_as_notified_body(B) :-
    conformity_assessment_body(B),
    established_under_law_of_third_country(B, Country),
    third_country_agreement(Country),
    meets_requirements_of_article_31(B).

permitted_authorisation_as_notified_body(B) :-
    conformity_assessment_body(B),
    established_under_law_of_third_country(B, Country),
    third_country_agreement(Country),
    ensures_equivalent_level_of_compliance(B).

provenance(permitted_authorisation_as_notified_body/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').
