% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d5abfad9f2b40b7f160b0c0d3e280babe36b8eb7e0eb090e8752a43864363390
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_88').
:- pred exclusive_powers/2, gloss('Entity has exclusive powers over a scope'), source('celex:32024R1689/oj#art_88').
:- pred must_entrust/2, gloss('Entity must entrust tasks to another body'), source('celex:32024R1689/oj#art_88').
:- pred permitted_request/2, gloss('Entity is permitted to request an action'), source('celex:32024R1689/oj#art_88').
:- pred necessary_and_proportionate_for_tasks/2, gloss('Action is necessary and proportionate to fulfil tasks'), source('celex:32024R1689/oj#art_88').

% Paragraph 1: Exclusive powers to supervise and enforce Chapter V
exclusive_powers(commission, supervision_and_enforcement(chapter_5)).

% Paragraph 1: Commission shall entrust implementation of tasks to the AI Office
must_entrust(commission, tasks(ai_office, supervision_and_enforcement(chapter_5))).

% Paragraph 2: Market surveillance authorities may request the Commission to exercise Section 5 powers
permitted_request(Authority, commission_exercise_powers(chapter_9_section_5)) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate_for_tasks(Authority, commission_exercise_powers(chapter_9_section_5)).

provenance(exclusive_powers/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request/2, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').
