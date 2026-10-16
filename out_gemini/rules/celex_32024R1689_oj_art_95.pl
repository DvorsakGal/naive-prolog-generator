% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : aecf6d1e9737972456b346beb30ed728f2025e823ca67e996854223591a96e7e
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred member_state/1, gloss('EU Member State'), source('celex:32024R1689/oj#art_95').
:- pred code_of_conduct/1, gloss('Code of conduct drawn up pursuant to Article 95'), source('celex:32024R1689/oj#art_95').
:- pred code_of_conduct_drawing_up/1, gloss('The drawing up of a code of conduct'), source('celex:32024R1689/oj#art_95').
:- pred must_encourage/2, gloss('Actor is obliged to encourage Object'), source('celex:32024R1689/oj#art_95').
:- pred must_facilitate/2, gloss('Actor is obliged to facilitate Object'), source('celex:32024R1689/oj#art_95').
:- pred must_take_into_account/2, gloss('Actor is obliged to take into account Object'), source('celex:32024R1689/oj#art_95').
:- pred permitted_draw_up/2, gloss('Actor is permitted to draw up Object'), source('celex:32024R1689/oj#art_95').
:- pred voluntary_application_requirements/2, gloss('Code of conduct fosters voluntary application of requirements to AI systems'), source('celex:32024R1689/oj#art_95').
:- pred high_risk_ai_system/1, gloss('High-risk AI system under Chapter III Section 1'), source('celex:32024R1689/oj#art_95').
:- pred represents_actors/2, gloss('Organisation represents individual providers or deployers'), source('celex:32024R1689/oj#art_95').

% Paragraph 1 & 2 & 4: AI Office and Member States encouragement / facilitation duties
must_encourage(Actor, code_of_conduct_drawing_up(C)) :-
    ( ai_office(Actor) ; member_state(Actor) ),
    code_of_conduct(C).

must_facilitate(Actor, code_of_conduct_drawing_up(C)) :-
    ( ai_office(Actor) ; member_state(Actor) ),
    code_of_conduct(C).

must_take_into_account(Actor, specific_interests_and_needs(smes_including_startups)) :-
    ( ai_office(Actor) ; member_state(Actor) ).

% Paragraph 1: Voluntary application of Chapter III Section 2 requirements to non-high-risk AI systems
voluntary_application_requirements(C, S) :-
    code_of_conduct(C),
    ai_system(S),
    \+ high_risk_ai_system(S).

% Paragraph 3: Who may draw up codes of conduct
permitted_draw_up(Actor, C) :-
    code_of_conduct(C),
    ( provider(Actor)
    ; deployer(Actor)
    ; ( represents_actors(Actor, P), (provider(P) ; deployer(P)) )
    ).

% Provenance
provenance(member_state/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct_drawing_up/1, 'celex:32024R1689/oj#art_95').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_draw_up/2, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_requirements/2, 'celex:32024R1689/oj#art_95').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_95').
provenance(represents_actors/2, 'celex:32024R1689/oj#art_95').

% References
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
