% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 1029f6dc3b923539182babad649fd7dd188b7b6da0bf889a4f19041bea84b335
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred exclusive_powers_supervise_and_enforce/2, gloss('Entity has exclusive powers to supervise and enforce obligations of Chapter V'), source('celex:32024R1689/oj#art_88').
:- pred entrusted_implementation_task/2, gloss('Entity is entrusted with the implementation of enforcement tasks'), source('celex:32024R1689/oj#art_88').
:- pred permitted_request_exercise_of_powers/2, gloss('Authority may request the Commission to exercise enforcement powers under Chapter IX Section 5'), source('celex:32024R1689/oj#art_88').
:- pred necessary_and_proportionate_for_tasks/2, gloss('Requesting exercise of powers is necessary and proportionate to assist the fulfilment of tasks'), source('celex:32024R1689/oj#art_88').

% Article 88(1): The Commission shall have exclusive powers to supervise and enforce Chapter V...
exclusive_powers_supervise_and_enforce(Entity, chapter_5) :-
    commission(Entity).

% Article 88(1): The Commission shall entrust the implementation of these tasks to the AI Office...
entrusted_implementation_task(Office, supervise_and_enforce(chapter_5)) :-
    ai_office(Office).

% Article 88(2): Market surveillance authorities may request the Commission to exercise the powers
% laid down in Section 5 of Chapter IX, where that is necessary and proportionate to assist with
% the fulfilment of their tasks under this Regulation.
permitted_request_exercise_of_powers(Authority, Commission) :-
    market_surveillance_authority(Authority),
    commission(Commission),
    necessary_and_proportionate_for_tasks(Authority, exercise_powers(chapter_9_section_5)).

% Provenance
provenance(exclusive_powers_supervise_and_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(entrusted_implementation_task/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request_exercise_of_powers/2, 'celex:32024R1689/oj#art_88').

% References
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').
