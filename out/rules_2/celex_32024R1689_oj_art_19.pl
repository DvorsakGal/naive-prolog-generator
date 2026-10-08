% unit       : celex:32024R1689/oj#art_19
% title      : Automatically generated logs
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 0f2572a54d8a70004ffa8312da33d5b9f2fee58cc54f96ca38f1086fe949fd51
% model      : gpt-oss:120b-cloud
% prompt sha : 236c3a21d0dbf925f82395f909916caaacb1463dfa315c8d07010b0164453350
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('art_19').
:- pred log/1, gloss('automatically generated log of a high‑risk AI system'), source('art_19').
:- pred logs_under_control/2, gloss('logs are under the control of the provider'), source('art_19').
:- pred retention_at_least_six_months/2, gloss('log retention period is at least six months'), source('art_19').
:- pred overridden_by_law/2, gloss('retention period is overridden by applicable Union or national law'), source('art_19').
:- pred financial_institution/1, gloss('provider that is a financial institution subject to Union financial services law'), source('art_19').

required_keep_logs(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System).

provenance(required_keep_logs/2, 'celex:32024R1689/oj#art_19').

required_log_retention_minimum(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System),
    retention_at_least_six_months(Provider, System),
    \+ overridden_by_law(Provider, System).

provenance(required_log_retention_minimum/2, 'celex:32024R1689/oj#art_19').

required_maintain_logs_financial(Provider, System) :-
    provider(Provider),
    financial_institution(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System).

provenance(required_maintain_logs_financial/2, 'celex:32024R1689/oj#art_19').

references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').
