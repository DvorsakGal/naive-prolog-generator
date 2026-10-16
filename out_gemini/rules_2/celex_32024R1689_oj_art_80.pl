% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : ae711d765c797038451b75bb718ea8e2a65e75f9089b222ac9afa48d9b0a7075
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred classified_non_high_risk/2, gloss('AI system classified by provider as non-high-risk'), source('celex:32024R1689/oj#art_80').
:- pred reason_to_consider_high_risk/2, gloss('market surveillance authority has sufficient reason to consider AI system is high-risk'), source('celex:32024R1689/oj#art_80').
:- pred evaluated_as_high_risk/2, gloss('market surveillance authority establishes AI system is high-risk'), source('celex:32024R1689/oj#art_80').
:- pred prescribed_compliance_period/2, gloss('period prescribed by market surveillance authority to achieve compliance'), source('celex:32024R1689/oj#art_80').
:- pred use_not_restricted_to_national_territory/1, gloss('use of AI system is not restricted to national territory of authority'), source('celex:32024R1689/oj#art_80').
:- pred brought_into_compliance/2, gloss('provider brings AI system into compliance within prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred subject_to_fines/2, gloss('provider is subject to fines under Article 99'), source('celex:32024R1689/oj#art_80').
:- pred misclassified_to_circumvent/2, gloss('provider misclassified AI system to circumvent requirements'), source('celex:32024R1689/oj#art_80').
:- pred procedure_article_79_applies/1, gloss('procedure under Article 79(5)-(9) applies to AI system'), source('celex:32024R1689/oj#art_80').
:- pred member_states_and_commission/1, gloss('the Commission and the other Member States'), source('celex:32024R1689/oj#art_80').
:- pred permitted_perform_checks/2, gloss('market surveillance authority is permitted to perform appropriate checks'), source('celex:32024R1689/oj#art_80').

% Paragraph 1: MSA must carry out evaluation
must_comply(Auth, evaluate_classification(S)) :-
    market_surveillance_authority(Auth),
    classified_non_high_risk(Provider, S),
    provider(Provider),
    reason_to_consider_high_risk(Auth, S).

% Paragraph 2: MSA must require provider to bring into compliance and take corrective action
must_comply(Auth, require_compliance_and_corrective_action(Provider, S, Period)) :-
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    provider(Provider),
    prescribed_compliance_period(S, Period).

% Paragraph 3: Inform Commission and other Member States if use not restricted to territory
must_report(Auth, evaluation_results_and_actions(S, Recipients)) :-
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    use_not_restricted_to_national_territory(S),
    member_states_and_commission(Recipients).

% Paragraph 4: Provider must bring system into compliance
must_comply(Provider, bring_into_compliance(S)) :-
    provider(Provider),
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S).

subject_to_fines(Provider, non_compliance_within_period(S)) :-
    provider(Provider),
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    \+ brought_into_compliance(Provider, S).

% Paragraph 5: Provider must take appropriate corrective action for all systems made available
must_comply(Provider, take_corrective_action(S)) :-
    provider(Provider),
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    making_available_on_market(S).

% Paragraph 6: If provider does not take adequate corrective action, Art 79(5)-(9) applies
procedure_article_79_applies(S) :-
    market_surveillance_authority(Auth),
    evaluated_as_high_risk(Auth, S),
    provider(Provider),
    \+ adequate_corrective_action_taken(Provider, S).

% Paragraph 7: Misclassification to circumvent requirements leads to fines
subject_to_fines(Provider, misclassification_to_circumvent(S)) :-
    provider(Provider),
    market_surveillance_authority(Auth),
    misclassified_to_circumvent(Provider, S).

% Paragraph 8: MSA may perform checks
permitted_perform_checks(Auth, S) :-
    market_surveillance_authority(Auth),
    ai_system(S).

% Provenance facts
provenance(must_comply/2, 'celex:32024R1689/oj#art_80').
provenance(must_report/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(procedure_article_79_applies/1, 'celex:32024R1689/oj#art_80').
provenance(permitted_perform_checks/2, 'celex:32024R1689/oj#art_80').

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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
