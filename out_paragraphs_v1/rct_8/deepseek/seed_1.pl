:- module(ai_legal_framework, [
    required_legal_framework/1,
    objective_foster_ai/1,
    objective_meet_protection/1,
    must_protect/2,
    recognised_protected/2,
    must_lay_down_rules/1,
    objective_smooth_functioning/1,
    objective_benefit_free_movement/1,
    must_be_clear/1,
    must_be_robust/1,
    must_be_supportive/1,
    must_enable/1,
    objective_unlock_potential/1,
    must_support/2,
    objective_promote_approach/1,
    objective_global_leader/1
]).

% A Union legal framework laying down harmonised rules on AI is needed
required_legal_framework(framework(harmonised_rules(ai))).

% to foster the development, use and uptake of AI in the internal market
objective_foster_ai(framework(harmonised_rules(ai))) :-
    required_legal_framework(framework(harmonised_rules(ai))).

% that at the same time meets a high level of protection of public interests
objective_meet_protection(framework(harmonised_rules(ai))) :-
    required_legal_framework(framework(harmonised_rules(ai))).

% such as health and safety and the protection of fundamental rights
must_protect(framework(harmonised_rules(ai)), health_and_safety).
must_protect(framework(harmonised_rules(ai)), fundamental_rights).

% including democracy, the rule of law and environmental protection
must_protect(framework(harmonised_rules(ai)), democracy).
must_protect(framework(harmonised_rules(ai)), rule_of_law).
must_protect(framework(harmonised_rules(ai)), environmental_protection).

% as recognised and protected by Union law
recognised_protected(union_law, Interest) :-
    must_protect(framework(harmonised_rules(ai)), Interest).

% To achieve that objective, rules regulating the placing on the market,
% the putting into service and the use of certain AI systems should be laid down
must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    required_legal_framework(framework(harmonised_rules(ai))).

% thus ensuring the smooth functioning of the internal market
objective_smooth_functioning(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% and allowing those systems to benefit from the principle of free movement of goods and services
objective_benefit_free_movement(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% Those rules should be clear and robust in protecting fundamental rights
must_be_clear(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).
must_be_robust(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_protect(framework(harmonised_rules(ai)), fundamental_rights).

% supportive of new innovative solutions
must_be_supportive(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% enabling a European ecosystem of public and private actors creating AI systems
% in line with Union values
must_enable(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% and unlocking the potential of the digital transformation across all regions of the Union
objective_unlock_potential(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))).

% By laying down those rules as well as measures in support of innovation
% with a particular focus on small and medium enterprises (SMEs), including startups
must_support(rules(regulating(placing_on_market, putting_into_service, use(ai_systems))), innovation).
must_support(measures, small_and_medium_enterprises).
must_support(measures, startups).

% this Regulation supports the objective of promoting the European human-centric approach to AI
objective_promote_approach(regulation) :-
    must_lay_down_rules(rules(regulating(placing_on_market, putting_into_service, use(ai_systems)))),
    must_support(measures, small_and_medium_enterprises).

% and being a global leader in the development of secure, trustworthy and ethical AI
% as stated by the European Council
objective_global_leader(regulation) :-
    objective_promote_approach(regulation).
