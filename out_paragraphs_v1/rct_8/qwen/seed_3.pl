:- module(ai_regulation_objectives, [
    union_legal_framework_needed/1,
    fosters_development_use_uptake/2,
    meets_high_level_protection/2,
    public_interest/1,
    fundamental_right/1,
    recognised_by_union_law/1,
    protected_by_union_law/1,
    regulates_placing_on_market/2,
    regulates_putting_into_service/2,
    regulates_use/2,
    ensures_smooth_functioning/2,
    allows_free_movement/2,
    clear_rules/1,
    robust_in_protecting_fundamental_rights/1,
    supportive_of_innovative_solutions/1,
    enables_european_ecosystem/1,
    european_ecosystem_actor/1,
    creates_ai_systems_in_line_with_union_values/1,
    unlocks_digital_transformation_potential/2,
    includes_measures_supporting_innovation/1,
    focuses_on_smes/1,
    sme/1,
    startup/1,
    supports_human_centric_approach/1,
    supports_global_leadership/1,
    secure_ai/1,
    trustworthy_ai/1,
    ethical_ai/1,
    stated_by_european_council/1
]).

% Input predicates for entities not defined in this text
:- dynamic ai_system/1.
:- dynamic internal_market/1.
:- dynamic region/1.
:- dynamic union_value/1.

% Core necessity and objectives
union_legal_framework_needed(framework).

fosters_development_use_uptake(Framework, InternalMarket) :-
    union_legal_framework_needed(Framework),
    internal_market(InternalMarket).

meets_high_level_protection(Framework, PublicInterest) :-
    union_legal_framework_needed(Framework),
    public_interest(PublicInterest).

% Public interests and fundamental rights
public_interest(health).
public_interest(safety).
public_interest(protection_of_fundamental_rights).

fundamental_right(democracy).
fundamental_right(rule_of_law).
fundamental_right(environmental_protection).

recognised_by_union_law(X) :- fundamental_right(X).
protected_by_union_law(X) :- fundamental_right(X).

% Regulatory scope
regulates_placing_on_market(Rules, AISystem) :-
    ai_system(AISystem),
    certain_ai_system(AISystem).

regulates_putting_into_service(Rules, AISystem) :-
    ai_system(AISystem),
    certain_ai_system(AISystem).

regulates_use(Rules, AISystem) :-
    ai_system(AISystem),
    certain_ai_system(AISystem).

% Market functioning and free movement
ensures_smooth_functioning(Rules, InternalMarket) :-
    internal_market(InternalMarket).

allows_free_movement(Rules, GoodsAndServices) :-
    goods_and_services(GoodsAndServices).

% Rule characteristics
clear_rules(Rules).
robust_in_protecting_fundamental_rights(Rules).
supportive_of_innovative_solutions(Rules).

% Ecosystem and values
enables_european_ecosystem(Rules).

european_ecosystem_actor(public_actor).
european_ecosystem_actor(private_actor).

creates_ai_systems_in_line_with_union_values(Actor) :-
    european_ecosystem_actor(Actor).

unlocks_digital_transformation_potential(Rules, Region) :-
    region(Region).

% Innovation support and SMEs
includes_measures_supporting_innovation(Regulation).

focuses_on_smes(Measures) :-
    includes_measures_supporting_innovation(Measures).

sme(X) :- startup(X).
startup(_X). % Startups are a subset of SMEs per text

% Human-centric approach and global leadership
supports_human_centric_approach(Regulation).

supports_global_leadership(Regulation).

secure_ai(AI).
trustworthy_ai(AI).
ethical_ai(AI).

stated_by_european_council(Objective) :-
    supports_global_leadership(_Regulation),
    objective_global_leadership(Objective).

% Auxiliary predicates implied by text structure
certain_ai_system(_AISystem).
goods_and_services(goods).
goods_and_services(services).
objective_global_leadership(development_of_secure_trustworthy_ethical_ai).
