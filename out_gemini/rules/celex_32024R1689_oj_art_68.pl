% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ed4fd0242781609f300aa9354bab787071e3a6c4dcc0e810f2114d0497860373
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('scientific panel of independent experts'), source('celex:32024R1689/oj#art_68').
:- pred expert/1, gloss('expert member of the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred qualifying_expert/1, gloss('expert meeting qualifications for the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred independent_from_providers/1, gloss('expert is independent from any provider of AI systems or general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred diligent_accurate_objective/1, gloss('expert possesses ability to act diligently, accurately and objectively'), source('celex:32024R1689/oj#art_68').
:- pred particular_expertise_in_ai/1, gloss('expert possesses particular competence and expertise in the field of AI'), source('celex:32024R1689/oj#art_68').
:- pred prohibited_instruction_taking/1, gloss('expert is prohibited from seeking or taking external instructions'), source('celex:32024R1689/oj#art_68').
:- pred must_establish(Actor, Object), gloss('actor is obliged to establish object'), source('celex:32024R1689/oj#art_68').
:- pred must_ensure(Actor, Object), gloss('actor is obliged to ensure a condition or requirement'), source('celex:32024R1689/oj#art_68').
:- pred must_advise(Actor, Object), gloss('actor is obliged to advise an entity'), source('celex:32024R1689/oj#art_68').
:- pred must_support(Actor, Object), gloss('actor is obliged to support an entity or activity'), source('celex:32024R1689/oj#art_68').
:- pred must_perform(Actor, Object), gloss('actor is obliged to perform tasks in a specified manner'), source('celex:32024R1689/oj#art_68').
:- pred must_draw_up(Actor, Object), gloss('actor is obliged to draw up a specified document'), source('celex:32024R1689/oj#art_68').

% Paragraph 1
must_establish(commission, scientific_panel).

% Paragraph 2
qualifying_expert(E) :-
    expert(E),
    particular_expertise_in_ai(E),
    independent_from_providers(E),
    diligent_accurate_objective(E).

must_ensure(commission, representation(fair_gender_and_geographical, scientific_panel)).

% Paragraph 3
must_advise(scientific_panel, ai_office).
must_support(scientific_panel, ai_office).
must_support(scientific_panel, market_surveillance_authorities) :-
    requested_by(market_surveillance_authorities).
must_support(scientific_panel, cross_border_market_surveillance).
must_support(scientific_panel, safeguard_procedure(ai_office)).

% Paragraph 4
must_perform(E, tasks_with_impartiality_and_objectivity) :-
    expert(E).

must_ensure(E, confidentiality_of_information) :-
    expert(E).

prohibited_instruction_taking(E) :-
    expert(E).

must_draw_up(E, declaration_of_interests(publicly_available)) :-
    expert(E).

must_establish(ai_office, systems_and_procedures(manage_and_prevent_conflicts_of_interest)).

% Paragraph 5
must_establish(commission, implementing_act(alerts_and_assistance(scientific_panel))).

% Provenance
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(qualifying_expert/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_providers/1, 'celex:32024R1689/oj#art_68').
provenance(diligent_accurate_objective/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(prohibited_instruction_taking/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise/2, 'celex:32024R1689/oj#art_68').
provenance(must_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform/2, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_68').

% References
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
