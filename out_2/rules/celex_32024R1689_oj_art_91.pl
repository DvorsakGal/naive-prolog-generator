% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : df9b7620b3dd5102d063892f89eea8e81f32dad6163adb892b61083652ead117
% cached     : False
% title      : Power to request documentation and information
:- pred general_purpose_ai_model_provider/1, gloss('provider of a general‑purpose AI model'), source('celex:32024R1689/oj#art_91').
general_purpose_ai_model_provider(P) :-
    provider(P).

:- pred request_information/2, gloss('actor may request information from provider'), source('celex:32024R1689/oj#art_91').
request_information(commission, P) :-
    general_purpose_ai_model_provider(P).

:- pred must_supply/2, gloss('obligation to supply requested information'), source('celex:32024R1689/oj#art_91').
must_supply(P, information_requested) :-
    general_purpose_ai_model_provider(P).

must_supply(R, information_requested) :-
    authorised_representative(R),
    represents_provider(R, P),
    general_purpose_ai_model_provider(P).

:- pred represents_provider/2, gloss('representative acts on behalf of provider'), source('celex:32024R1689/oj#art_91').
represents_provider(R, P) :-
    authorised_representative(R),
    provider(P).

:- pred initiate_dialogue/2, gloss('AI Office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_91').
initiate_dialogue(AO, P) :-
    ai_office(AO),
    general_purpose_ai_model_provider(P).

% Provenance
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_91').
provenance(request_information/2, 'celex:32024R1689/oj#art_91').
provenance(must_supply/2, 'celex:32024R1689/oj#art_91').
provenance(represents_provider/2, 'celex:32024R1689/oj#art_91').
provenance(initiate_dialogue/2, 'celex:32024R1689/oj#art_91').

% References
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').
