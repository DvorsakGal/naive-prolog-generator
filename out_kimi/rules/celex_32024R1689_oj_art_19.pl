% unit       : celex:32024R1689/oj#art_19
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 0f2572a54d8a70004ffa8312da33d5b9f2fee58cc54f96ca38f1086fe949fd51
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : fd20c67a17096b4fd86cb9a8c0eaef53f4bde9494c3c905cafa3c5e3dbc28a4d
% cached     : False
% title      : Automatically generated logs
:- pred must_keep_logs/2, gloss('provider shall keep automatically generated logs'), source('celex:32024R1689/oj#art_19').
:- pred logs_under_control/2, gloss('logs of high-risk AI system are under provider control'), source('celex:32024R1689/oj#art_19').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution'), source('celex:32024R1689/oj#art_19').
:- pred retention_period/2, gloss('period for which logs must be kept'), source('celex:32024R1689/oj#art_19').

must_keep_logs(Provider, logs(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    logs_referred_to_in_art_12_1(Provider, S),
    logs_under_control(Provider, S).

logs_referred_to_in_art_12_1(_Provider, S) :-
    high_risk_ai_system(S).

must_keep_logs(Provider, logs(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    financial_institution_provider(Provider),
    logs_referred_to_in_art_12_1(Provider, S).

retention_period(S, months(6)) :-
    high_risk_ai_system(S),
    \+ applicable_union_or_national_law_provides_otherwise(S).

retention_period(S, Period) :-
    high_risk_ai_system(S),
    applicable_union_or_national_law_provides_otherwise(S),
    law_retention_period(S, Period).

applicable_union_or_national_law_provides_otherwise(S) :-
    high_risk_ai_system(S),
    union_law_on_protection_of_personal_data_applies(S).

applicable_union_or_national_law_provides_otherwise(S) :-
    high_risk_ai_system(S),
    national_law_provides_otherwise(S).

provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_19').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_19').
provenance(retention_period/2, 'celex:32024R1689/oj#art_19').
provenance(applicable_union_or_national_law_provides_otherwise/1, 'celex:32024R1689/oj#art_19').
provenance(logs_referred_to_in_art_12_1/2, 'celex:32024R1689/oj#art_19').

references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').
