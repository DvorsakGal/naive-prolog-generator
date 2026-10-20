:- module(ai_regulation_framework, [
    objective_regulation/1,
    objective_foster_ai_development/1,
    objective_high_protection/1,
    objective_smooth_internal_market/1,
    objective_clear_robust_rules/1,
    objective_support_innovation/1,
    objective_european_ecosystem/1,
    objective_unlock_digital_transformation/1,
    objective_support_smes/1,
    objective_human_centric_ai/1,
    objective_global_leader/1,
    required_regulation/1,
    required_rules_ai_systems/1,
    required_measures_innovation/1,
    protected_interest/1,
    regulated_activity/1,
    supported_actor/1,
    focused_innovation_actor/1
]).

% The regulation is needed (required)
required_regulation(union_legal_framework).

% Objective: to foster development, use and uptake of AI in the internal market
objective_regulation(union_legal_framework) :-
    objective_foster_ai_development(union_legal_framework).

objective_foster_ai_development(framework) :-
    fosters_development(framework, ai),
    fosters_use(framework, ai),
    fosters_uptake(framework, ai),
    applies_to_market(framework, internal_market).

% Objective: to meet a high level of protection of public interests
objective_regulation(union_legal_framework) :-
    objective_high_protection(union_legal_framework).

objective_high_protection(framework) :-
    meets_level(framework, high),
    protects_interests(framework, public_interests).

% Protected public interests
protected_interest(health).
protected_interest(safety).
protected_interest(fundamental_rights).
protected_interest(democracy).
protected_interest(rule_of_law).
protected_interest(environmental_protection).

% These interests are recognised and protected by Union law
recognised_by_union_law(health).
recognised_by_union_law(safety).
recognised_by_union_law(fundamental_rights).
recognised_by_union_law(democracy).
recognised_by_union_law(rule_of_law).
recognised_by_union_law(environmental_protection).

% To achieve that objective, rules regulating certain AI systems should be laid down
required_rules_ai_systems(framework) :-
    objective_regulation(framework),
    regulates_activity(framework, placing_on_market),
    regulates_activity(framework, putting_into_service),
    regulates_activity(framework, use),
    applies_to_systems(framework, certain_ai_systems).

regulated_activity(placing_on_market).
regulated_activity(putting_into_service).
regulated_activity(use).

% Purpose: ensuring smooth functioning of internal market
objective_smooth_internal_market(rules) :-
    ensures_functioning(rules, smooth, internal_market).

% Purpose: allowing free movement of goods and services
objective_smooth_internal_market(rules) :-
    allows_movement(rules, free, goods),
    allows_movement(rules, free, services).

% Rules should be clear and robust in protecting fundamental rights
objective_clear_robust_rules(rules) :-
    property_of_rules(rules, clear),
    property_of_rules(rules, robust),
    protects_with_rules(rules, fundamental_rights).

% Rules should be supportive of new innovative solutions
objective_support_innovation(rules) :-
    supports_solutions(rules, new_innovative).

% Rules enable a European ecosystem of public and private actors creating AI systems in line with Union values
objective_european_ecosystem(rules) :-
    enables_ecosystem(rules, european),
    ecosystem_has_actors(rules, public),
    ecosystem_has_actors(rules, private),
    actors_create_systems(actors, ai_systems),
    in_line_with(ai_systems, union_values).

% Unlocking the potential of digital transformation across all regions of the Union
objective_unlock_digital_transformation(regulation) :-
    unlocks_potential(regulation, digital_transformation),
    applies_to_regions(regulation, all_regions(union)).

% Measures in support of innovation with particular focus on SMEs, including startups
required_measures_innovation(regulation) :-
    objective_regulation(regulation),
    supports_measures(regulation, innovation),
    focused_on(regulation, smes),
    focused_on(regulation, startups).

focused_innovation_actor(sme).
focused_innovation_actor(startup).

supported_actor(sme).
supported_actor(startup).

% This Regulation supports the objective of promoting the European human-centric approach to AI
objective_human_centric_ai(regulation) :-
    promotes_approach(regulation, european_human_centric, ai).

% And being a global leader in the development of secure, trustworthy and ethical AI
objective_global_leader(regulation) :-
    objective_regulation(regulation),
    leader_in(regulation, global, development(ai)),
    property_of_ai(ai, secure),
    property_of_ai(ai, trustworthy),
    property_of_ai(ai, ethical),
    stated_by(european_council, objective(regulation)).

% The European Council stated this objective
stated_by(european_council, objective_human_centric_ai).
stated_by(european_council, objective_global_leader).
