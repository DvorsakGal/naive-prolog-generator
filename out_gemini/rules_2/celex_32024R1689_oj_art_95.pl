% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : a3488013e64700fda2b15646efa2d2751264b8f86eeb2b20f85b6dd2a93b87ab
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_95').
:- pred code_of_conduct/1, gloss('code of conduct for voluntary application of requirements'), source('celex:32024R1689/oj#art_95').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_95').
:- pred must_encourage_and_facilitate/2, gloss('actor must encourage and facilitate a specified activity or measure'), source('celex:32024R1689/oj#art_95').
:- pred must_facilitate/2, gloss('actor must facilitate a specified activity or measure'), source('celex:32024R1689/oj#art_95').
:- pred permitted_draw_up_code_of_conduct/1, gloss('entity is permitted to draw up a code of conduct'), source('celex:32024R1689/oj#art_95').
:- pred organisation_representing_providers_or_deployers/1, gloss('organisation representing providers, deployers, or both'), source('celex:32024R1689/oj#art_95').
:- pred must_take_into_account/2, gloss('actor must take into account specified interests or matters in performing an action'), source('celex:32024R1689/oj#art_95').

% Paragraph 1: The AI Office and the Member States shall encourage and facilitate
% the drawing up of codes of conduct intended to foster voluntary application to
% AI systems other than high-risk AI systems of requirements in Chapter III Section 2.
must_encourage_and_facilitate(Actor, drawing_up_codes_of_conduct(non_high_risk_systems)) :-
    ai_office(Actor).

must_encourage_and_facilitate(Actor, drawing_up_codes_of_conduct(non_high_risk_systems)) :-
    member_state(Actor).

% Paragraph 2: The AI Office and the Member States shall facilitate the drawing up of
% codes of conduct concerning the voluntary application of specific requirements to all AI systems.
must_facilitate(Actor, drawing_up_codes_of_conduct(all_ai_systems)) :-
    ai_office(Actor).

must_facilitate(Actor, drawing_up_codes_of_conduct(all_ai_systems)) :-
    member_state(Actor).

% Paragraph 3: Codes of conduct may be drawn up by individual providers or deployers
% of AI systems or by organisations representing them or by both.
permitted_draw_up_code_of_conduct(Actor) :-
    provider(Actor).

permitted_draw_up_code_of_conduct(Actor) :-
    deployer(Actor).

permitted_draw_up_code_of_conduct(Actor) :-
    organisation_representing_providers_or_deployers(Actor).

% Paragraph 4: The AI Office and the Member States shall take into account the
% specific interests and needs of SMEs, including start-ups, when encouraging and
% facilitating the drawing up of codes of conduct.
must_take_into_account(Actor, needs_of_smes_and_startups(drawing_up_codes_of_conduct)) :-
    ai_office(Actor).

must_take_into_account(Actor, needs_of_smes_and_startups(drawing_up_codes_of_conduct)) :-
    member_state(Actor).

% Provenance
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_draw_up_code_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_95').

% References
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
