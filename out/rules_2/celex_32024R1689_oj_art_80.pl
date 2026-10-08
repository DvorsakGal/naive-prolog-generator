% unit       : celex:32024R1689/oj#art_80
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : gpt-oss:120b-cloud
% prompt sha : 1d812ba62f8475bcf9001140cd10868ef333bc35e1ea6661632f92874e622337
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred non_high_risk_classified_by_provider/1, gloss('AI system classified by the provider as non‑high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred sufficient_reason_to_consider_high_risk/2, gloss('Authority has sufficient reason to consider the AI system high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_finds_high_risk/2, gloss('Authority finds during evaluation that the AI system is high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_80').
:- pred responsible_for_ai/2, gloss('Provider is responsible for the AI system'), source('celex:32024R1689/oj#art_80').
:- pred provider_of_ai/2, gloss('Provider is the entity that placed the AI system on the market'), source('celex:32024R1689/oj#art_80').
:- pred non_compliance/2, gloss('Provider has not complied with the required actions'), source('celex:32024R1689/oj#art_80').
:- pred made_available_on_union_market/2, gloss('Provider has made the AI system available on the Union market'), source('celex:32024R1689/oj#art_80').
:- pred not_adequate_corrective_action_within_period/2, gloss('Provider has not taken adequate corrective action within the prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred misclassification_to_circumvent_requirements/2, gloss('AI system was misclassified to evade requirements'), source('celex:32024R1689/oj#art_80').

required_evaluation(Authority, AI) :-
    market_surveillance_authority(Authority),
    non_high_risk_classified_by_provider(AI),
    sufficient_reason_to_consider_high_risk(Authority, AI).

required_compliance_action(Provider, AI) :-
    provider(Provider),
    responsible_for_ai(Provider, AI),
    evaluation_finds_high_risk(Authority, AI),
    market_surveillance_authority(Authority).

required_information_sharing(Authority, AI) :-
    market_surveillance_authority(Authority),
    use_not_restricted_to_national_territory(AI).

must_ensure_compliance(Provider, AI) :-
    provider(Provider),
    provider_of_ai(Provider, AI),
    high_risk_ai_system(AI).

required_fine(Provider) :-
    provider(Provider),
    non_compliance(Provider, _AI).

must_ensure_corrective_action(Provider, AI) :-
    provider(Provider),
    made_available_on_union_market(Provider, AI).

required_application_of_art79(Provider, AI) :-
    provider(Provider),
    not_adequate_corrective_action_within_period(Provider, AI).

required_fine(Provider) :-
    provider(Provider),
    misclassification_to_circumvent_requirements(Provider, _AI).

permitted_perform_check(Authority) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(Authority).

provenance(required_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(required_compliance_action/2, 'celex:32024R1689/oj#art_80').
provenance(required_information_sharing/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(required_fine/1, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(required_application_of_art79/2, 'celex:32024R1689/oj#art_80').
provenance(permitted_perform_check/1, 'celex:32024R1689/oj#art_80').

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
