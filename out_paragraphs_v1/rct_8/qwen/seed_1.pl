:- module(ai_act_objectives, [
    union_legal_framework_needed/1,
    fosters_development_of_ai/1,
    fosters_use_of_ai/1,
    fosters_uptake_of_ai/1,
    meets_high_level_protection/2,
    public_interest/1,
    regulates_placing_on_market/1,
    regulates_putting_into_service/1,
    regulates_use/1,
    ensures_smooth_functioning_of_internal_market/1,
    allows_free_movement_of_goods_and_services/1,
    clear_in_protecting_fundamental_rights/1,
    robust_in_protecting_fundamental_rights/1,
    supportive_of_new_innovative_solutions/1,
    enables_european_ecosystem/1,
    creates_ai_systems_in_line_with_union_values/2,
    unlocks_potential_of_digital_transformation/2,
    lays_down_measures_in_support_of_innovation/1,
    focuses_on_small_and_medium_enterprises/1,
    includes_startups/1,
    supports_promoting_human_centric_approach/1,
    supports_being_global_leader/3,
    stated_by_european_council/1
]).

% Input predicates for entities not defined in this text
:- dynamic ai_system/1.
:- dynamic internal_market/1.
:- dynamic region/1.
:- dynamic actor/1.
:- dynamic ecosystem/1.

% Core need and objectives
union_legal_framework_needed(framework).

fosters_development_of_ai(framework) :-
    internal_market(Market),
    union_legal_framework_needed(framework).

fosters_use_of_ai(framework) :-
    internal_market(Market),
    union_legal_framework_needed(framework).

fosters_uptake_of_ai(framework) :-
    internal_market(Market),
    union_legal_framework_needed(framework).

% High level protection of public interests
meets_high_level_protection(framework, Interest) :-
    public_interest(Interest).

public_interest(health).
public_interest(safety).
public_interest(protection_of_fundamental_rights).
public_interest(democracy).
public_interest(rule_of_law).
public_interest(environmental_protection).

% Regulatory scope
regulates_placing_on_market(rules) :-
    ai_system(_System).

regulates_putting_into_service(rules) :-
    ai_system(_System).

regulates_use(rules) :-
    ai_system(_System).

% Market functioning and free movement
ensures_smooth_functioning_of_internal_market(rules) :-
    regulates_placing_on_market(rules),
    regulates_putting_into_service(rules),
    regulates_use(rules).

allows_free_movement_of_goods_and_services(rules) :-
    regulates_placing_on_market(rules),
    regulates_putting_into_service(rules),
    regulates_use(rules).

% Characteristics of the rules
clear_in_protecting_fundamental_rights(rules).
robust_in_protecting_fundamental_rights(rules).
supportive_of_new_innovative_solutions(rules).

% Ecosystem and values
enables_european_ecosystem(rules) :-
    ecosystem(E),
    actor(A),
    creates_ai_systems_in_line_with_union_values(A, E).

creates_ai_systems_in_line_with_union_values(Actor, Ecosystem) :-
    actor(Actor),
    ecosystem(Ecosystem),
    (public_actor(Actor) ; private_actor(Actor)).

% Digital transformation across regions
unlocks_potential_of_digital_transformation(rules, Region) :-
    region(Region).

% Innovation support measures
lays_down_measures_in_support_of_innovation(regulation).

focuses_on_small_and_medium_enterprises(regulation).

includes_startups(regulation) :-
    focuses_on_small_and_medium_enterprises(regulation).

% Human-centric approach and global leadership
supports_promoting_human_centric_approach(regulation) :-
    lays_down_measures_in_support_of_innovation(regulation),
    focuses_on_small_and_medium_enterprises(regulation).

supports_being_global_leader(regulation, Development, Attribute) :-
    supports_promoting_human_centric_approach(regulation),
    development_type(Development),
    ai_attribute(Attribute).

development_type(development).
ai_attribute(secure).
ai_attribute(trustworthy).
ai_attribute(ethical).

stated_by_european_council(objective(global_leadership)) :-
    supports_being_global_leader(regulation, _Dev, _Attr).
