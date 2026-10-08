% unit       : celex:32024R1689/oj#art_80
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : gpt-oss:120b-cloud
% prompt sha : 263fdcd2a17e0682cc1c0e69231bd1c8500e0e53bbe4d5dda181f175920aae14
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred non_high_risk_classified_by_provider/1, gloss('AI system classified by provider as non‑high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred reason_to_consider_high_risk_applies/2, gloss('MSA has sufficient reason to consider the system high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred required_evaluation/2, gloss('MSA must carry out an evaluation of the AI system'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_finds_high_risk_applies/2, gloss('Evaluation finds the AI system to be high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred provider_of_system/2, gloss('Provider that placed the AI system on the market'), source('celex:32024R1689/oj#art_80').
:- pred must_require_provider_to_comply/3, gloss('MSA shall require the provider to take all necessary actions to bring the system into compliance'), source('celex:32024R1689/oj#art_80').
:- pred use_not_restricted_to_national_territory_applies/2, gloss('Use of the AI system is not restricted to the national territory'), source('celex:32024R1689/oj#art_80').
:- pred must_inform/2, gloss('MSA shall inform the Commission and other Member States'), source('celex:32024R1689/oj#art_80').
:- pred must_ensure_compliance/2, gloss('Provider shall ensure the AI system is brought into compliance'), source('celex:32024R1689/oj#art_80').
:- pred not_compliant_within_period/2, gloss('Provider has not brought the AI system into compliance within the prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred subject_to_fine/2, gloss('Provider is subject to fines'), source('celex:32024R1689/oj#art_80').
:- pred must_ensure_corrective_action/2, gloss('Provider shall ensure appropriate corrective action is taken'), source('celex:32024R1689/oj#art_80').
:- pred not_adequate_corrective_action_within_period/2, gloss('Provider has not taken adequate corrective action within the prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred must_apply_art_79_par_5_to_9/2, gloss('Articles 79 paragraphs 5‑9 shall apply'), source('celex:32024R1689/oj#art_80').
:- pred misclassification_to_circumvent_requirements/2, gloss('AI system was misclassified to circumvent requirements'), source('celex:32024R1689/oj#art_80').
:- pred permitted_perform_appropriate_checks/1, gloss('MSA may perform appropriate checks'), source('celex:32024R1689/oj#art_80').

required_evaluation(Authority, System) :-
    market_surveillance_authority(Authority),
    non_high_risk_classified_by_provider(System),
    reason_to_consider_high_risk_applies(Authority, System).

must_require_provider_to_comply(Authority, Provider, System) :-
    evaluation_finds_high_risk_applies(Authority, System),
    provider_of_system(Provider, System),
    market_surveillance_authority(Authority).

must_inform(Authority, System) :-
    use_not_restricted_to_national_territory_applies(Authority, System),
    market_surveillance_authority(Authority).

must_ensure_compliance(Provider, System) :-
    provider(Provider),
    ai_system(System),
    provider_of_system(Provider, System).

subject_to_fine(Provider, System) :-
    provider(Provider),
    ai_system(System),
    not_compliant_within_period(Provider, System).

must_ensure_corrective_action(Provider, System) :-
    provider(Provider),
    ai_system(System),
    provider_of_system(Provider, System).

must_apply_art_79_par_5_to_9(Provider, System) :-
    not_adequate_corrective_action_within_period(Provider, System),
    provider(Provider),
    ai_system(System).

subject_to_fine(Provider, System) :-
    misclassification_to_circumvent_requirements(Authority, System),
    provider_of_system(Provider, System),
    market_surveillance_authority(Authority).

permitted_perform_appropriate_checks(Authority) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).

provenance(required_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_provider_to_comply/3, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fine/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(must_apply_art_79_par_5_to_9/2, 'celex:32024R1689/oj#art_80').
provenance(permitted_perform_appropriate_checks/1, 'celex:32024R1689/oj#art_80').

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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
