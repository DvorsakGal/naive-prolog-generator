% unit       : celex:32024R1689/oj#art_88
% title      : Enforcement of the obligations of providers of general-purpose AI models
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : gpt-oss:120b-cloud
% prompt sha : f4efa79da79599412acda74f458edc119939ea840fc1b71c46d98b8e9776bf52
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_88').
:- pred provides_general_purpose_ai_model/2, gloss('provider provides a general‑purpose AI model'), source('celex:32024R1689/oj#art_88').
:- pred general_purpose_ai_model_provider/1, gloss('provider of a general‑purpose AI model'), source('celex:32024R1689/oj#art_88').
:- pred necessary_and_proportionate/1, gloss('condition that the request is necessary and proportionate'), source('celex:32024R1689/oj#art_88').
:- pred must_supervise/2, gloss('Commission must supervise the provider'), source('celex:32024R1689/oj#art_88').
:- pred must_enforce/2, gloss('Commission must enforce the provider'), source('celex:32024R1689/oj#art_88').
:- pred must_entrust/2, gloss('Commission must entrust tasks to AI Office'), source('celex:32024R1689/oj#art_88').
:- pred permitted_request_exercise_powers/2, gloss('Market surveillance authority may request Commission to exercise powers'), source('celex:32024R1689/oj#art_88').

commission(commission).

general_purpose_ai_model_provider(P) :-
    provider(P),
    provides_general_purpose_ai_model(P, _M).

must_supervise(C, P) :-
    commission(C),
    general_purpose_ai_model_provider(P).

must_enforce(C, P) :-
    commission(C),
    general_purpose_ai_model_provider(P).

must_entrust(C, O) :-
    commission(C),
    ai_office(O).

permitted_request_exercise_powers(A, C) :-
    market_surveillance_authority(A),
    commission(C),
    necessary_and_proportionate(C).

provenance(must_supervise/2, 'celex:32024R1689/oj#art_88').
provenance(must_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request_exercise_powers/2, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
