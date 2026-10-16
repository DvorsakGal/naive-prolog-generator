% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8ab2e2865a5550ed647f0f06427246a57dab83053d9d89777b60c59598fd4664
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred third_country_conformity_assessment_body/1, gloss('conformity assessment body established under the law of a third country'), source('celex:32024R1689/oj#art_39').
:- pred agreement_with_union/1, gloss('agreement concluded between the Union and a third country'), source('celex:32024R1689/oj#art_39').
:- pred authorised_to_carry_out_notified_body_activities/1, gloss('authorised to carry out the activities of notified bodies'), source('celex:32024R1689/oj#art_39').
:- pred meets_requirements/2, gloss('meets the requirements laid down in a provision'), source('celex:32024R1689/oj#art_39').
:- pred ensures_equivalent_level_of_compliance/1, gloss('ensures an equivalent level of compliance'), source('celex:32024R1689/oj#art_39').

authorised_to_carry_out_notified_body_activities(B) :-
    third_country_conformity_assessment_body(B),
    agreement_with_union(C),
    established_under_law_of_third_country(B, C),
    ( meets_requirements(B, art_31)
    ; ensures_equivalent_level_of_compliance(B)
    ).

established_under_law_of_third_country(B, C) :-
    third_country_conformity_assessment_body(B),
    third_country(C).

third_country(C) :-
    \+ member_state(C).

member_state(_C).

provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(agreement_with_union/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_to_carry_out_notified_body_activities/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements/2, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_level_of_compliance/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').
