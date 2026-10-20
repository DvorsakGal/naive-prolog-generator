:- module(ai_regulatory_framework, [
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
    must_promote/1,
    must_be_global_leader/1
]).

% A Union legal framework laying down harmonised rules on AI is needed
required_legal_framework(Framework) :-
    legal_framework(Framework),
    union(Framework),
    lays_down(Framework, harmonised_rules(ai)).

% to foster the development, use and uptake of AI in the internal market
objective_foster_ai(Framework) :-
    required_legal_framework(Framework),
    fosters(Framework, development(ai)),
    fosters(Framework, use(ai)),
    fosters(Framework, uptake(ai)),
    in_market(Framework, internal_market).

% that at the same time meets a high level of protection of public interests
objective_meet_protection(Framework) :-
    required_legal_framework(Framework),
    meets(Framework, high_level(protection(public_interests))).

% such as health and safety and the protection of fundamental rights
must_protect(Framework, health_and_safety) :-
    objective_meet_protection(Framework).
must_protect(Framework, protection(fundamental_rights)) :-
    objective_meet_protection(Framework).

% including democracy, the rule of law and environmental protection
must_protect(Framework, democracy) :-
    objective_meet_protection(Framework).
must_protect(Framework, rule_of_law) :-
    objective_meet_protection(Framework).
must_protect(Framework, environmental_protection) :-
    objective_meet_protection(Framework).

% as recognised and protected by Union law
recognised_by_union_law(Interest) :-
    must_protect(_, Interest).

% To achieve that objective, rules regulating the placing on the market,
% the putting into service and the use of certain AI systems should be laid down
required_rules(Rules) :-
    rules(Rules),
    achieves(Rules, objective_meet_protection(_)).

must_regulate(Rules, placing_on_market(AiSystem)) :-
    required_rules(Rules),
    ai_system(AiSystem).
must_regulate(Rules, putting_into_service(AiSystem)) :-
    required_rules(Rules),
    ai_system(AiSystem).
must_regulate(Rules, use(AiSystem)) :-
    required_rules(Rules),
    ai_system(AiSystem).

% thus ensuring the smooth functioning of the internal market
must_ensure(Rules, smooth_functioning(internal_market)) :-
    required_rules(Rules).

% and allowing those systems to benefit from the principle of free movement of goods and services
must_allow(Rules, benefit(AiSystem, principle(free_movement(goods_and_services)))) :-
    required_rules(Rules),
    ai_system(AiSystem).

% Those rules should be clear and robust in protecting fundamental rights
must_be_clear(Rules) :-
    required_rules(Rules).
must_be_robust(Rules) :-
    required_rules(Rules),
    protects(Rules, fundamental_rights).

% supportive of new innovative solutions
must_be_supportive(Rules) :-
    required_rules(Rules),
    supportive_of(Rules, new_innovative_solutions).

% enabling a European ecosystem of public and private actors creating AI systems
% in line with Union values
must_enable(Rules) :-
    required_rules(Rules),
    enables(Rules, ecosystem(european, public_and_private_actors, creating(ai_systems, union_values))).

% and unlocking the potential of the digital transformation across all regions of the Union
must_unlock(Rules) :-
    required_rules(Rules),
    unlocks(Rules, potential(digital_transformation, all_regions(union))).

% By laying down those rules as well as measures in support of innovation
% with a particular focus on small and medium enterprises (SMEs), including startups,
% this Regulation supports the objective of promoting the European human-centric approach to AI
supports_objective(Regulation, promote(european_human_centric_approach(ai))) :-
    regulation(Regulation),
    lays_down(Regulation, Rules),
    required_rules(Rules),
    lays_down(Regulation, measures(support(innovation, focus(smes_including_startups)))).

% and being a global leader in the development of secure, trustworthy and ethical AI
% as stated by the European Council
must_promote(Regulation) :-
    supports_objective(Regulation, _).

must_be_global_leader(Regulation) :-
    regulation(Regulation),
    leader_in(Regulation, development(secure_trustworthy_ethical_ai)),
    stated_by(european_council).

% Declare predicates that are inputs (not defined by this text)
:- dynamic legal_framework/1.
:- dynamic union/1.
:- dynamic lays_down/2.
:- dynamic fosters/2.
:- dynamic in_market/2.
:- dynamic meets/2.
:- dynamic rules/1.
:- dynamic achieves/2.
:- dynamic ai_system/1.
:- dynamic protects/2.
:- dynamic supportive_of/2.
:- dynamic enables/2.
:- dynamic unlocks/2.
:- dynamic regulation/1.
:- dynamic leader_in/2.
:- dynamic stated_by/1.
