% unit       : celex:32024R1689/oj#art_39
% title      : Conformity assessment bodies of third countries
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : gpt-oss:120b-cloud
% prompt sha : 521feeafd8fc1547dfc226ce614ade496b2dcd0e23ba5676d1f16de7214a7af3
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred third_country_conformity_assessment_body/1, gloss('conformity assessment body established under the law of a third country with which the Union has concluded an agreement'), source('celex:32024R1689/oj#art_39').
:- pred union_agreement_with_third_country_applies/1, gloss('the Union has concluded an agreement with the third country of the body'), source('celex:32024R1689/oj#art_39').
:- pred requirements_laid_down_in_art_31_applies/1, gloss('the body meets the requirements laid down in article 31'), source('celex:32024R1689/oj#art_39').
:- pred equivalent_level_of_compliance_applies/1, gloss('the body ensures an equivalent level of compliance'), source('celex:32024R1689/oj#art_39').
:- pred permitted_authorisation_of_third_country_conformity_assessment_body/1, gloss('may be authorised to carry out the activities of notified bodies'), source('celex:32024R1689/oj#art_39').

third_country_conformity_assessment_body(S) :-
    conformity_assessment_body(S),
    union_agreement_with_third_country_applies(S).

permitted_authorisation_of_third_country_conformity_assessment_body(S) :-
    third_country_conformity_assessment_body(S),
    (   requirements_laid_down_in_art_31_applies(S)
    ;   equivalent_level_of_compliance_applies(S)
    ).

provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(permitted_authorisation_of_third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').
