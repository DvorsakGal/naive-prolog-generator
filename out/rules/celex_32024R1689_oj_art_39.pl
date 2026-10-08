% unit       : celex:32024R1689/oj#art_39
% title      : Conformity assessment bodies of third countries
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : gpt-oss:120b-cloud
% prompt sha : 0e5022a16f296bc020c59faa99b712be1f85786e363e7ec40b47abb3b3359036
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred permitted_authorisation_of_third_country_conformity_assessment_body/1,
    gloss('may be authorised to carry out the activities of notified bodies'), 
    source('celex:32024R1689/oj#art_39').

:- pred third_country/1,
    gloss('conformity assessment body established under the law of a third country with which the Union has concluded an agreement'), 
    source('celex:32024R1689/oj#art_39').

:- pred meets_requirements/1,
    gloss('meets the requirements laid down in article 31'), 
    source('celex:32024R1689/oj#art_39').

:- pred ensures_equivalent_compliance/1,
    gloss('ensures an equivalent level of compliance'), 
    source('celex:32024R1689/oj#art_39').

permitted_authorisation_of_third_country_conformity_assessment_body(Body) :-
    conformity_assessment_body(Body),
    third_country(Body),
    (   meets_requirements(Body)
    ;   ensures_equivalent_compliance(Body)
    ).

provenance(permitted_authorisation_of_third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').
