% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b91188dd7219a670672ca6859b5111b90de5db5689a643d1b54420dbc9279c4b
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity/1, gloss('document declaring conformity of an AI system'), source('celex:32024R1689/oj#anx_5').
:- pred must_contain_information(Declaration, Information), gloss('declaration must include specific information element'), source('celex:32024R1689/oj#anx_5').

eu_declaration_of_conformity(D) :-
    must_contain_information(D, ai_system_identification(_)),
    must_contain_information(D, provider_details(_)),
    must_contain_information(D, sole_responsibility_statement),
    must_contain_information(D, conformity_statement),
    must_contain_information(D, harmonised_standard_reference(_)),
    must_contain_information(D, place_and_date_of_issue(_)),
    must_contain_information(D, signatory_details(_)).

must_contain_information(D, personal_data_compliance_statement) :-
    eu_declaration_of_conformity(D),
    involves_personal_data_processing(D).

must_contain_information(D, notified_body_details(_)) :-
    eu_declaration_of_conformity(D),
    notified_body_involved(D).

provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(must_contain_information/2, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
