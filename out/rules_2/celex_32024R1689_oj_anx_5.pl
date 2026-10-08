% unit       : celex:32024R1689/oj#anx_5
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : gpt-oss:120b-cloud
% prompt sha : dea85a3151204c99e42fe4b763d012fd68a2e24d2c7a9313564f51e64f2b9701
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred must_contain/2, gloss('obligation to include specific information in the EU declaration of conformity'), source('celex:32024R1689/oj#anx_5').

must_contain(Provider, ai_system_name_and_type) :-
    provider(Provider).

must_contain(Provider, provider_name_and_address) :-
    provider(Provider).

must_contain(Provider, statement_provider_responsibility) :-
    provider(Provider).

must_contain(Provider, statement_conformity_with_regulation) :-
    provider(Provider).

must_contain(Provider, statement_personal_data_compliance) :-
    provider(Provider).

must_contain(Provider, references_harmonised_standards_or_common_specification) :-
    provider(Provider).

must_contain(Provider, notified_body_details) :-
    provider(Provider).

must_contain(Provider, place_date_and_signatory_information) :-
    provider(Provider).

provenance(must_contain/2, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
