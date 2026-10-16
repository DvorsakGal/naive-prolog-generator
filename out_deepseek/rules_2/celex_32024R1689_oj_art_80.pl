% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : d1cb47363f245200db80b31e700371b954c00833276d5b06b301f647634a82b6
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_carry_out_evaluation/2, gloss('market surveillance authority must evaluate AI system classified as non-high-risk'), source('celex:32024R1689/oj#art_80/par_1').
:- pred must_require_compliance_and_corrective_action/3, gloss('authority must require provider to bring system into compliance and take corrective action'), source('celex:32024R1689/oj#art_80/par_2').
:- pred must_inform_commission_and_member_states_of_evaluation/3, gloss('authority must inform Commission and Member States of evaluation results and required actions'), source('celex:32024R1689/oj#art_80/par_3').
:- pred must_ensure_compliance/2, gloss('provider must ensure all necessary action to bring system into compliance'), source('celex:32024R1689/oj#art_80/par_4').
:- pred must_ensure_corrective_action/2, gloss('provider must ensure corrective action for all systems made available on Union market'), source('celex:32024R1689/oj#art_80/par_5').
:- pred must_apply_article_79_procedures/1, gloss('Article 79(5)-(9) procedures apply when provider fails to take adequate corrective action'), source('celex:32024R1689/oj#art_80/par_6').
:- pred misclassified_to_circumvent/1, gloss('AI system misclassified as non-high-risk to circumvent requirements'), source('celex:32024R1689/oj#art_80/par_7').
:- pred may_perform_checks/1, gloss('market surveillance authority may perform appropriate checks'), source('celex:32024R1689/oj#art_80/par_8').

% Paragraph 1
must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    provider(P),
    classified_as_non_high_risk(P, S),
    sufficient_reason_to_consider_high_risk(Authority, S).

sufficient_reason_to_consider_high_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S).

% Paragraph 2
must_require_compliance_and_corrective_action(Authority, Provider, S) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    ai_system(S),
    evaluation_finds_high_risk(Authority, S).

% Paragraph 3
must_inform_commission_and_member_states_of_evaluation(Authority, S, Actions) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_high_risk(Authority, S),
    use_not_restricted_to_national_territory(Authority, S),
    must_require_compliance_and_corrective_action(Authority, _, S).

use_not_restricted_to_national_territory(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S).

% Paragraph 4
must_ensure_compliance(Provider, S) :-
    provider(Provider),
    ai_system(S),
    evaluation_finds_high_risk(_, S).

% Paragraph 5
must_ensure_corrective_action(Provider, S) :-
    provider(Provider),
    ai_system(S),
    evaluation_finds_high_risk(_, S),
    made_available_on_union_market(Provider, S).

% Paragraph 6
must_apply_article_79_procedures(S) :-
    ai_system(S),
    provider(Provider),
    evaluation_finds_high_risk(_, S),
    \+ adequate_corrective_action_taken(Provider, S).

adequate_corrective_action_taken(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_ensure_corrective_action(Provider, S).

% Paragraph 7
misclassified_to_circumvent(S) :-
    ai_system(S),
    provider(Provider),
    classified_as_non_high_risk(Provider, S),
    evaluation_finds_high_risk(_, S),
    circumvention_intent(Provider, S).

circumvention_intent(Provider, S) :-
    provider(Provider),
    ai_system(S).

% Paragraph 8
may_perform_checks(Authority) :-
    market_surveillance_authority(Authority).

% Helper predicates
classified_as_non_high_risk(Provider, S) :-
    provider(Provider),
    ai_system(S),
    \+ high_risk_ai_system(S).

% Provenance
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80/par_1').
provenance(must_require_compliance_and_corrective_action/3, 'celex:32024R1689/oj#art_80/par_2').
provenance(must_inform_commission_and_member_states_of_evaluation/3, 'celex:32024R1689/oj#art_80/par_3').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80/par_4').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80/par_5').
provenance(must_apply_article_79_procedures/1, 'celex:32024R1689/oj#art_80/par_6').
provenance(misclassified_to_circumvent/1, 'celex:32024R1689/oj#art_80/par_7').
provenance(may_perform_checks/1, 'celex:32024R1689/oj#art_80/par_8').
provenance(sufficient_reason_to_consider_high_risk/2, 'celex:32024R1689/oj#art_80/par_1').
provenance(use_not_restricted_to_national_territory/2, 'celex:32024R1689/oj#art_80/par_3').
provenance(adequate_corrective_action_taken/2, 'celex:32024R1689/oj#art_80/par_6').
provenance(circumvention_intent/2, 'celex:32024R1689/oj#art_80/par_7').
provenance(classified_as_non_high_risk/2, 'celex:32024R1689/oj#art_80').

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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_1').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
