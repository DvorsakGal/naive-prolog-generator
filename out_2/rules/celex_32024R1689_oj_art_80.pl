% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8c915e9e5551d90ac8f07d6f7d1b42b2015da66917b7ad430843212e444fe533
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred sufficient_reason_to_consider_high_risk/2, gloss('authority has sufficient reason to consider system high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred non_high_risk_classified_by_provider_applies/1, gloss('system classified by provider as non‑high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_finds_high_risk/2, gloss('authority finds system to be high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred relevant_provider_of/2, gloss('provider responsible for the AI system'), source('celex:32024R1689/oj#art_80').
:- pred must_carry_out_evaluation/2, gloss('authority must carry out evaluation of system'), source('celex:32024R1689/oj#art_80').
:- pred must_require/2, gloss('authority must require provider to take action'), source('celex:32024R1689/oj#art_80').
:- pred must_inform/2, gloss('authority must inform Commission and other Member States'), source('celex:32024R1689/oj#art_80').
:- pred use_not_restricted_to_national_territory/2, gloss('use of system is not limited to national territory'), source('celex:32024R1689/oj#art_80').
:- pred must_ensure/2, gloss('provider must ensure compliance or corrective action'), source('celex:32024R1689/oj#art_80').
:- pred not_compliant_within_period/2, gloss('provider has not complied within the prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred must_face_fine/2, gloss('provider must face fine'), source('celex:32024R1689/oj#art_80').
:- pred made_available_on_union_market/2, gloss('provider has made system available on the Union market'), source('celex:32024R1689/oj#art_80').
:- pred misclassification_to_circumvent_requirements/3, gloss('authority finds misclassification intended to circumvent requirements'), source('celex:32024R1689/oj#art_80').
:- pred permitted_appropriate_checks/1, gloss('authority may perform appropriate checks'), source('celex:32024R1689/oj#art_80').

must_carry_out_evaluation(Authority, System) :-
    market_surveillance_authority(Authority),
    sufficient_reason_to_consider_high_risk(Authority, System),
    non_high_risk_classified_by_provider_applies(System),
    ai_system(System).

must_require(Authority, take_all_necessary_actions(Provider, System)) :-
    market_surveillance_authority(Authority),
    evaluation_finds_high_risk(Authority, System),
    provider(Provider),
    relevant_provider_of(Provider, System).

must_require(Authority, take_appropriate_corrective_action(Provider, System)) :-
    market_surveillance_authority(Authority),
    evaluation_finds_high_risk(Authority, System),
    provider(Provider),
    relevant_provider_of(Provider, System).

must_inform(Authority, inform_commission_and_member_states(System)) :-
    market_surveillance_authority(Authority),
    use_not_restricted_to_national_territory(Authority, System).

must_ensure(Provider, bring_into_compliance(System)) :-
    provider(Provider),
    ai_system(System),
    relevant_provider_of(Provider, System).

must_face_fine(Provider, fine(System)) :-
    provider(Provider),
    ai_system(System),
    relevant_provider_of(Provider, System),
    not_compliant_within_period(Provider, System).

must_ensure(Provider, appropriate_corrective_action(System)) :-
    provider(Provider),
    ai_system(System),
    made_available_on_union_market(Provider, System).

must_face_fine(Provider, fine(System)) :-
    provider(Provider),
    ai_system(System),
    misclassification_to_circumvent_requirements(_Authority, Provider, System).

permitted_appropriate_checks(Authority) :-
    market_surveillance_authority(Authority).

provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(must_require/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_80').
provenance(must_face_fine/2, 'celex:32024R1689/oj#art_80').
provenance(permitted_appropriate_checks/1, 'celex:32024R1689/oj#art_80').

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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
