:- module(union_ai_framework, [
    harmonised_rule/1,
    ai_system/1,
    small_medium_enterprise/1,
    startup/1,
    required_framework/1,
    objective_foster_uptake/1,
    objective_high_level_protection/1,
    objective_protect_fundamental_rights/1,
    objective_smooth_functioning_internal_market/1,
    objective_free_movement/1,
    objective_support_innovation/1,
    objective_enable_ecosystem/1,
    objective_unlock_digital_transformation/1,
    objective_human_centric_approach/1,
    objective_global_leadership/1,
    clear_and_robust/1,
    supportive_of_innovation/1,
    aligned_with_union_values/1,
    focus_on_smes/1,
    permitted_free_movement/1
]).

:- dynamic ai_system/1.
:- dynamic harmonised_rule/1.
:- dynamic small_medium_enterprise/1.
:- dynamic startup/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic used_system/1.
:- dynamic protects_public_interest/2.
:- dynamic protects_fundamental_right/2.
:- dynamic in_line_with_union_values/1.
:- dynamic created_by/2.
:- dynamic support_measure/1.
:- dynamic focuses_on/2.

% A Union legal framework laying down harmonised rules on AI is needed
required_framework(union_legal_framework(ai)) :-
    harmonised_rule(_Rule).

% Fostering development, use and uptake of AI in the internal market
objective_foster_uptake(union_legal_framework(ai)).

% Meeting a high level of protection of public interests (health, safety)
objective_high_level_protection(union_legal_framework(ai)) :-
    protects_public_interest(union_legal_framework(ai), health),
    protects_public_interest(union_legal_framework(ai), safety).

% Protection of fundamental rights, including democracy, rule of law, and environmental protection
objective_protect_fundamental_rights(union_legal_framework(ai)) :-
    protects_fundamental_right(union_legal_framework(ai), democracy),
    protects_fundamental_right(union_legal_framework(ai), rule_of_law),
    protects_fundamental_right(union_legal_framework(ai), environmental_protection).

% Rules regulating the placing on the market, putting into service, and use of certain AI systems
harmonised_rule(regulates(placing_on_market(S))) :-
    ai_system(S),
    placed_on_market(S).

harmonised_rule(regulates(putting_into_service(S))) :-
    ai_system(S),
    put_into_service(S).

harmonised_rule(regulates(use(S))) :-
    ai_system(S),
    used_system(S).

% Ensuring the smooth functioning of the internal market
objective_smooth_functioning_internal_market(union_legal_framework(ai)) :-
    harmonised_rule(_).

% Allowing those systems to benefit from the principle of free movement of goods and services
permitted_free_movement(S) :-
    ai_system(S),
    harmonised_rule(regulates(placing_on_market(S))).

permitted_free_movement(S) :-
    ai_system(S),
    harmonised_rule(regulates(putting_into_service(S))).

permitted_free_movement(S) :-
    ai_system(S),
    harmonised_rule(regulates(use(S))).

objective_free_movement(union_legal_framework(ai)) :-
    permitted_free_movement(_S).

% Rules should be clear and robust in protecting fundamental rights
clear_and_robust(Rule) :-
    harmonised_rule(Rule),
    objective_protect_fundamental_rights(Rule).

% Rules supportive of new innovative solutions
supportive_of_innovation(Rule) :-
    harmonised_rule(Rule).

objective_support_innovation(union_legal_framework(ai)).

% Enabling a European ecosystem of public and private actors creating AI systems in line with Union values
aligned_with_union_values(S) :-
    ai_system(S),
    in_line_with_union_values(S).

objective_enable_ecosystem(union_legal_framework(ai)) :-
    ai_system(S),
    created_by(S, actor(public)),
    in_line_with_union_values(S).

objective_enable_ecosystem(union_legal_framework(ai)) :-
    ai_system(S),
    created_by(S, actor(private)),
    in_line_with_union_values(S).

% Unlocking the potential of the digital transformation across all regions of the Union
objective_unlock_digital_transformation(union_legal_framework(ai)).

% Measures in support of innovation with a particular focus on SMEs, including startups
focus_on_smes(Measure) :-
    support_measure(Measure),
    focuses_on(Measure, target(sme)).

focus_on_smes(Measure) :-
    support_measure(Measure),
    focuses_on(Measure, target(startup)).

small_medium_enterprise(SME) :-
    startup(SME).

% Supports the objective of promoting the European human-centric approach to AI
objective_human_centric_approach(regulation(ai)) :-
    harmonised_rule(_),
    support_measure(M),
    focus_on_smes(M).

% Objective of being a global leader in secure, trustworthy and ethical AI
objective_global_leadership(regulation(ai)) :-
    harmonised_rule(_),
    support_measure(M),
    focus_on_smes(M).
