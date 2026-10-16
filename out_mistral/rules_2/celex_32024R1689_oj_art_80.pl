% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 0351ac1f4e5404837895bcb6b9c7c1d5b45ea3545051569116c37292def40e2a
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred sufficient_reason_to_consider_high_risk/2, gloss('market surveillance authority has sufficient reason to consider AI system classified as non-high-risk is indeed high-risk'), source('celex:32024R1689/oj#art_80').
:- pred classified_as_non_high_risk_by_provider/1, gloss('AI system classified by provider as non-high-risk pursuant to Article 6(3)'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_of_classification/2, gloss('market surveillance authority carries out evaluation of AI system classification as high-risk'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_based_on_conditions/2, gloss('evaluation based on conditions set out in Article 6(3) and Commission guidelines'), source('celex:32024R1689/oj#art_80').
:- pred found_high_risk_in_evaluation/2, gloss('market surveillance authority finds AI system is high-risk in course of evaluation'), source('celex:32024R1689/oj#art_80').
:- pred use_not_restricted_to_national_territory/1, gloss('use of AI system is not restricted to national territory'), source('celex:32024R1689/oj#art_80').
:- pred results_of_evaluation/2, gloss('results of the evaluation'), source('celex:32024R1689/oj#art_80').
:- pred actions_required_of_provider/2, gloss('actions which market surveillance authority has required provider to take'), source('celex:32024R1689/oj#art_80').
:- pred provider_fails_to_bring_into_compliance/2, gloss('provider does not bring AI system into compliance within prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred provider_fails_to_take_adequate_corrective_action/2, gloss('provider does not take adequate corrective action within prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred misclassified_to_circumvent_requirements/2, gloss('AI system was misclassified by provider as non-high-risk to circumvent application of requirements in Chapter 3 Section 2'), source('celex:32024R1689/oj#art_80').
:- pred subject_to_fines/2, gloss('provider is subject to fines in accordance with Article 99'), source('celex:32024R1689/oj#art_80').
:- pred appropriate_checks_performed/2, gloss('market surveillance authority performs appropriate checks in exercising power to monitor application of Article 80'), source('celex:32024R1689/oj#art_80').

classified_as_non_high_risk_by_provider(S) :-
    ai_system(S),
    concluded_not_high_risk(S).

sufficient_reason_to_consider_high_risk(A, S) :-
    market_surveillance_authority(A),
    classified_as_non_high_risk_by_provider(S).

evaluation_of_classification(A, S) :-
    sufficient_reason_to_consider_high_risk(A, S).

evaluation_based_on_conditions(A, S) :-
    evaluation_of_classification(A, S).

found_high_risk_in_evaluation(A, S) :-
    evaluation_of_classification(A, S),
    high_risk_ai_system(S).

must_take_necessary_steps(A, bring_into_compliance(S)) :-
    found_high_risk_in_evaluation(A, S),
    market_surveillance_authority(A),
    provider(P),
    ai_system(S),
    within(days(_), prescribed_by(A)).

must_take_corrective_actions(A, S) :-
    found_high_risk_in_evaluation(A, S),
    market_surveillance_authority(A),
    ai_system(S).

must_inform_commission(A, results_of_evaluation(S, actions_required_of_provider(A, P))) :-
    found_high_risk_in_evaluation(A, S),
    market_surveillance_authority(A),
    use_not_restricted_to_national_territory(S),
    member_state(_),
    without_delay.

must_inform_commission(A, other_member_states) :-
    found_high_risk_in_evaluation(A, S),
    market_surveillance_authority(A),
    use_not_restricted_to_national_territory(S),
    without_delay.

must_ensure_compliance(P, S) :-
    provider(P),
    ai_system(S),
    found_high_risk_in_evaluation(_, S).

provider_fails_to_bring_into_compliance(P, S) :-
    provider(P),
    ai_system(S),
    must_ensure_compliance(P, S),
    \+ brought_into_compliance(P, S).

subject_to_fines(P, art_99) :-
    provider_fails_to_bring_into_compliance(P, _).

must_take_corrective_actions(P, all_ai_systems_made_available_on_union_market) :-
    provider(P),
    ai_system(S),
    found_high_risk_in_evaluation(_, S).

provider_fails_to_take_adequate_corrective_action(P, S) :-
    provider(P),
    ai_system(S),
    must_take_corrective_actions(P, all_ai_systems_made_available_on_union_market),
    \+ adequate_corrective_action_taken(P, S).

art_79_par_5_to_9_apply(P, S) :-
    provider_fails_to_take_adequate_corrective_action(P, S).

misclassified_to_circumvent_requirements(P, S) :-
    provider(P),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    evaluation_of_classification(_, S),
    circumvented_application_of_requirements(P, S).

subject_to_fines(P, art_99) :-
    misclassified_to_circumvent_requirements(P, _).

appropriate_checks_performed(A, art_80) :-
    market_surveillance_authority(A),
    in_accordance_with_regulation(celex_32019R1020_art_11).

provenance(sufficient_reason_to_consider_high_risk/2, 'celex:32024R1689/oj#art_80').
provenance(classified_as_non_high_risk_by_provider/1, 'celex:32024R1689/oj#art_80').
provenance(evaluation_of_classification/2, 'celex:32024R1689/oj#art_80').
provenance(evaluation_based_on_conditions/2, 'celex:32024R1689/oj#art_80').
provenance(found_high_risk_in_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(use_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_80').
provenance(results_of_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(actions_required_of_provider/2, 'celex:32024R1689/oj#art_80').
provenance(provider_fails_to_bring_into_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(provider_fails_to_take_adequate_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent_requirements/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(appropriate_checks_performed/2, 'celex:32024R1689/oj#art_80').

references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_2').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_6').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_7').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_9').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_1').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
