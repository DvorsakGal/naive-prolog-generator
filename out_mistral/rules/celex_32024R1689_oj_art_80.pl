% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dafb409ecbff56a66d97c0aaac22137c902104423a3b78a52fa99f2f21998883
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_80').
:- pred classified_non_high_risk_by_provider/2, gloss('provider classified AI system as non-high-risk'), source('celex:32024R1689/oj#art_80').
:- pred sufficient_reason_to_consider_high_risk/2, gloss('market surveillance authority has sufficient reason to consider system is high-risk'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_of_classification/2, gloss('market surveillance authority evaluates classification of AI system'), source('celex:32024R1689/oj#art_80').
:- pred found_high_risk_in_evaluation/2, gloss('market surveillance authority finds AI system is high-risk in evaluation'), source('celex:32024R1689/oj#art_80').
:- pred use_not_restricted_to_national_territory/1, gloss('use of AI system is not restricted to national territory'), source('celex:32024R1689/oj#art_80').
:- pred misclassified_to_circumvent_requirements/2, gloss('provider misclassified AI system as non-high-risk to circumvent requirements'), source('celex:32024R1689/oj#art_80').
:- pred subject_to_fines/2, gloss('entity is subject to fines under Article 99'), source('celex:32024R1689/oj#art_80').
:- pred adequate_corrective_action_taken/2, gloss('provider has taken adequate corrective action for AI system'), source('celex:32024R1689/oj#art_80').
:- pred all_ai_systems_made_available_on_union_market/2, gloss('all AI systems concerned made available on Union market by provider'), source('celex:32024R1689/oj#art_80').

% Paragraph 1: Market surveillance authority shall carry out evaluation when sufficient reason exists
must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_non_high_risk_by_provider(P, S),
    sufficient_reason_to_consider_high_risk(Authority, S),
    evaluation_of_classification(Authority, S).

% Paragraph 2: Where found high-risk, authority shall require provider to take necessary actions
must_require_compliance_actions(Authority, P, S, Period) :-
    market_surveillance_authority(Authority),
    provider(P),
    ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    high_risk_ai_system(S).

% Paragraph 3: Where use not restricted to national territory, inform Commission and other Member States
must_inform_commission_and_member_states(Authority, Results, Actions) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    must_carry_out_evaluation(Authority, S),
    use_not_restricted_to_national_territory(S),
    evaluation_of_classification(Authority, S).

% Paragraph 4: Provider shall ensure all necessary action to bring into compliance; fines if not
must_ensure_compliance(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    must_require_compliance_actions(Authority, P, S, _Period).

subject_to_fines(P, failure_to_comply_within_period(S, Period)) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    must_require_compliance_actions(Authority, P, S, Period),
    \+ adequate_corrective_action_taken(P, S).

% Paragraph 5: Provider shall ensure all appropriate corrective action for all AI systems made available on Union market
must_ensure_corrective_action_all_systems(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    all_ai_systems_made_available_on_union_market(P, S).

% Paragraph 6: Where provider does not take adequate corrective action, Article 79(5)-(9) shall apply
art_79_par_5_to_9_applies(P, S) :-
    provider(P),
    ai_system(S),
    high_risk_ai_system(S),
    must_carry_out_evaluation(Authority, S),
    found_high_risk_in_evaluation(Authority, S),
    must_require_compliance_actions(Authority, P, S, Period),
    \+ adequate_corrective_action_taken(P, S).

% Paragraph 7: Fines for misclassification to circumvent requirements
subject_to_fines(P, misclassification_to_circumvent(S)) :-
    provider(P),
    ai_system(S),
    must_carry_out_evaluation(Authority, S),
    misclassified_to_circumvent_requirements(P, S).

% Paragraph 8: Market surveillance authorities may perform appropriate checks
permitted_checks(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_non_high_risk_by_provider(_P, S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_80').
provenance(classified_non_high_risk_by_provider/2, 'celex:32024R1689/oj#art_80').
provenance(sufficient_reason_to_consider_high_risk/2, 'celex:32024R1689/oj#art_80').
provenance(evaluation_of_classification/2, 'celex:32024R1689/oj#art_80').
provenance(found_high_risk_in_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(use_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent_requirements/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(adequate_corrective_action_taken/2, 'celex:32024R1689/oj#art_80').
provenance(all_ai_systems_made_available_on_union_market/2, 'celex:32024R1689/oj#art_80').
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_compliance_actions/4, 'celex:32024R1689/oj#art_80').
provenance(must_inform_commission_and_member_states/3, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action_all_systems/2, 'celex:32024R1689/oj#art_80').
provenance(art_79_par_5_to_9_applies/2, 'celex:32024R1689/oj#art_80').
provenance(permitted_checks/2, 'celex:32024R1689/oj#art_80').

% References
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_2').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_1').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_6').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_7').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_9').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
