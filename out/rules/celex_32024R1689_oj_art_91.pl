% unit       : celex:32024R1689/oj#art_91
% title      : Power to request documentation and information
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : gpt-oss:120b-cloud
% prompt sha : 9b66976508b94186b10725917b37d2796d1335a0eb3934efa441da0525d5b0e9
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_91').
:- pred scientific_panel/1, gloss('Scientific panel established under the regulation'), source('celex:32024R1689/oj#art_91').
:- pred necessary_and_proportionate_access/1, gloss('condition that access to information is necessary and proportionate'), source('celex:32024R1689/oj#art_91').

permitted_request_documentation(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model).

permitted_initiate_structured_dialogue(AIOffice, Provider, Model) :-
    ai_office(AIOffice),
    provider(Provider),
    general_purpose_ai_model(Model).

permitted_request_information(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model),
    scientific_panel(Panel),
    necessary_and_proportionate_access(Panel).

must_supply_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_supply_information(Representative, Model) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model).

provenance(permitted_request_documentation/3, 'celex:32024R1689/oj#art_91').
provenance(permitted_initiate_structured_dialogue/3, 'celex:32024R1689/oj#art_91').
provenance(permitted_request_information/3, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').

references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
