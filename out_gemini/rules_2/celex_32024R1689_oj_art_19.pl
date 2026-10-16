% unit       : celex:32024R1689/oj#art_19
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 0f2572a54d8a70004ffa8312da33d5b9f2fee58cc54f96ca38f1086fe949fd51
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 88dbdfbb00d8001b41dbcc0fd2960c629dbf7f4134097d368ff0263a7bd57263
% cached     : False
% title      : Automatically generated logs
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_19').
:- pred provider_of/2, gloss('entity is the provider of an AI system'), source('celex:32024R1689/oj#art_19').
:- pred subject_to_union_financial_services_governance/1, gloss('provider is a financial institution subject to governance requirements under Union financial services law'), source('celex:32024R1689/oj#art_19').
:- pred must_keep/2, gloss('actor must keep specified records or logs'), source('celex:32024R1689/oj#art_19').
:- pred must_maintain/2, gloss('actor must maintain specified records or logs'), source('celex:32024R1689/oj#art_19').

% Article 19(1): Providers of high-risk AI systems shall keep the automatically
% generated logs referred to in Article 12(1), to the extent such logs are under their control.
must_keep(Provider, logs(System, period(months(6)))) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System),
    control_of_logs(Provider, System).

% Article 19(2): Providers that are financial institutions subject to internal governance
% under Union financial services law shall maintain the automatically generated logs as part
% of the documentation kept under that law.
must_maintain(Provider, logs(System, documentation(union_financial_services_law))) :-
    provider(Provider),
    high_risk_ai_system(System),
    provider_of(Provider, System),
    subject_to_union_financial_services_governance(Provider).

% Provenance facts
provenance(must_keep/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_19').

% Cross-references
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').
