% unit       : celex:32024R1689/oj#art_100
% title      : Administrative fines on Union institutions, bodies, offices and agencies
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : gpt-oss:120b-cloud
% prompt sha : de44e353c8c75ac0df5ec8164a64f009ce10732319d771c5b3d8ba8d3150ed4e
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_100').
:- pred union_entity/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_100').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_100').
:- pred amount_up_to/1, gloss('Maximum monetary amount for an administrative fine'), source('celex:32024R1689/oj#art_100').
:- pred permitted_impose_administrative_fine/3, gloss('Permission for the European Data Protection Supervisor to impose an administrative fine'), source('celex:32024R1689/oj#art_100').
:- pred required_consideration_of_factors/2, gloss('Requirement to take into account all relevant circumstances when deciding a fine'), source('celex:32024R1689/oj#art_100').
:- pred factor_nature_gravity_duration_applies/1, gloss('Nature, gravity and duration of the infringement are taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_purpose_applies/1, gloss('Purpose of the AI system concerned is taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_number_affected_applies/1, gloss('Number of affected persons is taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_level_of_damage_applies/1, gloss('Level of damage suffered by affected persons is taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_responsibility_applies/1, gloss('Degree of responsibility of the Union entity is taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_technical_measures_applies/1, gloss('Technical and organisational measures implemented are taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_mitigation_action_applies/1, gloss('Any action taken to mitigate damage is taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_cooperation_applies/1, gloss('Degree of cooperation with the Supervisor is taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_previous_infringements_applies/1, gloss('Any similar previous infringements are taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_manner_of_discovery_applies/1, gloss('Manner in which the infringement became known is taken into account'), source('celex:32024R1689/oj#art_100').
:- pred factor_annual_budget_applies/1, gloss('Annual budget of the Union entity is taken into account'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_with_prohibition_of_ai_practices/1, gloss('Non‑compliance with the prohibition of AI practices referred to in art 5'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_with_requirements_other_than_art5/1, gloss('Non‑compliance with any requirements or obligations other than those laid down in art 5'), source('celex:32024R1689/oj#art_100').
:- pred required_fine_up_to/2, gloss('Administrative fine up to a specified amount for a given non‑compliance'), source('celex:32024R1689/oj#art_100').
:- pred must_give_opportunity_to_be_heard/2, gloss('Duty to give the Union entity the opportunity to be heard before a decision'), source('celex:32024R1689/oj#art_100').
:- pred must_respect_rights_of_defence/1, gloss('Duty to fully respect the rights of defence of the parties concerned'), source('celex:32024R1689/oj#art_100').
:- pred must_allow_access_to_file/2, gloss('Duty to allow the Union entity access to the Supervisor’s file, subject to legitimate interest'), source('celex:32024R1689/oj#art_100').
:- pred legitimate_interest_excludes_access/1, gloss('Legitimate interest of individuals or undertakings that excludes access to the file'), source('celex:32024R1689/oj#art_100').
:- pred must_notify/2, gloss('Duty of the Supervisor to annually notify the Commission of imposed fines and related proceedings'), source('celex:32024R1689/oj#art_100').
:- pred annual_basis_applies/0, gloss('Indicates that a duty applies on an annual basis'), source('celex:32024R1689/oj#art_100').

% Permission to impose fines
permitted_impose_administrative_fine(EDPS, Entity, Amount) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity),
    amount_up_to(Amount).

provenance(permitted_impose_administrative_fine/3, 'celex:32024R1689/oj#art_100').

% Requirement to consider all listed factors when deciding a fine
required_consideration_of_factors(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity),
    factor_nature_gravity_duration_applies(Entity),
    factor_purpose_applies(Entity),
    factor_number_affected_applies(Entity),
    factor_level_of_damage_applies(Entity),
    factor_responsibility_applies(Entity),
    factor_technical_measures_applies(Entity),
    factor_mitigation_action_applies(Entity),
    factor_cooperation_applies(Entity),
    factor_previous_infringements_applies(Entity),
    factor_manner_of_discovery_applies(Entity),
    factor_annual_budget_applies(Entity).

provenance(required_consideration_of_factors/2, 'celex:32024R1689/oj#art_100').

% Factors (always applicable in the context of a fine)
factor_nature_gravity_duration_applies(_).
factor_purpose_applies(_).
factor_number_affected_applies(_).
factor_level_of_damage_applies(_).
factor_responsibility_applies(_).
factor_technical_measures_applies(_).
factor_mitigation_action_applies(_).
factor_cooperation_applies(_).
factor_previous_infringements_applies(_).
factor_manner_of_discovery_applies(_).
factor_annual_budget_applies(_).

% Fines for specific non‑compliance categories
required_fine_up_to(NonComp, 1500000) :-
    non_compliance_with_prohibition_of_ai_practices(NonComp).

provenance(required_fine_up_to/2, 'celex:32024R1689/oj#art_100').

required_fine_up_to(NonComp, 750000) :-
    non_compliance_with_requirements_other_than_art5(NonComp).

provenance(required_fine_up_to/2, 'celex:32024R1689/oj#art_100').

% Procedural duties
must_give_opportunity_to_be_heard(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity).

provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').

must_respect_rights_of_defence(Entity) :-
    union_entity(Entity).

provenance(must_respect_rights_of_defence/1, 'celex:32024R1689/oj#art_100').

must_allow_access_to_file(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity),
    \+ legitimate_interest_excludes_access(Entity).

provenance(must_allow_access_to_file/2, 'celex:32024R1689/oj#art_100').

% Duty to notify the Commission annually
must_notify(Commission, EDPS) :-
    commission(Commission),
    european_data_protection_supervisor(EDPS),
    annual_basis_applies.

provenance(must_notify/2, 'celex:32024R1689/oj#art_100').

% Supporting facts
annual_basis_applies.

% References
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').
