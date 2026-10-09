% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 38f209e8e770bb6e18d0a6671ec1a9cc96e2fc893b7c55caad28385d05174324
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred provider_of_general_purpose_ai_model/1,
    gloss('provider that develops or places a general‑purpose AI model'), source('celex:32024R1689/oj#art_88').

:- pred must_supervise/2,
    gloss('Commission must supervise providers of general‑purpose AI models'), source('celex:32024R1689/oj#art_88').

:- pred must_enforce/2,
    gloss('Commission must enforce obligations of providers of general‑purpose AI models'), source('celex:32024R1689/oj#art_88').

:- pred must_entrust/2,
    gloss('Commission must entrust implementation of supervisory tasks to the AI Office'), source('celex:32024R1689/oj#art_88').

:- pred permitted_request/2,
    gloss('Market surveillance authorities may request the Commission to exercise its powers'), source('celex:32024R1689/oj#art_88').

:- pred necessary_and_proportionate/1,
    gloss('Condition that a request is necessary and proportionate'), source('celex:32024R1689/oj#art_88').

provider_of_general_purpose_ai_model(P) :-
    provider(P),
    general_purpose_ai_model(M),
    general_purpose_ai_model(M).

must_supervise(commission, provider_of_general_purpose_ai_model(P)) :-
    provider_of_general_purpose_ai_model(P).

must_enforce(commission, provider_of_general_purpose_ai_model(P)) :-
    provider_of_general_purpose_ai_model(P).

must_entrust(commission, ai_office).

permitted_request(market_surveillance_authority, commission) :-
    necessary_and_proportionate(request_to_exercise_powers).

necessary_and_proportionate(request_to_exercise_powers).

provenance(provider_of_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_88').
provenance(must_supervise/2, 'celex:32024R1689/oj#art_88').
provenance(must_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request/2, 'celex:32024R1689/oj#art_88').
provenance(necessary_and_proportionate/1, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').
