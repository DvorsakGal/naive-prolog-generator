% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 02ca6e63505b9178373a9c8098e55930fd33404193aee17055c283d3cf25b3c6
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred conformity_assessment_body_third_country/1, gloss('conformity assessment body established under third country law'), source('celex:32024R1689/oj#art_39').
:- pred union_agreement_third_country/1, gloss('third country with which the Union has concluded an agreement'), source('celex:32024R1689/oj#art_39').
:- pred meets_requirements_art_31/1, gloss('meets the requirements laid down in Article 31'), source('celex:32024R1689/oj#art_39').
:- pred ensures_equivalent_compliance/1, gloss('ensures an equivalent level of compliance'), source('celex:32024R1689/oj#art_39').

authorised_conformity_assessment_body_third_country(B) :-
    conformity_assessment_body(B),
    established_in_third_country(B),
    union_agreement_third_country(C),
    established_under_law_of(B, C),
    ( meets_requirements_art_31(B)
    ; ensures_equivalent_compliance(B)
    ).

provenance(authorised_conformity_assessment_body_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(conformity_assessment_body_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(union_agreement_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements_art_31/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_compliance/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').
