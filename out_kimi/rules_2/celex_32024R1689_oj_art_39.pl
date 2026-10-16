% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 33ac2c7a6bfa8c7aa76676f324c64830b55afd0ad97c6d12ca6a3ad77a39110f
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred third_country_conformity_assessment_body/1, gloss('conformity assessment body established under the law of a third country'), source('celex:32024R1689/oj#art_39').
:- pred union_agreement_with_third_country/1, gloss('the Union has concluded an agreement with the third country'), source('celex:32024R1689/oj#art_39').
:- pred authorised_as_notified_body/1, gloss('authorised to carry out activities of notified bodies'), source('celex:32024R1689/oj#art_39').
:- pred meets_requirements_art_31/1, gloss('meets requirements laid down in Article 31'), source('celex:32024R1689/oj#art_39').
:- pred ensures_equivalent_level_of_compliance/1, gloss('ensures an equivalent level of compliance'), source('celex:32024R1689/oj#art_39').

third_country_conformity_assessment_body(B) :-
    conformity_assessment_body(B),
    established_under_third_country_law(B).

established_under_third_country_law(B) :-
    third_country_conformity_assessment_body(B).

union_agreement_with_third_country(B) :-
    third_country_conformity_assessment_body(B),
    established_under_national_law(B),
    \+ established_in_union(B).

authorised_as_notified_body(B) :-
    third_country_conformity_assessment_body(B),
    union_agreement_with_third_country(B),
    meets_requirements_art_31(B).

authorised_as_notified_body(B) :-
    third_country_conformity_assessment_body(B),
    union_agreement_with_third_country(B),
    ensures_equivalent_level_of_compliance(B).

provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(established_under_third_country_law/1, 'celex:32024R1689/oj#art_39').
provenance(union_agreement_with_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_as_notified_body/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements_art_31/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_level_of_compliance/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').
