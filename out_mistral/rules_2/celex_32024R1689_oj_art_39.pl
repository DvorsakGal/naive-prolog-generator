% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 7bfb6d4585e92fbc7f0599122a3e638f4b2e46c2aa9f720a8b66db252e53a27e
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred third_country_conformity_assessment_body/1, gloss('conformity assessment body established under the law of a third country'), source('celex:32024R1689/oj#art_39').
:- pred agreement_with_union/1, gloss('Union has concluded an agreement with the third country'), source('celex:32024R1689/oj#art_39').
:- pred authorised_to_carry_out_notified_body_activities/1, gloss('conformity assessment body authorised to carry out activities of notified bodies'), source('celex:32024R1689/oj#art_39').
:- pred equivalent_level_of_compliance/1, gloss('body ensures an equivalent level of compliance'), source('celex:32024R1689/oj#art_39').

authorised_to_carry_out_notified_body_activities(B) :-
    third_country_conformity_assessment_body(B),
    agreement_with_union(B),
    meets_requirements_art_31(B).

authorised_to_carry_out_notified_body_activities(B) :-
    third_country_conformity_assessment_body(B),
    agreement_with_union(B),
    equivalent_level_of_compliance(B).

provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(agreement_with_union/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_to_carry_out_notified_body_activities/1, 'celex:32024R1689/oj#art_39').
provenance(equivalent_level_of_compliance/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').
