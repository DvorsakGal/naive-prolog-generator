% unit       : celex:32024R1689/oj#art_1
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : b187d21f3533573a0860673abdff279c56d0e0e9d07f3a2ee788ee35cf5b9d8e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 72445f12b6d5d1df98fc64746ed85422aab4191cde5bbb1f7baa4cd67c15da45
% cached     : False
% title      : Subject matter`
:- pred objective_internal_market_improvement/1, gloss('regulation pursues internal market improvement and trustworthy AI uptake'), source('celex:32024R1689/oj#art_1').
:- pred objective_fundamental_rights_protection/1, gloss('regulation protects health, safety, and fundamental rights'), source('celex:32024R1689/oj#art_1').
:- pred subject_matter_scope/2, gloss('regulation establishes specific category of rules or measures'), source('celex:32024R1689/oj#art_1').

% Paragraph 1: Statutory objectives of the regulation
objective_internal_market_improvement(ai_act).
objective_fundamental_rights_protection(ai_act).

% Paragraph 2: Subject matter laid down by the regulation
subject_matter_scope(ai_act, harmonised_rules(market_and_use, ai_system)).
subject_matter_scope(ai_act, prohibitions(ai_practices)).
subject_matter_scope(ai_act, high_risk_requirements(operator)).
subject_matter_scope(ai_act, transparency_rules(ai_system)).
subject_matter_scope(ai_act, harmonised_rules(placing_on_market, general_purpose_ai_model)).
subject_matter_scope(ai_act, rules(market_surveillance_and_governance)).
subject_matter_scope(ai_act, innovation_support_measures(smes_and_startups)).

% Provenance facts
provenance(objective_internal_market_improvement/1, 'celex:32024R1689/oj#art_1').
provenance(objective_fundamental_rights_protection/1, 'celex:32024R1689/oj#art_1').
provenance(subject_matter_scope/2, 'celex:32024R1689/oj#art_1').

% References
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').
