% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9c6027d7eab82eea199cc401872d680da4ab5ed3254f15cee48c8449e6654b15
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred may_be_authorised_as_notified_body/1, gloss('conformity assessment body of a third country authorised to carry out notified body activities'), source('celex:32024R1689/oj#art_39').

may_be_authorised_as_notified_body(B) :-
    conformity_assessment_body(B),
    established_under_third_country_law(B),
    union_has_agreement_with_third_country(B),
    ( meets_requirements_art_31(B)
    ; ensures_equivalent_compliance(B)
    ).

established_under_third_country_law(B) :-
    conformity_assessment_body(B).

union_has_agreement_with_third_country(B) :-
    conformity_assessment_body(B).

meets_requirements_art_31(B) :-
    conformity_assessment_body(B).

ensures_equivalent_compliance(B) :-
    conformity_assessment_body(B).

provenance(may_be_authorised_as_notified_body/1, 'celex:32024R1689/oj#art_39').
provenance(established_under_third_country_law/1, 'celex:32024R1689/oj#art_39').
provenance(union_has_agreement_with_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements_art_31/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_compliance/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').
