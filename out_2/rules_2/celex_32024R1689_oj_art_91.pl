% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 862d53c386b444ebe436a722c09bef728c7de461e01ca633907730f0440a7d21
% cached     : False
% title      : Power to request documentation and information
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_91').
:- pred request_information/2, gloss('Commission may request information from provider of a general‑purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred initiate_structured_dialogue/2, gloss('AI Office may initiate a structured dialogue with provider of a general‑purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred must_supply/2, gloss('Provider or its authorised representative shall supply the information requested'), source('celex:32024R1689/oj#art_91').
:- pred represents/2, gloss('Person authorised to represent a provider'), source('celex:32024R1689/oj#art_91').

request_information(Commission, Provider) :-
    commission(Commission),
    general_purpose_ai_model_provider(Provider).

request_information(Commission, Provider) :-
    commission(Commission),
    general_purpose_ai_model_provider(Provider),
    scientific_panel_request_substantiated,
    access_necessary_and_proportionate.

initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    general_purpose_ai_model_provider(Provider).

must_supply(Provider, information_requested) :-
    general_purpose_ai_model_provider(Provider).

must_supply(Representative, information_requested) :-
    authorised_representative(Representative),
    represents(Representative, Provider),
    general_purpose_ai_model_provider(Provider).

provenance(commission/1, 'celex:32024R1689/oj#art_91').
provenance(request_information/2, 'celex:32024R1689/oj#art_91').
provenance(initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(must_supply/2, 'celex:32024R1689/oj#art_91').
provenance(represents/2, 'celex:32024R1689/oj#art_91').

references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
