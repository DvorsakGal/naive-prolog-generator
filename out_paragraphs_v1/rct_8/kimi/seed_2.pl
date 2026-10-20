:- module(ai_act_preamble, [
    needed/1,
    fosters/2,
    meets/2,
    protects/2,
    objective/1,
    regulates/2,
    ensures/2,
    allows/2,
    clear/1,
    robust/1,
    supportive/1,
    enabling/2,
    unlocking/2,
    supports/2,
    promotes/2,
    global_leader/2,
    places_on_market/2,
    puts_into_service/2,
    uses/2,
    ai_system/1,
    union_legal_framework/1,
    harmonised_rule/1,
    internal_market/1,
    public_interest/1,
    health_and_safety/1,
    fundamental_right/1,
    democracy/1,
    rule_of_law/1,
    environmental_protection/1,
    union_law/1,
    smooth_functioning/1,
    free_movement/1,
    goods/1,
    service/1,
    innovative_solution/1,
    european_ecosystem/1,
    public_actor/1,
    private_actor/1,
    union_value/1,
    digital_transformation/1,
    region/1,
    measure/1,
    support_innovation/1,
    small_medium_enterprise/1,
    startup/1,
    regulation/1,
    european_human_centric_approach/1,
    secure_ai/1,
    trustworthy_ai/1,
    ethical_ai/1,
    european_council/1
]).

:- dynamic ai_system/1, union_legal_framework/1, harmonised_rule/1, internal_market/1,
    public_interest/1, health_and_safety/1, fundamental_right/1, democracy/1,
    rule_of_law/1, environmental_protection/1, union_law/1, smooth_functioning/1,
    free_movement/1, goods/1, service/1, innovative_solution/1, european_ecosystem/1,
    public_actor/1, private_actor/1, union_value/1, digital_transformation/1,
    region/1, measure/1, support_innovation/1, small_medium_enterprise/1, startup/1,
    regulation/1, european_human_centric_approach/1, secure_ai/1, trustworthy_ai/1,
    ethical_ai/1, european_council/1.

% The Union legal framework with harmonised rules on AI is needed
needed(union_legal_framework(harmonised_rules_on_ai)).

% It fosters development, use and uptake of AI in the internal market
fosters(union_legal_framework(harmonised_rules_on_ai), development(ai_system(_S))).
fosters(union_legal_framework(harmonised_rules_on_ai), use(ai_system(_S))).
fosters(union_legal_framework(harmonised_rules_on_ai), uptake(ai_system(_S), internal_market(_M))).

% It meets a high level of protection of public interests
meets(union_legal_framework(harmonised_rules_on_ai), protection(public_interest(_P))).

% Public interests include health and safety
public_interest(health_and_safety).
public_interest(fundamental_right).

% Fundamental rights include democracy, rule of law, environmental protection
fundamental_right(democracy).
fundamental_right(rule_of_law).
fundamental_right(environmental_protection).

% These are recognised and protected by Union law
recognised_and_protected_by(health_and_safety, union_law).
recognised_and_protected_by(fundamental_right, union_law).

% Objective: rules regulating placing on market, putting into service, use of certain AI systems
objective(regulation(placing_on_market_putting_into_service_use(ai_system(_S)))).

% This ensures smooth functioning of internal market
ensures(regulation(placing_on_market_putting_into_service_use(ai_system(_S))), smooth_functioning(internal_market(_M))).

% This allows systems to benefit from free movement of goods and services
allows(regulation(placing_on_market_putting_into_service_use(ai_system(_S))), benefit_from(free_movement(goods_and_services))).

% Rules should be clear and robust in protecting fundamental rights
clear(rule(_R)) :- rule_protects_fundamental_rights(_R).
robust(rule(_R)) :- rule_protects_fundamental_rights(_R).

% Rules should be supportive of new innovative solutions
supportive(rule(_R)) :- rule_supports_innovation(_R).

% Rules should enable European ecosystem of public and private actors creating AI systems in line with Union values
enabling(rule(_R), european_ecosystem(public_and_private_actors_creating_ai_systems(union_values))).

% Rules should unlock potential of digital transformation across all regions
unlocking(rule(_R), potential(digital_transformation, all_regions)).

% Regulation supports objective of promoting European human-centric approach to AI
supports(regulation(_R), objective(promoting(european_human_centric_approach(ai)))).

% Regulation supports being global leader in secure, trustworthy and ethical AI
supports(regulation(_R), global_leader(development(secure_trustworthy_ethical_ai), european_council_statement)).

% Measures in support of innovation with particular focus on SMEs including startups
measure(support_innovation(small_medium_enterprise(_Sme))).
measure(support_innovation(startup(_Su))).

% European Council stated objective of being global leader
stated_by(european_council, objective(global_leader(development(secure_trustworthy_ethical_ai)))).

% Helper predicates for compound concepts
rule_protects_fundamental_rights(_R).
rule_supports_innovation(_R).

% Core activities regulated
places_on_market(_Actor, ai_system(_S)).
puts_into_service(_Actor, ai_system(_S)).
uses(_Actor, ai_system(_S)).

% Derived: secure, trustworthy, ethical AI are properties
secure_ai(ai_system(_S)).
trustworthy_ai(ai_system(_S)).
ethical_ai(ai_system(_S)).

% Union values guide creation
in_line_with(creation(ai_system(_S)), union_value(_V)).
