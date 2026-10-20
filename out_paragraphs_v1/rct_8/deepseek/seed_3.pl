:- module(ai_legal_framework, [
    required_legal_framework/1,
    objective_foster_ai/1,
    objective_meet_protection/1,
    must_protect/2,
    recognised_by_union_law/1,
    required_rules/1,
    must_regulate/2,
    must_ensure/2,
    must_allow/2,
    must_be_clear/1,
    must_be_robust/1,
    must_be_supportive/1,
    must_enable/1,
    must_unlock/1,
    supports_objective/2,
    must_focus_on/2,
    small_and_medium_enterprise/1,
    startup/1,
    european_human_centric_approach/1,
    global_leader/1,
    stated_by_european_council/1
]).

% A Union legal framework laying down harmonised rules on AI is needed
required_legal_framework(union_legal_framework(ai)) :-
    must_lay_down(union_legal_framework(ai), harmonised_rules(ai)).

% to foster the development, use and uptake of AI in the internal market
objective_foster_ai(framework(union_legal_framework(ai))) :-
    must_foster(union_legal_framework(ai), development(ai)),
    must_foster(union_legal_framework(ai), use(ai)),
    must_foster(union_legal_framework(ai), uptake(ai)),
    in_market(ai, internal_market).

% that at the same time meets a high level of protection of public interests
objective_meet_protection(framework(union_legal_framework(ai))) :-
    must_meet(union_legal_framework(ai), high_level(protection(public_interests))).

% such as health and safety and the protection of fundamental rights
must_protect(union_legal_framework(ai), health_and_safety).
must_protect(union_legal_framework(ai), fundamental_rights).

% including democracy, the rule of law and environmental protection
must_protect(union_legal_framework(ai), democracy).
must_protect(union_legal_framework(ai), rule_of_law).
must_protect(union_legal_framework(ai), environmental_protection).

% as recognised and protected by Union law
recognised_by_union_law(health_and_safety).
recognised_by_union_law(fundamental_rights).
recognised_by_union_law(democracy).
recognised_by_union_law(rule_of_law).
recognised_by_union_law(environmental_protection).

% rules regulating the placing on the market, the putting into service and the use of certain AI systems should be laid down
required_rules(rules(ai_systems)) :-
    must_regulate(rules(ai_systems), placing_on_market(ai_systems)),
    must_regulate(rules(ai_systems), putting_into_service(ai_systems)),
    must_regulate(rules(ai_systems), use(ai_systems)).

% thus ensuring the smooth functioning of the internal market
must_ensure(rules(ai_systems), smooth_functioning(internal_market)).

% and allowing those systems to benefit from the principle of free movement of goods and services
must_allow(rules(ai_systems), benefit(ai_systems, principle(free_movement(goods_and_services)))).

% Those rules should be clear and robust in protecting fundamental rights
must_be_clear(rules(ai_systems)).
must_be_robust(rules(ai_systems)) :-
    must_protect(rules(ai_systems), fundamental_rights).

% supportive of new innovative solutions
must_be_supportive(rules(ai_systems), new_innovative_solutions).

% enabling a European ecosystem of public and private actors creating AI systems in line with Union values
must_enable(rules(ai_systems)) :-
    ecosystem(european_ecosystem(public_and_private_actors)),
    must_create(european_ecosystem(public_and_private_actors), ai_systems),
    in_line_with(ai_systems, union_values).

% and unlocking the potential of the digital transformation across all regions of the Union
must_unlock(rules(ai_systems)) :-
    potential(digital_transformation),
    across_all_regions(digital_transformation, union).

% By laying down those rules as well as measures in support of innovation
supports_objective(regulation, promote(european_human_centric_approach(ai))) :-
    lays_down(regulation, rules(ai_systems)),
    lays_down(regulation, measures(support(innovation))).

% with a particular focus on small and medium enterprises (SMEs), including startups
must_focus_on(measures(support(innovation)), small_and_medium_enterprises).
must_focus_on(measures(support(innovation)), startups).

small_and_medium_enterprise(X) :- small_and_medium_enterprises(X).
startup(X) :- startups(X).

% this Regulation supports the objective of promoting the European human-centric approach to AI
european_human_centric_approach(ai).

% and being a global leader in the development of secure, trustworthy and ethical AI
global_leader(development(secure_trustworthy_ethical_ai)).

% as stated by the European Council
stated_by_european_council(european_human_centric_approach(ai)).
stated_by_european_council(global_leader(development(secure_trustworthy_ethical_ai))).

% Input predicates
:- dynamic must_lay_down/2.
:- dynamic must_foster/2.
:- dynamic in_market/2.
:- dynamic must_meet/2.
:- dynamic must_regulate/2.
:- dynamic must_create/2.
:- dynamic in_line_with/2.
:- dynamic across_all_regions/2.
:- dynamic lays_down/2.
:- dynamic small_and_medium_enterprises/1.
:- dynamic startups/1.
