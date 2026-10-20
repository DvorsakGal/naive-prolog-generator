:- module(ai_regulation_framework, [
    objective_regulation/1,
    objective_foster_ai/1,
    objective_high_protection/1,
    objective_smooth_market/1,
    objective_protect_rights/1,
    objective_support_innovation/1,
    objective_european_ecosystem/1,
    objective_unlock_digital_transformation/1,
    objective_support_innovation_sme/1,
    objective_promote_human_centric_ai/1,
    objective_global_leader/1,
    required_rule/1,
    required_rule_market/1,
    required_rule_service/1,
    required_rule_use/1,
    required_measure/1,
    required_measure_innovation/1,
    required_measure_sme/1,
    clear_rule/1,
    robust_rule/1,
    supportive_rule/1,
    enabling_ecosystem/1,
    public_interest/1,
    public_interest_health_safety/1,
    public_interest_fundamental_rights/1,
    fundamental_right/1,
    fundamental_right_democracy/1,
    fundamental_right_rule_of_law/1,
    fundamental_right_environmental_protection/1,
    union_value/1,
    free_movement/1,
    free_movement_goods/1,
    free_movement_services/1,
    ai_system/1,
    actor/1,
    actor_public/1,
    actor_private/1,
    sme/1,
    startup/1,
    european_council_statement/1
]).

% The regulation is needed to foster development, use and uptake of AI in the internal market
objective_regulation(Regulation) :-
    objective_foster_ai(Regulation),
    objective_high_protection(Regulation).

objective_foster_ai(Regulation) :-
    fosters_development(Regulation, ai),
    fosters_use(Regulation, ai),
    fosters_uptake(Regulation, ai),
    internal_market(Regulation).

objective_high_protection(Regulation) :-
    high_level_protection(Regulation, Interest),
    public_interest(Interest).

% Public interests protected
public_interest(health_safety).
public_interest(fundamental_rights).

public_interest_health_safety(Interest) :-
    public_interest(Interest),
    health_safety(Interest).

public_interest_fundamental_rights(Interest) :-
    public_interest(Interest),
    fundamental_rights(Interest).

fundamental_right(democracy).
fundamental_right(rule_of_law).
fundamental_right(environmental_protection).

% To achieve that objective, rules regulating placing on market, putting into service and use of certain AI systems
objective_smooth_market(Regulation) :-
    required_rule(Regulation),
    ensures_smooth_functioning(Regulation, internal_market),
    allows_free_movement(Regulation).

required_rule(Regulation) :-
    required_rule_market(Regulation),
    required_rule_service(Regulation),
    required_rule_use(Regulation).

required_rule_market(Regulation) :-
    regulates(Regulation, placing_on_market, ai_system).

required_rule_service(Regulation) :-
    regulates(Regulation, putting_into_service, ai_system).

required_rule_use(Regulation) :-
    regulates(Regulation, use, ai_system).

% Those rules should be clear and robust in protecting fundamental rights
objective_protect_rights(Regulation) :-
    clear_rule(Regulation),
    robust_rule(Regulation),
    protects(Regulation, fundamental_rights).

clear_rule(Regulation) :-
    required_rule(Regulation),
    clear(Regulation).

robust_rule(Regulation) :-
    required_rule(Regulation),
    robust(Regulation).

% Supportive of new innovative solutions
objective_support_innovation(Regulation) :-
    supportive_rule(Regulation),
    supports(Regulation, innovative_solutions).

supportive_rule(Regulation) :-
    required_rule(Regulation),
    supportive(Regulation, innovative_solutions).

% Enabling a European ecosystem of public and private actors creating AI systems in line with Union values
objective_european_ecosystem(Regulation) :-
    enabling_ecosystem(Regulation),
    ecosystem_european(Regulation),
    actor(Regulation, Actor),
    creates_ai_system(Actor),
    in_line_with(Actor, union_value).

enabling_ecosystem(Regulation) :-
    required_rule(Regulation),
    enables(Regulation, ecosystem).

actor(Regulation, public_actor) :-
    objective_european_ecosystem(Regulation).
actor(Regulation, private_actor) :-
    objective_european_ecosystem(Regulation).

actor_public(public_actor).
actor_private(private_actor).

% Unlocking the potential of the digital transformation across all regions of the Union
objective_unlock_digital_transformation(Regulation) :-
    unlocks(Regulation, potential(digital_transformation)),
    across_all_regions(Regulation, union).

% Measures in support of innovation with particular focus on SMEs, including startups
objective_support_innovation_sme(Regulation) :-
    required_measure(Regulation),
    required_measure_innovation(Regulation),
    required_measure_sme(Regulation).

required_measure(Regulation) :-
    measure(Regulation),
    supports(Regulation, innovation).

required_measure_innovation(Regulation) :-
    required_measure(Regulation),
    focus(Regulation, innovation).

required_measure_sme(Regulation) :-
    required_measure(Regulation),
    particular_focus(Regulation, sme),
    includes(sme, startup).

sme(sme).
startup(startup).

% This Regulation supports the objective of promoting the European human-centric approach to AI
objective_promote_human_centric_ai(Regulation) :-
    supports(Regulation, objective(promote(human_centric_approach(ai)))),
    european(human_centric_approach(ai)).

% And being a global leader in the development of secure, trustworthy and ethical AI as stated by the European Council
objective_global_leader(Regulation) :-
    supports(Regulation, objective(be(global_leader))),
    development(ai, secure_trustworthy_ethical),
    european_council_statement(statement).

european_council_statement(statement) :-
    objective_global_leader(_Regulation).

% Free movement principles
free_movement(Regulation) :-
    allows_free_movement(Regulation),
    free_movement_goods(Regulation),
    free_movement_services(Regulation).

free_movement_goods(Regulation) :-
    free_movement(Regulation),
    principle(free_movement, goods).

free_movement_services(Regulation) :-
    free_movement(Regulation),
    principle(free_movement, services).

% AI systems benefit from free movement
ai_system(System) :-
    benefits_from(System, free_movement).

% Union values
union_value(human_centric).
union_value(secure).
union_value(trustworthy).
union_value(ethical).

% Input predicates about the world the text does not settle
:- dynamic fosters_development/2.
:- dynamic fosters_use/2.
:- dynamic fosters_uptake/2.
:- dynamic internal_market/1.
:- dynamic high_level_protection/2.
:- dynamic health_safety/1.
:- dynamic fundamental_rights/1.
:- dynamic regulates/3.
:- dynamic ensures_smooth_functioning/2.
:- dynamic allows_free_movement/1.
:- dynamic clear/1.
:- dynamic robust/1.
:- dynamic protects/2.
:- dynamic supports/2.
:- dynamic supportive/2.
:- dynamic enables/2.
:- dynamic ecosystem_european/1.
:- dynamic creates_ai_system/1.
:- dynamic in_line_with/2.
:- dynamic unlocks/2.
:- dynamic across_all_regions/2.
:- dynamic measure/1.
:- dynamic focus/2.
:- dynamic particular_focus/2.
:- dynamic includes/2.
:- dynamic european/1.
:- dynamic development/2.
:- dynamic principle/2.
:- dynamic benefits_from/2.
