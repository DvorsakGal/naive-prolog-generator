% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 550444dda418e8313c61d2db7386123fd52592c954737bf5475d39193c4680dd
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred sufficient_reason_to_consider_applies/1, gloss('authority has sufficient reason to consider system high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred non_high_risk_classified_by_provider_applies/1, gloss('system classified by provider as non‑high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_finds_high_risk_applies/1, gloss('evaluation finds system to be high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred use_not_restricted_to_national_territory_applies/1, gloss('use of system is not restricted to national territory'), source('celex:32024R1689/oj#art_80').
:- pred non_compliance_within_period_applies/1, gloss('provider has not complied within prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred inadequate_corrective_action_within_period_applies/1, gloss('provider has not taken adequate corrective action within period'), source('celex:32024R1689/oj#art_80').
:- pred misclassification_to_circumvent_applies/1, gloss('system was misclassified to circumvent requirements'), source('celex:32024R1689/oj#art_80').
:- pred exercising_power_to_monitor_art80_applies/1, gloss('authority exercising power to monitor application of art 80'), source('celex:32024R1689/oj#art_80').
:- pred art11_applies/1, gloss('action in accordance with art 11 of Regulation 2020/1020'), source('celex:32024R1689/oj#art_80').
:- pred eu_database_info_applies/1, gloss('taking into account information stored in EU database referred to in art 71'), source('celex:32024R1689/oj#art_80').

must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    sufficient_reason_to_consider_applies(S),
    non_high_risk_classified_by_provider_applies(S).

must_require_provider_to_take_actions(Authority, compliance_actions(P, S)) :-
    market_surveillance_authority(Authority),
    evaluation_finds_high_risk_applies(S),
    provider(P).

must_inform(Authority, evaluation_results(S)) :-
    market_surveillance_authority(Authority),
    use_not_restricted_to_national_territory_applies(S).

must_ensure_compliance(Provider, S) :-
    provider(Provider),
    non_high_risk_classified_by_provider_applies(S).

must_face_fine(Provider, fine(S)) :-
    provider(Provider),
    non_compliance_within_period_applies(S).

must_ensure_corrective_action(Provider, S) :-
    provider(Provider),
    making_available_on_market(S).

art79_par5_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).

art79_par6_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).

art79_par7_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).

art79_par8_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).

art79_par9_applies(S) :-
    provider(P),
    provider(P),
    inadequate_corrective_action_within_period_applies(S).

must_face_fine(Provider, fine(S)) :-
    provider(Provider),
    misclassification_to_circumvent_applies(S).

permitted_perform_checks(Authority) :-
    market_surveillance_authority(Authority),
    exercising_power_to_monitor_art80_applies(Authority),
    art11_applies(Authority),
    eu_database_info_applies(Authority).

provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_provider_to_take_actions/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_face_fine/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(art79_par5_applies/1, 'celex:32024R1689/oj#art_80').
provenance(art79_par6_applies/1, 'celex:32024R1689/oj#art_80').
provenance(art79_par7_applies/1, 'celex:32024R1689/oj#art_80').
provenance(art79_par8_applies/1, 'celex:32024R1689/oj#art_80').
provenance(art79_par9_applies/1, 'celex:32024R1689/oj#art_80').
provenance(permitted_perform_checks/1, 'celex:32024R1689/oj#art_80').

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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
