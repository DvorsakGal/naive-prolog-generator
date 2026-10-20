:- module(ai_regulation_framework, [
    objective_regulation/1,
    required_union_legal_framework/1,
    objective_ai_development/1,
    objective_ai_use/1,
    objective_ai_uptake/1,
    objective_internal_market/1,
    objective_high_protection/1,
    protected_interest/1,
    required_rules_ai_systems/1,
    objective_smooth_internal_market/1,
    objective_free_movement/1,
    quality_rule/1,
    objective_support_innovation/1,
    objective_european_ecosystem/1,
    objective_digital_transformation/1,
    objective_support_sme/1,
    objective_human_centric_ai/1,
    objective_global_leader/1,
    quality_ai/1
  ]).

% The regulation itself is the objective
objective_regulation(regulation(ai)).

% A Union legal framework is required
required_union_legal_framework(framework(union, legal, harmonised_rules(ai))).

% The framework fosters development, use and uptake of AI
objective_ai_development(development(ai)).
objective_ai_use(use(ai)).
objective_ai_uptake(uptake(ai)).

% The context is the internal market
objective_internal_market(internal_market).

% High level of protection of public interests is required
objective_high_protection(protection(high, public_interests)).

% Public interests that must be protected
protected_interest(health).
protected_interest(safety).
protected_interest(fundamental_rights).
protected_interest(democracy).
protected_interest(rule_of_law).
protected_interest(environmental_protection).

% Rules regulating placing on market, putting into service, and use of certain AI systems are required
required_rules_ai_systems(rules(regulating(placing_on_market(ai_systems)))).
required_rules_ai_systems(rules(regulating(putting_into_service(ai_systems)))).
required_rules_ai_systems(rules(regulating(use(ai_systems)))).

% These rules ensure smooth functioning of internal market
objective_smooth_internal_market(functioning(smooth, internal_market)).

% These rules allow free movement of goods and services
objective_free_movement(free_movement(goods)).
objective_free_movement(free_movement(services)).

% The rules should be clear and robust in protecting fundamental rights
quality_rule(clear).
quality_rule(robust(protecting(fundamental_rights))).

% The rules are supportive of new innovative solutions
objective_support_innovation(supportive(innovative_solutions)).

% The rules enable a European ecosystem of public and private actors creating AI systems in line with Union values
objective_european_ecosystem(ecosystem(european, actors(public_private, creating(ai_systems, in_line_with(union_values))))).

% The rules unlock the potential of digital transformation across all regions of the Union
objective_digital_transformation(transformation(digital, across(regions(union)))).

% The regulation supports SMEs including startups
objective_support_sme(small_and_medium_enterprises).
objective_support_sme(startups).

% The regulation promotes the European human-centric approach to AI
objective_human_centric_ai(approach(human_centric, european, ai)).

% The regulation aims to be a global leader in development of secure, trustworthy and ethical AI
objective_global_leader(leader(global, development(ai))).

% The AI must be secure, trustworthy and ethical
quality_ai(secure).
quality_ai(trustworthy).
quality_ai(ethical).
