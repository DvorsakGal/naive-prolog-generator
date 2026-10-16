% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 03406eba926c79f689a9401968514c31456fe109be62e7c15c39b21410223e19
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred reason_to_consider_high_risk/2, gloss('authority has sufficient reason to consider a system classified as non-high-risk is high-risk'), source('celex:32024R1689/oj#art_80').
:- pred high_risk_evaluation_finding/2, gloss('evaluation establishes that the system is high-risk'), source('celex:32024R1689/oj#art_80').
:- pred system_use_not_restricted_to_national_territory/1, gloss('use of the system is not restricted to national territory'), source('celex:32024R1689/oj#art_80').
:- pred brings_into_compliance/2, gloss('provider brings system into compliance within prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred takes_adequate_corrective_action/2, gloss('provider takes adequate corrective action within prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred intentional_misclassification_to_circumvent/2, gloss('provider misclassified system as non-high-risk to circumvent Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_80').
:- pred subject_to_fines/2, gloss('provider is subject to fines for non-compliance or circumvention'), source('celex:32024R1689/oj#art_80').
:- pred article_79_paragraphs_5_to_9_apply/1, gloss('safeguard procedure under Article 79(5)-(9) applies to system'), source('celex:32024R1689/oj#art_80').
:- pred permitted_perform_checks/2, gloss('authority is permitted to perform checks to monitor classification'), source('celex:32024R1689/oj#art_80').

% Paragraph 1: Duty of market surveillance authority to evaluate classification
must_evaluate(Authority, classification(System)) :-
    market_surveillance_authority(Authority),
    ai_system(System),
    reason_to_consider_high_risk(Authority, System).

% Paragraph 2: Duty to require provider compliance and corrective action
must_require(Authority, compliance_and_corrective_action(Provider, System)) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    high_risk_evaluation_finding(Authority, System).

% Paragraph 3: Duty to inform Commission and other Member States if not restricted to national territory
must_inform(Authority, evaluation_results_and_actions(System)) :-
    market_surveillance_authority(Authority),
    high_risk_evaluation_finding(Authority, System),
    system_use_not_restricted_to_national_territory(System).

% Paragraph 4: Provider must bring system into compliance; otherwise subject to fines
must_bring_into_compliance(Provider, System) :-
    provider(Provider),
    high_risk_evaluation_finding(_Authority, System).

subject_to_fines(Provider, non_compliance(System)) :-
    provider(Provider),
    high_risk_evaluation_finding(Authority, System),
    must_require(Authority, compliance_and_corrective_action(Provider, System)),
    \+ brings_into_compliance(Provider, System).

% Paragraph 5: Provider must take appropriate corrective action
must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_evaluation_finding(_Authority, System),
    making_available_on_market(System).

% Paragraph 6: If provider does not take adequate corrective action, Article 79(5)-(9) applies
article_79_paragraphs_5_to_9_apply(System) :-
    provider(Provider),
    high_risk_evaluation_finding(Authority, System),
    must_require(Authority, compliance_and_corrective_action(Provider, System)),
    \+ takes_adequate_corrective_action(Provider, System).

% Paragraph 7: Intentional misclassification to circumvent requirements leads to fines
subject_to_fines(Provider, circumvention(System)) :-
    provider(Provider),
    intentional_misclassification_to_circumvent(Provider, System).

% Paragraph 8: Power to perform checks
permitted_perform_checks(Authority, System) :-
    market_surveillance_authority(Authority),
    ai_system(System).

provenance(must_evaluate/2, 'celex:32024R1689/oj#art_80').
provenance(must_require/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_bring_into_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(article_79_paragraphs_5_to_9_apply/1, 'celex:32024R1689/oj#art_80').
provenance(permitted_perform_checks/2, 'celex:32024R1689/oj#art_80').

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
