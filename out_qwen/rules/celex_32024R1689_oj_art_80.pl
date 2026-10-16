% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dca2914a9abe0274e870b26cfcfd9ad201b1b648944de395d5c603d6847a98e5
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred classified_as_non_high_risk/1, gloss('AI system classified by provider as non-high-risk'), source('celex:32024R1689/oj#art_80').
:- pred sufficient_reason_to_consider_high_risk/1, gloss('market surveillance authority has sufficient reason to consider AI system is high-risk'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_of_classification/1, gloss('evaluation of AI system classification as high-risk'), source('celex:32024R1689/oj#art_80').
:- pred found_high_risk/1, gloss('AI system found to be high-risk during evaluation'), source('celex:32024R1689/oj#art_80').
:- pred use_not_restricted_to_national_territory/1, gloss('use of AI system is not restricted to national territory'), source('celex:32024R1689/oj#art_80').
:- pred misclassified_to_circumvent_requirements/1, gloss('AI system misclassified as non-high-risk to circumvent requirements'), source('celex:32024R1689/oj#art_80').
:- pred must_evaluate_classification/2, gloss('market surveillance authority must evaluate AI system classification'), source('celex:32024R1689/oj#art_80').
:- pred must_require_compliance_action/2, gloss('market surveillance authority must require provider to take compliance action'), source('celex:32024R1689/oj#art_80').
:- pred must_inform_commission_and_member_states/2, gloss('market surveillance authority must inform Commission and Member States'), source('celex:32024R1689/oj#art_80').
:- pred must_bring_into_compliance/2, gloss('provider must bring AI system into compliance'), source('celex:32024R1689/oj#art_80').
:- pred must_take_corrective_action/2, gloss('provider must take corrective action for AI systems on market'), source('celex:32024R1689/oj#art_80').

provenance(classified_as_non_high_risk/1, 'celex:32024R1689/oj#art_80').
provenance(sufficient_reason_to_consider_high_risk/1, 'celex:32024R1689/oj#art_80').
provenance(evaluation_of_classification/1, 'celex:32024R1689/oj#art_80').
provenance(found_high_risk/1, 'celex:32024R1689/oj#art_80').
provenance(use_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent_requirements/1, 'celex:32024R1689/oj#art_80').
provenance(must_evaluate_classification/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_compliance_action/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_80').
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_80').

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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').

must_evaluate_classification(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    classified_as_non_high_risk(S),
    sufficient_reason_to_consider_high_risk(S).

evaluation_of_classification(S) :-
    ai_system(S),
    classified_as_non_high_risk(S),
    sufficient_reason_to_consider_high_risk(S).

must_require_compliance_action(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    found_high_risk(S).

found_high_risk(S) :-
    ai_system(S),
    evaluation_of_classification(S).

must_inform_commission_and_member_states(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    found_high_risk(S),
    use_not_restricted_to_national_territory(S).

must_bring_into_compliance(P, S) :-
    provider(P),
    ai_system(S),
    found_high_risk(S).

must_take_corrective_action(P, S) :-
    provider(P),
    ai_system(S),
    found_high_risk(S),
    making_available_on_market(S).

misclassified_to_circumvent_requirements(S) :-
    ai_system(S),
    classified_as_non_high_risk(S),
    evaluation_of_classification(S).
