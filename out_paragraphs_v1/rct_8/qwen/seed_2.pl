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
    supports_innovation_measures/1,
    focuses_on_smes/1,
    includes_startups/1,
    promotes_human_centric_approach_to_ai/1,
    aims_at_global_leadership/1,
    secure_ai/1,
    trustworthy_ai/1,
    ethical_ai/1,
    stated_by_european_council/1
]).

% Union legal framework necessity and scope
union_legal_framework_needed(harmonised_rules_on_ai).

fosters_development_of_ai(harmonised_rules_on_ai).
fosters_use_of_ai(harmonised_rules_on_ai).
fosters_uptake_of_ai(harmonised_rules_on_ai).

meets_high_level_protection(harmonised_rules_on_ai, PublicInterest) :-
    public_interest(PublicInterest).

public_interest(health).
public_interest(safety).
public_interest(protection_of_fundamental_rights).
public_interest(democracy).
public_interest(rule_of_law).
public_interest(environmental_protection).

% Regulatory measures for AI systems
regulates_placing_on_market(rules_for_ai_systems).
regulates_putting_into_service(rules_for_ai_systems).
regulates_use(rules_for_ai_systems).

ensures_smooth_functioning_of_internal_market(rules_for_ai_systems).
allows_free_movement_of_goods_and_services(rules_for_ai_systems).

% Characteristics of the rules
clear_in_protecting_fundamental_rights(rules_for_ai_systems).
robust_in_protecting_fundamental_rights(rules_for_ai_systems).
supportive_of_new_innovative_solutions(rules_for_ai_systems).

enables_european_ecosystem(european_ecosystem).

creates_ai_systems_in_line_with_union_values(Actor, european_ecosystem) :-
    ecosystem_actor(Actor).

:- dynamic ecosystem_actor/1.

unlocks_potential_of_digital_transformation(rules_for_ai_systems, Region) :-
    union_region(Region).

:- dynamic union_region/1.

% Innovation support and SME focus
supports_innovation_measures(this_regulation).
focuses_on_smes(this_regulation).
includes_startups(this_regulation).

% Strategic objectives
promotes_human_centric_approach_to_ai(this_regulation).

aims_at_global_leadership(this_regulation).

secure_ai(global_leadership_target).
trustworthy_ai(global_leadership_target).
ethical_ai(global_leadership_target).

stated_by_european_council(global_leadership_target).
