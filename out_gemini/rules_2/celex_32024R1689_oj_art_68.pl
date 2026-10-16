% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 3dc368cfcc3434dc4b489d33331b54f9b017e840e3dea0c9b69476aeff20fb87
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('scientific panel of independent experts'), source('celex:32024R1689/oj#art_68').
:- pred independent_expert/1, gloss('independent expert eligible or selected for the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred independent_from_providers/1, gloss('independent from any provider of AI systems or general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred possesses_ai_expertise/1, gloss('possesses particular competence and scientific or technical expertise in the field of AI'), source('celex:32024R1689/oj#art_68').
:- pred carries_out_activities_diligently_accurately_objectively/1, gloss('able to carry out activities diligently, accurately and objectively'), source('celex:32024R1689/oj#art_68').
:- pred must_establish/2, gloss('actor must establish a specified entity or system'), source('celex:32024R1689/oj#art_68').
:- pred must_select/2, gloss('actor must select an entity or panel members'), source('celex:32024R1689/oj#art_68').
:- pred must_support/2, gloss('actor must support another entity or task'), source('celex:32024R1689/oj#art_68').
:- pred must_ensure/2, gloss('actor must ensure a specified condition or outcome'), source('celex:32024R1689/oj#art_68').
:- pred must_draw_up/2, gloss('actor must draw up a specified document'), source('celex:32024R1689/oj#art_68').
:- pred prohibited_instruction_taking/1, gloss('expert is prohibited from seeking or taking instructions'), source('celex:32024R1689/oj#art_68').

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(independent_expert/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_providers/1, 'celex:32024R1689/oj#art_68').
provenance(possesses_ai_expertise/1, 'celex:32024R1689/oj#art_68').
provenance(carries_out_activities_diligently_accurately_objectively/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish/2, 'celex:32024R1689/oj#art_68').
provenance(must_select/2, 'celex:32024R1689/oj#art_68').
provenance(must_support/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_68').
provenance(prohibited_instruction_taking/1, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% Paragraph 1: Commission obligation to make provisions by implementing act on establishing scientific panel
must_establish(commission, scientific_panel) :-
    commission(commission).

% Paragraph 2: Selection of independent experts
independent_expert(E) :-
    possesses_ai_expertise(E),
    independent_from_providers(E),
    carries_out_activities_diligently_accurately_objectively(E).

must_select(Commission, panel_experts(Panel)) :-
    commission(Commission),
    scientific_panel(Panel).

% Paragraph 3: Advisory and support role of the scientific panel to the AI Office and MSAs
must_support(Panel, ai_office(tasks)) :-
    scientific_panel(Panel).

must_support(Panel, market_surveillance_authorities(request)) :-
    scientific_panel(Panel).

must_support(Panel, cross_border_market_surveillance) :-
    scientific_panel(Panel).

must_support(Panel, union_safeguard_procedure) :-
    scientific_panel(Panel).

% Paragraph 4: Independence, confidentiality, declarations of interest, conflict management
prohibited_instruction_taking(E) :-
    independent_expert(E).

must_ensure(E, confidentiality_of_information) :-
    independent_expert(E).

must_draw_up(E, declaration_of_interests) :-
    independent_expert(E).

must_establish(AIOffice, conflict_of_interest_management_system) :-
    ai_office(AIOffice).
