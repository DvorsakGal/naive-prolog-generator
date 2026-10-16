% unit       : celex:32024R1689/oj#art_90
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 51650b00ce8bb9071560e87a7568f213ce9bf598f4b06b2e5a5655128e82778e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9f8487d2f3d2dfc711798bbe4ee1531f937236ece91a87c0a586055e04daa939
% cached     : False
% title      : Alerts of systemic risks by the scientific panel
:- pred scientific_panel/1, gloss('scientific panel of independent experts'), source('celex:32024R1689/oj#art_90').
:- pred systemic_risk_conditions_met/1, gloss('model meets conditions for systemic risk under Article 51'), source('celex:32024R1689/oj#art_90').
:- pred poses_concrete_identifiable_risk_at_union_level/1, gloss('model poses concrete identifiable risk at Union level'), source('celex:32024R1689/oj#art_90').
:- pred permitted_qualified_alert/2, gloss('scientific panel is permitted to provide a qualified alert to the AI Office'), source('celex:32024R1689/oj#art_90').
:- pred permitted_exercise_powers/2, gloss('AI Office/Commission may exercise powers laid down in Chapter IX Section 5'), source('celex:32024R1689/oj#art_90').
:- pred informed/2, gloss('an actor has informed another body of a matter'), source('celex:32024R1689/oj#art_90').
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_90').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_90').
:- pred must_inform/2, gloss('an entity must inform another entity of a matter'), source('celex:32024R1689/oj#art_90').
:- pred required_qualified_alert/1, gloss('elements required to be contained in a qualified alert'), source('celex:32024R1689/oj#art_90').

% Paragraph 1:
% The scientific panel may provide a qualified alert to the AI Office where it has reason to suspect that:
% (a) a general-purpose AI model poses concrete identifiable risk at Union level; or
% (b) a general-purpose AI model meets the conditions referred to in Article 51.
permitted_qualified_alert(Panel, qualified_alert(Office, Model)) :-
    scientific_panel(Panel),
    ai_office(Office),
    general_purpose_ai_model(Model),
    poses_concrete_identifiable_risk_at_union_level(Model).

permitted_qualified_alert(Panel, qualified_alert(Office, Model)) :-
    scientific_panel(Panel),
    ai_office(Office),
    general_purpose_ai_model(Model),
    systemic_risk_conditions_met(Model).

% Paragraph 2:
% Upon such qualified alert, the Commission, through the AI Office and after having informed the Board,
% may exercise the powers laid down in Chapter IX Section 5 for the purpose of assessing the matter.
permitted_exercise_powers(commission, powers(chapter_ix_section_5, Model)) :-
    ai_office(Office),
    scientific_panel(Panel),
    permitted_qualified_alert(Panel, qualified_alert(Office, Model)),
    board(Board),
    informed(commission, Board).

% The AI Office shall inform the Board of any measure according to Articles 91 to 94.
must_inform(Office, board(measure(Measure, Model))) :-
    ai_office(Office),
    member(Measure, [art_91, art_92, art_93, art_94]),
    general_purpose_ai_model(Model).

% Paragraph 3:
% A qualified alert shall be duly reasoned and indicate at least:
% (a) point of contact of the provider; (b) description of relevant facts and reasons; (c) other relevant information.
required_qualified_alert(alert(Model, Contact, FactsAndReasons)) :-
    general_purpose_ai_model(Model),
    nonvar(Contact),
    nonvar(FactsAndReasons).

% Provenance
provenance(permitted_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(permitted_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(must_inform/2, 'celex:32024R1689/oj#art_90').
provenance(required_qualified_alert/1, 'celex:32024R1689/oj#art_90').

% References
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').
