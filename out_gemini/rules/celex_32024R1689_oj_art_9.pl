% unit       : celex:32024R1689/oj#art_9
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 9040a8a6da09b218384adde95530688f57b24ba05dd04e0d4d05c1e7040fa5f2
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : db0bce000485760ddcb9fd7402397f606e2070b84f45df58bbcdbf24ffa041f8
% cached     : False
% title      : Risk management system
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_9').
:- pred risk_management_system/1, gloss('systematic iterative process managing risks of an AI system'), source('celex:32024R1689/oj#art_9').
:- pred required_risk_management_system/1, gloss('requirement to establish, implement, document and maintain a risk management system'), source('celex:32024R1689/oj#art_9').
:- pred required_testing/1, gloss('requirement that high-risk AI system be tested before market placement or service'), source('celex:32024R1689/oj#art_9').
:- pred permitted_testing_in_real_world_conditions/1, gloss('testing procedures permitted in real-world conditions under art 60'), source('celex:32024R1689/oj#art_9').
:- pred must_consider/2, gloss('actor obliged to consider specified impacts or aspects'), source('celex:32024R1689/oj#art_9').
:- pred permitted_combination/2, gloss('actor permitted to combine risk management processes across Union law'), source('celex:32024R1689/oj#art_9').

% Article 9(1): Risk management system required for high-risk AI systems
required_risk_management_system(S) :-
    high_risk_ai_system(S).

% Article 9(6) & 9(8): Testing required prior to placing on market or putting into service
required_testing(S) :-
    high_risk_ai_system(S).

% Article 9(7): Testing in real-world conditions permitted under Art 60
permitted_testing_in_real_world_conditions(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).

% Article 9(9): Providers must consider adverse impact on minors and vulnerable groups
must_consider(Provider, adverse_impact(S, vulnerable_groups)) :-
    provider(Provider),
    high_risk_ai_system(S).

% Article 9(10): Combination with internal risk management under other Union law permitted
permitted_combination(Provider, risk_management(S, union_law)) :-
    provider(Provider),
    high_risk_ai_system(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(required_testing/1, 'celex:32024R1689/oj#art_9').
provenance(permitted_testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(must_consider/2, 'celex:32024R1689/oj#art_9').
provenance(permitted_combination/2, 'celex:32024R1689/oj#art_9').

% References
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_1').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_3').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_4').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_5').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_6').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_7').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_8').
references('celex:32024R1689/oj#art_9', 'celex:32024R1689/oj#art_9/par_9').
