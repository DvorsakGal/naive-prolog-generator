% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5d42fe1fd56a446474d29e338b229c24d36846b76e4323e102328cbcad7fb0a5
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_carry_out_evaluation/2, gloss('market surveillance authority must evaluate AI system classification'), source('celex:32024R1689/oj#art_80').
:- pred must_require_compliance/2, gloss('market surveillance authority must require provider to bring AI system into compliance'), source('celex:32024R1689/oj#art_80').
:- pred must_inform/2, gloss('market surveillance authority must inform Commission and Member States'), source('celex:32024R1689/oj#art_80').
:- pred must_ensure_compliance/2, gloss('provider must ensure AI system brought into compliance'), source('celex:32024R1689/oj#art_80').
:- pred must_ensure_corrective_action/2, gloss('provider must ensure corrective action for all AI systems on market'), source('celex:32024R1689/oj#art_80').
:- pred subject_to_fines/2, gloss('provider subject to fines for non-compliance'), source('celex:32024R1689/oj#art_80').
:- pred subject_to_fines_misclassification/2, gloss('provider subject to fines for deliberate misclassification'), source('celex:32024R1689/oj#art_80').
:- pred may_perform_checks/2, gloss('market surveillance authority may perform checks'), source('celex:32024R1689/oj#art_80').
:- pred classified_non_high_risk/2, gloss('AI system classified by provider as non-high-risk'), source('celex:32024R1689/oj#art_80').
:- pred sufficient_reason/2, gloss('market surveillance authority has sufficient reason to consider misclassification'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_finds_high_risk/2, gloss('evaluation finds AI system is high-risk'), source('celex:32024R1689/oj#art_80').
:- pred use_not_restricted_to_national_territory/1, gloss('AI system use not restricted to national territory'), source('celex:32024R1689/oj#art_80').
:- pred provider_fails_compliance/2, gloss('provider fails to bring AI system into compliance within period'), source('celex:32024R1689/oj#art_80').
:- pred provider_fails_corrective_action/2, gloss('provider fails to take adequate corrective action within period'), source('celex:32024R1689/oj#art_80').
:- pred misclassified_to_circumvent/2, gloss('AI system misclassified as non-high-risk to circumvent requirements'), source('celex:32024R1689/oj#art_80').

% Paragraph 1
must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    classified_non_high_risk(S, _Provider),
    sufficient_reason(Authority, S).

% Paragraph 2
must_require_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_high_risk(Authority, S).

% Paragraph 3
must_inform(Authority, evaluation_results(S, Actions)) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    use_not_restricted_to_national_territory(S),
    evaluation_finds_high_risk(Authority, S),
    must_require_compliance(Authority, S).

% Paragraph 4
must_ensure_compliance(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_require_compliance(_Authority, S).

subject_to_fines(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_ensure_compliance(Provider, S),
    provider_fails_compliance(Provider, S).

% Paragraph 5
must_ensure_corrective_action(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_require_compliance(_Authority, S).

% Paragraph 6
% (Cross-reference to art_79 paras 5-9 applies when provider fails corrective action)
% We capture the condition; the referenced article's clauses handle the consequences.
provider_fails_corrective_action(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_ensure_corrective_action(Provider, S),
    \+ adequate_corrective_action_taken(Provider, S).

% Paragraph 7
subject_to_fines_misclassification(Provider, S) :-
    provider(Provider),
    ai_system(S),
    misclassified_to_circumvent(Provider, S).

% Paragraph 8
may_perform_checks(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S).

% Provenance
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(provider_fails_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines_misclassification/2, 'celex:32024R1689/oj#art_80').
provenance(may_perform_checks/2, 'celex:32024R1689/oj#art_80').

% References
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
