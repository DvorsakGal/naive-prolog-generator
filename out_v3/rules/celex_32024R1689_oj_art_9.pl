% unit      : celex:32024R1689/oj#art_9
% source    : celex:32024R1689%2Foj#art_9.xml
% model     : gpt-oss:120b-cloud
% prompt sha: 560152f67d2c7a8160b086d8b20e1e536b40e488d4f987e437ce44ac4ba3ddb1
% signature: 00ee7559e3c3d18f1bb6c455d54ec6ce4a9521a52c53862ea62ebe810e003bb1
% cached    : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('celex:32024R1689/oj#art_9').

:- pred required_risk_management_system/1, gloss('obligation to establish, implement, document and maintain a risk management system for the AI system'), source('celex:32024R1689/oj#art_9').

:- pred required_testing_for_risk_management/1, gloss('obligation to test the high‑risk AI system in order to identify appropriate risk‑management measures'), source('celex:32024R1689/oj#art_9').

:- pred required_testing_timing/1, gloss('obligation that testing be carried out throughout development and before market placement or putting into service'), source('celex:32024R1689/oj#art_9').

:- pred required_consideration_of_vulnerable_groups/2, gloss('obligation for the provider to consider adverse impact on persons under 18 and other vulnerable groups'), source('celex:32024R1689/oj#art_9').

% -----------------------------------------------------------------
% Obligations derived from Article 9
% -----------------------------------------------------------------

required_risk_management_system(S) :-
    high_risk_ai_system(S).

provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').

required_testing_for_risk_management(S) :-
    high_risk_ai_system(S).

provenance(required_testing_for_risk_management/1, 'celex:32024R1689/oj#art_9').

required_testing_timing(S) :-
    high_risk_ai_system(S).

provenance(required_testing_timing/1, 'celex:32024R1689/oj#art_9').

required_consideration_of_vulnerable_groups(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_purpose(S, _).

provenance(required_consideration_of_vulnerable_groups/2, 'celex:32024R1689/oj#art_9').

% -----------------------------------------------------------------
% References cited in this provision (deduplicated)
% -----------------------------------------------------------------
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').
