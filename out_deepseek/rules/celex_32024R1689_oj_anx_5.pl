% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ac500d31f1c7cb6f82030b2a221b61b26e9d71989acdcfb561b7b7a7fcdd5ae7
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity document'), source('celex:32024R1689/oj#anx_5').
:- pred contains_information/2, gloss('declaration contains required information item'), source('celex:32024R1689/oj#anx_5').

must_contain(D, ai_system_identification) :-
    eu_declaration_of_conformity(D).

must_contain(D, provider_identification) :-
    eu_declaration_of_conformity(D).

must_contain(D, sole_responsibility_statement) :-
    eu_declaration_of_conformity(D).

must_contain(D, conformity_statement) :-
    eu_declaration_of_conformity(D).

must_contain(D, data_protection_statement) :-
    eu_declaration_of_conformity(D),
    involves_processing_of_personal_data(D).

must_contain(D, harmonised_standards_references) :-
    eu_declaration_of_conformity(D).

must_contain(D, notified_body_details) :-
    eu_declaration_of_conformity(D),
    applicable_notified_body(D, _Body).

must_contain(D, issue_details) :-
    eu_declaration_of_conformity(D).

provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_information/2, 'celex:32024R1689/oj#anx_5').
provenance(must_contain/2, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
