% unit       : celex:32024R1689/oj#art_39
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 00f54a307d07d8f76ef1ef3d7b7225d479354865bd66924ebe81b377409650ff
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : e9a6554210e77e94f2147506f522e15ca0f1a0cd84c4af77c16ff62b498b7784
% cached     : False
% title      : Conformity assessment bodies of third countries
:- pred conformity_assessment_body_of_third_country/1, gloss('conformity assessment body established under the law of a third country'), source('celex:32024R1689/oj#art_39').
:- pred union_agreement_concluded_with_third_country/1, gloss('Union has concluded an agreement with the third country'), source('celex:32024R1689/oj#art_39').
:- pred equivalent_level_of_compliance_ensured/1, gloss('body ensures an equivalent level of compliance to Article 31 requirements'), source('celex:32024R1689/oj#art_39').
:- pred authorised_as_notified_body/1, gloss('authorised to carry out activities of notified bodies under this Regulation'), source('celex:32024R1689/oj#art_39').

conformity_assessment_body_of_third_country(B) :-
    conformity_assessment_body(B),
    established_under_national_law(B).

authorised_as_notified_body(B) :-
    conformity_assessment_body_of_third_country(B),
    union_agreement_concluded_with_third_country(B),
    meets_requirements_of_art_31(B).

authorised_as_notified_body(B) :-
    conformity_assessment_body_of_third_country(B),
    union_agreement_concluded_with_third_country(B),
    equivalent_level_of_compliance_ensured(B).

provenance(conformity_assessment_body_of_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(union_agreement_concluded_with_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(equivalent_level_of_compliance_ensured/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_as_notified_body/1, 'celex:32024R1689/oj#art_39').

references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').
