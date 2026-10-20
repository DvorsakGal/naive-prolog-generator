:- module(ai_act_recital, [
    needed/1,
    fosters/2,
    meets/1,
    objective_promoting_european_human_centric_approach/1,
    required_regulation/1,
    should_be_laid_down/1,
    ensures/2,
    allows/2,
    should_be_clear/1,
    should_be_robust/1,
    should_be_supportive/1,
    should_be_enabling/1,
    should_be_unlocking/1,
    supports/2,
    stated_by/2
]).

% Dynamic declarations for external input predicates
:- dynamic union_legal_framework/1.
:- dynamic ai/1.
:- dynamic internal_market/1.
:- dynamic public_interest/1.
:- dynamic health_and_safety/1.
:- dynamic fundamental_right/1.
:- dynamic democracy/1.
:- dynamic rule_of_law/1.
:- dynamic environmental_protection/1.
:- dynamic union_law/1.
:- dynamic ai_system/1.
:- dynamic small_medium_enterprise/1.
:- dynamic startup/1.
:- dynamic european_council/1.
:- dynamic secure/1.
:- dynamic trustworthy/1.
:- dynamic ethical/1.

% Core framework need
needed(Framework) :-
    union_legal_framework(Framework),
    harmonised_rules(Framework, ai),
    fosters(Framework, development_use_uptake(ai, internal_market)),
    meets(high_level_protection(public_interests)).

% What the framework fosters
fosters(Framework, development_use_uptake(ai, internal_market)) :-
    union_legal_framework(Framework),
    ai(ai),
    internal_market(internal_market).

% What the framework meets - public interests protection
meets(high_level_protection(public_interests)) :-
    public_interest(health_and_safety),
    public_interest(fundamental_rights),
    recognised_by(health_and_safety, union_law),
    recognised_by(fundamental_rights, union_law),
    includes(fundamental_rights, democracy),
    includes(fundamental_rights, rule_of_law),
    includes(fundamental_rights, environmental_protection),
    democracy(democracy),
    rule_of_law(rule_of_law),
    environmental_protection(environmental_protection),
    union_law(union_law).

% Rules that should be laid down
should_be_laid_down(Rules) :-
    required_regulation(Rules),
    regulates(Rules, placing_on_market(ai_system)),
    regulates(Rules, putting_into_service(ai_system)),
    regulates(Rules, use(ai_system)).

% Effects of laying down rules
ensures(Rules, smooth_functioning(internal_market)) :-
    should_be_laid_down(Rules),
    internal_market(internal_market).

allows(Rules, benefit_from(ai_system, free_movement_goods_services)) :-
    should_be_laid_down(Rules),
    ai_system(ai_system).

% Qualities the rules should have
should_be_clear(Rules) :-
    required_regulation(Rules).

should_be_robust(Rules) :-
    required_regulation(Rules),
    protects(Rules, fundamental_rights).

should_be_supportive(Rules) :-
    required_regulation(Rules),
    supportive_of(Rules, new_innovative_solutions).

should_be_enabling(Rules) :-
    required_regulation(Rules),
    enables(Rules, european_ecosystem(public_private_actors)),
    creating_in_line_with(public_private_actors, ai_system, union_values).

should_be_unlocking(Rules) :-
    required_regulation(Rules),
    unlocking_potential(Rules, digital_transformation),
    across_all_regions(digital_transformation, union).

% Innovation measures focus
supports(Regulation, innovation_measures) :-
    required_regulation(Regulation),
    particular_focus(innovation_measures, smes_including_startups).

smes_including_startups(SMEs) :-
    small_medium_enterprise(SMEs).
smes_including_startups(Startups) :-
    startup(Startups).

% Overall objective support
supports(Regulation, objective_promoting_european_human_centric_approach(ai)) :-
    required_regulation(Regulation),
    supports(Regulation, innovation_measures).

% Global leadership objective
supports(Regulation, global_leader(development(secure_trustworthy_ethical_ai))) :-
    required_regulation(Regulation),
    secure(secure),
    trustworthy(trustworthy),
    ethical(ethical).

stated_by(objective_promoting_european_human_centric_approach(ai), european_council) :-
    european_council(european_council).

% Helper predicates
harmonised_rules(Framework, ai) :-
    union_legal_framework(Framework).

required_regulation(Rules) :-
    should_be_laid_down(Rules).

regulates(Rules, placing_on_market(ai_system)) :-
    should_be_laid_down(Rules),
    ai_system(ai_system).

regulates(Rules, putting_into_service(ai_system)) :-
    should_be_laid_down(Rules),
    ai_system(ai_system).

regulates(Rules, use(ai_system)) :-
    should_be_laid_down(Rules),
    ai_system(ai_system).

recognised_by(Interest, union_law) :-
    public_interest(Interest),
    union_law(union_law).

includes(fundamental_rights, democracy) :-
    fundamental_right(fundamental_rights),
    democracy(democracy).

includes(fundamental_rights, rule_of_law) :-
    fundamental_right(fundamental_rights),
    rule_of_law(rule_of_law).

includes(fundamental_rights, environmental_protection) :-
    fundamental_right(fundamental_rights),
    environmental_protection(environmental_protection).

protects(Rules, fundamental_rights) :-
    should_be_laid_down(Rules),
    fundamental_right(fundamental_rights).

supportive_of(Rules, new_innovative_solutions) :-
    required_regulation(Rules).

enables(Rules, european_ecosystem(public_private_actors)) :-
    required_regulation(Rules).

creating_in_line_with(public_private_actors, ai_system, union_values) :-
    ai_system(ai_system).

unlocking_potential(Rules, digital_transformation) :-
    required_regulation(Rules).

across_all_regions(digital_transformation, union) :-
    required_regulation(_).

particular_focus(innovation_measures, smes_including_startups) :-
    small_medium_enterprise(_);
    startup(_).

development_use_uptake(ai, internal_market) :-
    ai(ai),
    internal_market(internal_market).

high_level_protection(public_interests) :-
    public_interest(_).

smooth_functioning(internal_market) :-
    internal_market(internal_market).

free_movement_goods_services :-
    true.

new_innovative_solutions :-
    true.

european_ecosystem(public_private_actors) :-
    true.

union_values :-
    true.

digital_transformation :-
    true.

union :-
    true.

public_interests :-
    public_interest(_).

secure_trustworthy_ethical_ai :-
    secure(_),
    trustworthy(_),
    ethical(_).

development(secure_trustworthy_ethical_ai) :-
    secure_trustworthy_ethical_ai.

global_leader(development(secure_trustworthy_ethical_ai)) :-
    development(secure_trustworthy_ethical_ai).

placing_on_market(ai_system) :-
    ai_system(_).

putting_into_service(ai_system) :-
    ai_system(_).

use(ai_system) :-
    ai_system(_).

benefit_from(ai_system, free_movement_goods_services) :-
    ai_system(_),
    free_movement_goods_services.
