% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5d412c5180fd28267b668c129cba437869f35826e58d956605bd3f1411ece2af
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('80').
:- pred classified_as_non_high_risk_by_provider/1, gloss('AI system classified by provider as non-high-risk'), source('80').
:- pred evaluation_of_classification/2, gloss('evaluation of AI system classification by market surveillance authority'), source('80').
:- pred must_bring_into_compliance/2, gloss('provider must bring AI system into compliance'), source('80').
:- pred must_take_corrective_action/2, gloss('provider must take corrective action'), source('80').
:- pred subject_to_fines/2, gloss('entity subject to fines'), source('80').
:- pred must_inform_commission_and_member_states/2, gloss('market surveillance authority must inform Commission and other Member States'), source('80').
:- pred adequate_corrective_action_not_taken/2, gloss('provider does not take adequate corrective action'), source('80').
:- pred misclassified_to_circumvent/2, gloss('provider misclassified AI system to circumvent requirements'), source('80').
:- pred may_perform_checks/2, gloss('market surveillance authority may perform checks'), source('80').

high_risk_ai_system(S) :-
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    evaluation_of_classification(Authority, S),
    market_surveillance_authority(Authority),
    conditions_art_6_par_3_hold(S),
    commission_guidelines_support_high_risk(S).

evaluation_of_classification(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    sufficient_reason_to_consider_high_risk(Authority, S).

sufficient_reason_to_consider_high_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S).

must_bring_into_compliance(Provider, S) :-
    provider(Provider),
    ai_system(S),
    evaluation_of_classification(Authority, S),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S).

must_take_corrective_action(Provider, S) :-
    provider(Provider),
    ai_system(S),
    evaluation_of_classification(Authority, S),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    made_available_on_market(Provider, S).

must_inform_commission_and_member_states(Authority, evaluation_results(S, Actions)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_of_classification(Authority, S),
    \+ use_restricted_to_national_territory(Authority, S),
    required_actions(Authority, S, Actions).

use_restricted_to_national_territory(_Authority, _S) :-
    fail.

required_actions(Authority, S, bring_into_compliance_and_corrective_action) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    high_risk_ai_system(S).

subject_to_fines(Provider, non_compliance_with_requirements(S)) :-
    provider(Provider),
    ai_system(S),
    must_bring_into_compliance(Provider, S),
    \+ brought_into_compliance(Provider, S),
    period_prescribed_by_authority(Authority, S, Period),
    within(Period),
    market_surveillance_authority(Authority).

subject_to_fines(Provider, misclassification_to_circumvent(S)) :-
    provider(Provider),
    ai_system(S),
    evaluation_of_classification(Authority, S),
    market_surveillance_authority(Authority),
    misclassified_to_circumvent(Provider, S).

misclassified_to_circumvent(Provider, S) :-
    provider(Provider),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    purpose_of_classification_was_circumvention(Provider, S),
    requirements_in_chapter_3_section_2_apply(S).

purpose_of_classification_was_circumvention(Provider, S) :-
    provider(Provider),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S).

requirements_in_chapter_3_section_2_apply(S) :-
    ai_system(S).

adequate_corrective_action_not_taken(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_take_corrective_action(Provider, S),
    \+ adequate_corrective_action_taken(Provider, S),
    period_prescribed_by_authority(Authority, S, Period),
    within(Period),
    market_surveillance_authority(Authority).

art_79_par_5_to_9_applies(S) :-
    ai_system(S),
    adequate_corrective_action_not_taken(Provider, S),
    provider(Provider).

may_perform_checks(Authority, monitoring_application_of_art_80) :-
    market_surveillance_authority(Authority).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_80').
provenance(evaluation_of_classification/2, 'celex:32024R1689/oj#art_80').
provenance(sufficient_reason_to_consider_high_risk/2, 'celex:32024R1689/oj#art_80').
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent/2, 'celex:32024R1689/oj#art_80').
provenance(adequate_corrective_action_not_taken/2, 'celex:32024R1689/oj#art_80').
provenance(art_79_par_5_to_9_applies/1, 'celex:32024R1689/oj#art_80').
provenance(may_perform_checks/2, 'celex:32024R1689/oj#art_80').

references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_2').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_6').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_7').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_9').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_1').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
