# art_49_par_4

## Text

For high-risk AI systems referred to in Annex III, points (1), (6) and (7), in the areas of law enforcement, migration, asylum and border control management, the registration referred to in Article 49(1), Article 49(2), Article 49(3) shall be in a secure non-public section of the EU database referred to in Article 71 and shall include only the following information, as applicable, referred to in:
(a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9;
(b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII;
(c) Annex VIII, points (1) to (3);
(d) Annex IX, points (1), (2), (3) and (5).
Only the Commission and national authorities referred to in Article 74(8) shall have access to the respective restricted sections of the EU database listed in Article 49(4).

## Numbers

| output | loads | module | clauses | preds | inputs | coverage | violations |
|---|---|---|---|---|---|---|---|
| deepseek/seed_1 | yes | high_risk_ai_registration | 38 | 17 | 1 | 0.774 | 0 |
| deepseek/seed_2 | yes | high_risk_ai_registration | 13 | 4 | 4 | 0.71 | 1 |
| deepseek/seed_3 | NO | high_risk_ai_registration | 31 | 9 | 7 | 0.677 | 6 |
| gemini/seed_1 | NO | high_risk_ai_system_registration | 33 | 8 | 7 | 0.677 | 6 |
| gemini/seed_2 | yes | high_risk_ai_system_registration | 28 | 5 | 10 | 0.677 | 7 |
| gemini/seed_3 | yes | eu_database_restricted_registration | 37 | 11 | 6 | 0.645 | 6 |
| kimi/seed_1 | yes | high_risk_ai_registration | 50 | 17 | 11 | 0.742 | 21 |
| kimi/seed_2 | yes | high_risk_ai_registration | 51 | 15 | 11 | 0.774 | 18 |
| kimi/seed_3 | NO | high_risk_ai_registration | 32 | 23 | 15 | 0.774 | 42 |
| mistral/seed_1 | NO | high_risk_ai_registration | 13 | 8 | 7 | 0.742 | 16 |
| mistral/seed_2 | NO | high_risk_ai_registration | 27 | 11 | 8 | 0.774 | 14 |
| mistral/seed_3 | NO | high_risk_ai_registration | 11 | 7 | 6 | 0.774 | 14 |
| qwen/seed_1 | yes | secure_registration_requirements | 17 | 6 | 19 | 0.839 | 34 |
| qwen/seed_2 | yes | secure_registration_requirements | 20 | 11 | 4 | 0.742 | 7 |
| qwen/seed_3 | yes | secure_registration_requirements | 16 | 7 | 5 | 0.774 | 9 |

Within-model (3 seeds): deepseek: J_preds 0.105, J_clauses 0.06, consensus 0.14; gemini: J_preds 0.123, J_clauses 0.0, consensus 0.0; kimi: J_preds 0.252, J_clauses 0.103, consensus 0.102; mistral: J_preds 0.222, J_clauses 0.048, consensus 0.045; qwen: J_preds 0.144, J_clauses 0.091, consensus 0.078

## deepseek seed 1

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_applies/1,
    must_register_in/2,
    secure_non_public_section/1,
    eu_database/1,
    must_include_information/2,
    annex_viii_point/1,
    annex_viii_section_b_point/1,
    annex_ix_point/1,
    commission/1,
    national_authority/1,
    must_have_access/2,
    restricted_section/1
]).

% High-risk AI systems in specific areas
high_risk_ai_system(S) :-
    annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7).

law_enforcement_area(S) :-
    high_risk_ai_system(S).
migration_area(S) :-
    high_risk_ai_system(S).
asylum_area(S) :-
    high_risk_ai_system(S).
border_control_management_area(S) :-
    high_risk_ai_system(S).

% Registration requirement
registration_applies(S) :-
    high_risk_ai_system(S),
    (   law_enforcement_area(S)
    ;   migration_area(S)
    ;   asylum_area(S)
    ;   border_control_management_area(S)
    ).

must_register_in(S, secure_non_public_section(Database)) :-
    registration_applies(S),
    eu_database(Database).

secure_non_public_section(Database) :-
    eu_database(Database).

eu_database(article_71_database).

% Information to be included
must_include_information(S, annex_viii_points_1_to_10_except_6_8_9) :-
    registration_applies(S).

must_include_information(S, annex_viii_section_b_points_1_to_5_8_9) :-
    registration_applies(S).

must_include_information(S, annex_viii_points_1_to_3) :-
    registration_applies(S).

must_include_information(S, annex_ix_points_1_2_3_5) :-
    registration_applies(S).

% Annex VIII points
annex_viii_point(1).
annex_viii_point(2).
annex_viii_point(3).
annex_viii_point(4).
annex_viii_point(5).
annex_viii_point(7).
annex_viii_point(10).

% Annex VIII Section B points
annex_viii_section_b_point(1).
annex_viii_section_b_point(2).
annex_viii_section_b_point(3).
annex_viii_section_b_point(4).
annex_viii_section_b_point(5).
annex_viii_section_b_point(8).
annex_viii_section_b_point(9).

% Annex IX points
annex_ix_point(1).
annex_ix_point(2).
annex_ix_point(3).
annex_ix_point(5).

% Access to restricted sections
commission(commission).
national_authority(article_74_8_authority).

must_have_access(commission, restricted_section(article_49_4_section)).
must_have_access(article_74_8_authority, restricted_section(article_49_4_section)).

restricted_section(article_49_4_section).

% Input predicates
:- dynamic annex_iii_point/2.
```

## deepseek seed 2

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    registration_in_secure_non_public_section/1,
    registration_includes_information/2,
    access_to_restricted_section/2
]).

% High-risk AI systems in specific areas
high_risk_ai_system(S) :-
    annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7).

% Registration must be in a secure non-public section of the EU database
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system(S),
    area_applies(S, law_enforcement).
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system(S),
    area_applies(S, migration).
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system(S),
    area_applies(S, asylum).
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system(S),
    area_applies(S, border_control_management).

% Information to be included in the registration
registration_includes_information(S, annex_viii_points([1,2,3,4,5,7,10])) :-
    registration_in_secure_non_public_section(S).
registration_includes_information(S, annex_viii_section_b_points([1,2,3,4,5,8,9])) :-
    registration_in_secure_non_public_section(S).
registration_includes_information(S, annex_viii_points([1,2,3])) :-
    registration_in_secure_non_public_section(S).
registration_includes_information(S, annex_ix_points([1,2,3,5])) :-
    registration_in_secure_non_public_section(S).

% Access to restricted sections
access_to_restricted_section(commission, S) :-
    registration_in_secure_non_public_section(S).
access_to_restricted_section(Authority, S) :-
    national_authority(Authority),
    article_74_8_authority(Authority),
    registration_in_secure_non_public_section(S).

% Input predicates
:- dynamic annex_iii_point/2.
:- dynamic area_applies/2.
:- dynamic national_authority/1.
:- dynamic article_74_8_authority/1.
```

## deepseek seed 3

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    registration_applies/1,
    must_register_in/2,
    secure_non_public_section/1,
    eu_database/1,
    must_include_information/2,
    annex_viii_information/1,
    section_b_annex_viii_information/1,
    annex_ix_information/1,
    must_have_access_to/2,
    commission/1,
    national_authority/1,
    restricted_section/1
]).

% High-risk AI systems covered by this registration requirement
high_risk_ai_system(S) :-
    annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7).

% Areas where the system is deployed
area(S, law_enforcement).
area(S, migration).
area(S, asylum).
area(S, border_control_management).

% Registration applies to systems in these areas
registration_applies(S) :-
    high_risk_ai_system(S),
    area(S, _).

% Registration must be in a secure non-public section of the EU database
must_register_in(S, Section) :-
    registration_applies(S),
    secure_non_public_section(Section),
    eu_database(Database),
    section_of(Section, Database).

% The registration must include only the applicable information
must_include_information(S, Info) :-
    registration_applies(S),
    annex_viii_information(Info).
must_include_information(S, Info) :-
    registration_applies(S),
    section_b_annex_viii_information(Info).
must_include_information(S, Info) :-
    registration_applies(S),
    annex_ix_information(Info).

% Annex VIII points 1 to 10, with exceptions
annex_viii_information(point(1)).
annex_viii_information(point(2)).
annex_viii_information(point(3)).
annex_viii_information(point(4)).
annex_viii_information(point(5)).
annex_viii_information(point(7)).
annex_viii_information(point(10)).

% Section B of Annex VIII, points 1 to 5, and points 8 and 9
section_b_annex_viii_information(section_b_point(1)).
section_b_annex_viii_information(section_b_point(2)).
section_b_annex_viii_information(section_b_point(3)).
section_b_annex_viii_information(section_b_point(4)).
section_b_annex_viii_information(section_b_point(5)).
section_b_annex_viii_information(section_b_point(8)).
section_b_annex_viii_information(section_b_point(9)).

% Annex IX points 1, 2, 3 and 5
annex_ix_information(point(1)).
annex_ix_information(point(2)).
annex_ix_information(point(3)).
annex_ix_information(point(5)).

% Access to restricted sections
must_have_access_to(Actor, Section) :-
    restricted_section(Section),
    (   commission(Actor)
    ;   national_authority(Actor)
    ).

% Declare input predicates
:- dynamic annex_iii_point/2.
:- dynamic section_of/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic restricted_section/1.
```

## gemini seed 1

```prolog
:- module(high_risk_ai_system_registration, [
    high_risk(1),
    high_risk_area(1),
    sensitive_high_risk_ai_system/1,
    registration_applies/1,
    required_secure_non_public_registration/1,
    permitted_registration_information/2,
    prohibited_registration_information/2,
    permitted_database_access/2
]).

:- dynamic annex_iii_point/2.
:- dynamic system_area/2.
:- dynamic registration_subject/1.
:- dynamic registration_type/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic article_74_8_authority/1.

high_risk(System) :-
    annex_iii_point(System, point(1)).
high_risk(System) :-
    annex_iii_point(System, point(6)).
high_risk(System) :-
    annex_iii_point(System, point(7)).

high_risk_area(System) :-
    system_area(System, law_enforcement).
high_risk_area(System) :-
    system_area(System, migration).
high_risk_area(System) :-
    system_area(System, asylum).
high_risk_area(System) :-
    system_area(System, border_control_management).

sensitive_high_risk_ai_system(System) :-
    high_risk(System),
    high_risk_area(System).

registration_applies(Registration) :-
    registration_type(Registration, article_49_1).
registration_applies(Registration) :-
    registration_type(Registration, article_49_2).
registration_applies(Registration) :-
    registration_type(Registration, article_49_3).

required_secure_non_public_registration(registration(System, Registration)) :-
    sensitive_high_risk_ai_system(System),
    registration_subject(registration(System, Registration)),
    registration_applies(Registration).

% Information permitted under point (a): Annex VIII points 1 to 10 except 6, 8, 9
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(1))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(2))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(3))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(4))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(5))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(7))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_point(point(10))) :-
    sensitive_high_risk_ai_system(System).

% Information permitted under point (b): Annex VIII Section B points 1 to 5, 8, 9
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(1))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(2))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(3))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(4))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(5))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(8))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_viii_section_b_point(point(9))) :-
    sensitive_high_risk_ai_system(System).

% Information permitted under point (c): Annex VIII points 1 to 3
% (already covered under (a), included for fidelity to point (c))

% Information permitted under point (d): Annex IX points 1, 2, 3 and 5
permitted_registration_information(registration(System, _Registration), annex_ix_point(point(1))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_ix_point(point(2))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_ix_point(point(3))) :-
    sensitive_high_risk_ai_system(System).
permitted_registration_information(registration(System, _Registration), annex_ix_point(point(5))) :-
    sensitive_high_risk_ai_system(System).

prohibited_registration_information(registration(System, Registration), Info) :-
    required_secure_non_public_registration(registration(System, Registration)),
    \+ permitted_registration_information(registration(System, Registration), Info).

permitted_database_access(Actor, restricted_section(database_article_71)) :-
    commission(Actor).
permitted_database_access(Actor, restricted_section(database_article_71)) :-
    national_authority(Actor),
    article_74_8_authority(Actor).
```

## gemini seed 2

```prolog
:- module(high_risk_ai_system_registration, [
    high_risk_ai_system/1,
    sensitive_area_applies/1,
    registration_in_secure_non_public_section/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic high_risk_ai_system_annex_iii_point_1/1.
:- dynamic high_risk_ai_system_annex_iii_point_6/1.
:- dynamic high_risk_ai_system_annex_iii_point_7/1.
:- dynamic law_enforcement/1.
:- dynamic migration/1.
:- dynamic asylum/1.
:- dynamic border_control_management/1.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic restricted_section_eu_database_article_49_4/1.

% High-risk AI systems referred to in Annex III, points (1), (6) and (7)
high_risk_ai_system(System) :-
    high_risk_ai_system_annex_iii_point_1(System).
high_risk_ai_system(System) :-
    high_risk_ai_system_annex_iii_point_6(System).
high_risk_ai_system(System) :-
    high_risk_ai_system_annex_iii_point_7(System).

% In the areas of law enforcement, migration, asylum and border control management
sensitive_area_applies(System) :-
    law_enforcement(System).
sensitive_area_applies(System) :-
    migration(System).
sensitive_area_applies(System) :-
    asylum(System).
sensitive_area_applies(System) :-
    border_control_management(System).

% Registration shall be in a secure non-public section of the EU database
registration_in_secure_non_public_section(registration(System)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).

% Permitted registration information includes only specified points:
% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
permitted_registration_information(System, annex_viii_point(1)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(2)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(3)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(4)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(5)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(7)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_point(10)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
permitted_registration_information(System, annex_viii_section_b_point(1)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(2)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(3)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(4)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(5)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(8)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_viii_section_b_point(9)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).

% (c) Annex VIII, points (1) to (3) (redundant with (a) but explicitly referenced)
% Already covered by points 1, 2, 3 above.

% (d) Annex IX, points (1), (2), (3) and (5)
permitted_registration_information(System, annex_ix_point(1)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_ix_point(2)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_ix_point(3)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).
permitted_registration_information(System, annex_ix_point(5)) :-
    high_risk_ai_system(System),
    sensitive_area_applies(System).

% Access to respective restricted sections of the EU database
permitted_access(Actor, Section) :-
    commission(Actor),
    restricted_section_eu_database_article_49_4(Section).
permitted_access(Actor, Section) :-
    national_authority_article_74_8(Actor),
    restricted_section_eu_database_article_49_4(Section).
```

## gemini seed 3

```prolog
:- module(eu_database_restricted_registration, [
    high_risk_ai_system/1,
    covered_annex_iii_point/1,
    covered_area/1,
    restricted_registration_applies/1,
    required_secure_non_public_section/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic annex_iii_point/2.
:- dynamic area_of_system/2.
:- dynamic registration_entry/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic restricted_section_of_eu_database/1.

covered_annex_iii_point(point(1)).
covered_annex_iii_point(point(6)).
covered_annex_iii_point(point(7)).

covered_area(law_enforcement).
covered_area(migration).
covered_area(asylum).
covered_area(border_control_management).

high_risk_ai_system(System) :-
    annex_iii_point(System, Point),
    covered_annex_iii_point(Point),
    area_of_system(System, Area),
    covered_area(Area).

restricted_registration_applies(Registration) :-
    registration_entry(Registration, System),
    high_risk_ai_system(System).

required_secure_non_public_section(Registration) :-
    restricted_registration_applies(Registration).

% Information item permitted under (a): Annex VIII, points 1 to 10 except 6, 8, 9
permitted_registration_information(Registration, annex_viii(point(Point))) :-
    restricted_registration_applies(Registration),
    annex_viii_permitted_point(Point).

annex_viii_permitted_point(1).
annex_viii_permitted_point(2).
annex_viii_permitted_point(3).
annex_viii_permitted_point(4).
annex_viii_permitted_point(5).
annex_viii_permitted_point(7).
annex_viii_permitted_point(10).

% Information item permitted under (b): Annex VIII, Section B, points 1 to 5, 8, 9
permitted_registration_information(Registration, annex_viii(section_b(point(Point)))) :-
    restricted_registration_applies(Registration),
    annex_viii_section_b_permitted_point(Point).

annex_viii_section_b_permitted_point(1).
annex_viii_section_b_permitted_point(2).
annex_viii_section_b_permitted_point(3).
annex_viii_section_b_permitted_point(4).
annex_viii_section_b_permitted_point(5).
annex_viii_section_b_permitted_point(8).
annex_viii_section_b_permitted_point(9).

% Information item permitted under (c): Annex VIII, points 1 to 3
permitted_registration_information(Registration, annex_viii(point(Point))) :-
    restricted_registration_applies(Registration),
    annex_viii_c_permitted_point(Point).

annex_viii_c_permitted_point(1).
annex_viii_c_permitted_point(2).
annex_viii_c_permitted_point(3).

% Information item permitted under (d): Annex IX, points 1, 2, 3, 5
permitted_registration_information(Registration, annex_ix(point(Point))) :-
    restricted_registration_applies(Registration),
    annex_ix_permitted_point(Point).

annex_ix_permitted_point(1).
annex_ix_permitted_point(2).
annex_ix_permitted_point(3).
annex_ix_permitted_point(5).

% Access permissions: only Commission and relevant national authorities
permitted_access(Actor, restricted_section(Section)) :-
    restricted_section_of_eu_database(Section),
    commission(Actor).

permitted_access(Actor, restricted_section(Section)) :-
    restricted_section_of_eu_database(Section),
    national_authority(Actor).
```

## kimi seed 1

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_required/1,
    secure_non_public_section/1,
    eu_database/1,
    commission/1,
    national_authority/1,
    has_access/2,
    restricted_section/1,
    annex_viii_point/1,
    annex_viii_section_b_point/1,
    annex_ix_point/1,
    included_information/2,
    exception_point/1,
    article_49_1_applies/1,
    article_49_2_applies/1,
    article_49_3_applies/1,
    article_49_4_applies/1,
    article_71_database/1,
    article_74_8_authority/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic article_49_1_applies/1.
:- dynamic article_49_2_applies/1.
:- dynamic article_49_3_applies/1.
:- dynamic article_49_4_applies/1.

% Areas covered by this provision
covered_area(law_enforcement).
covered_area(migration).
covered_area(asylum).
covered_area(border_control_management).

% Annex III points covered
annex_iii_point(1).
annex_iii_point(6).
annex_iii_point(7).

% Annex VIII points (1) to (10)
annex_viii_point(1).
annex_viii_point(2).
annex_viii_point(3).
annex_viii_point(4).
annex_viii_point(5).
annex_viii_point(6).
annex_viii_point(7).
annex_viii_point(8).
annex_viii_point(9).
annex_viii_point(10).

% Exception points for (a)
exception_point(6).
exception_point(8).
exception_point(9).

% Annex VIII Section B points
annex_viii_section_b_point(1).
annex_viii_section_b_point(2).
annex_viii_section_b_point(3).
annex_viii_section_b_point(4).
annex_viii_section_b_point(5).
annex_viii_section_b_point(8).
annex_viii_section_b_point(9).

% Annex IX points
annex_ix_point(1).
annex_ix_point(2).
annex_ix_point(3).
annex_ix_point(5).

% Database and section definitions
eu_database(eu_database_article_71).
article_71_database(eu_database_article_71).
secure_non_public_section(secure_non_public_section_article_71).

% Registration applies to high-risk AI systems in specified areas and articles
registration_required(S) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    point_referred_in_annex_iii(S, P),
    covered_area_for_system(S, Area),
    (article_49_1_applies(S); article_49_2_applies(S); article_49_3_applies(S)).

covered_area_for_system(S, Area) :-
    law_enforcement_area(S), Area = law_enforcement.
covered_area_for_system(S, Area) :-
    migration_area(S), Area = migration.
covered_area_for_system(S, Area) :-
    asylum_area(S), Area = asylum.
covered_area_for_system(S, Area) :-
    border_control_management_area(S), Area = border_control_management.

% Location of registration
must_be_in_section(S, secure_non_public_section_article_71) :-
    registration_required(S),
    eu_database(eu_database_article_71).

% Included information for Article 49(1) - (a)
included_information(S, annex_viii_point(P)) :-
    registration_required(S),
    article_49_1_applies(S),
    annex_viii_point(P),
    \+ exception_point(P).

% Included information for Article 49(2) - (b)
included_information(S, annex_viii_section_b_point(P)) :-
    registration_required(S),
    article_49_2_applies(S),
    annex_viii_section_b_point(P).

% Included information for Article 49(3) - (c)
included_information(S, annex_viii_point(P)) :-
    registration_required(S),
    article_49_3_applies(S),
    member(P, [1, 2, 3]).

% Included information for Article 49(3) - (d)
included_information(S, annex_ix_point(P)) :-
    registration_required(S),
    article_49_3_applies(S),
    annex_ix_point(P).

% Access restrictions
article_74_8_authority(Authority) :-
    national_authority(Authority).

restricted_section(secure_non_public_section_article_71).

has_access(commission, Section) :-
    commission(commission),
    restricted_section(Section).

has_access(Authority, Section) :-
    article_74_8_authority(Authority),
    restricted_section(Section).

% Helper predicate
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
```

## kimi seed 2

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    referred_in_annex_iii_point/2,
    registration_required/1,
    must_register_in_section/2,
    secure_non_public_section/1,
    eu_database/1,
    referred_in_article_49/2,
    includes_information/2,
    annex_viii_point/1,
    section_b_point/1,
    annex_ix_point/1,
    exception_point/1,
    must_have_access/2,
    commission/1,
    national_authority/1,
    referred_in_article_74/2,
    restricted_section/1,
    listed_in_article_49/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic referred_in_annex_iii_point/2.
:- dynamic referred_in_article_49/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic referred_in_article_74/2.
:- dynamic listed_in_article_49/2.

% Areas covered by this provision
covered_area(A) :-
    law_enforcement_area(A).
covered_area(A) :-
    migration_area(A).
covered_area(A) :-
    asylum_area(A).
covered_area(A) :-
    border_control_management_area(A).

% Relevant Annex III points for this provision
relevant_annex_iii_point(1).
relevant_annex_iii_point(6).
relevant_annex_iii_point(7).

% The EU database referred to in Article 71
eu_database(eu_database_article_71).

% Secure non-public section of the EU database
secure_non_public_section(secure_non_public_section(eu_database_article_71)).

% Registration requirements for specified high-risk AI systems
registration_required(S) :-
    high_risk_ai_system(S),
    referred_in_annex_iii_point(S, P),
    relevant_annex_iii_point(P),
    covered_area(_A).

% Duty to register in secure non-public section
must_register_in_section(S, secure_non_public_section(eu_database_article_71)) :-
    registration_required(S),
    referred_in_article_49(S, 1).
must_register_in_section(S, secure_non_public_section(eu_database_article_71)) :-
    registration_required(S),
    referred_in_article_49(S, 2).
must_register_in_section(S, secure_non_public_section(eu_database_article_71)) :-
    registration_required(S),
    referred_in_article_49(S, 3).

% Information to be included - point (a): Annex VIII points (1) to (10), except 6, 8, 9
includes_information(S, annex_viii_point(P)) :-
    must_register_in_section(S, _),
    annex_viii_point(P),
    between(1, 10, P),
    \+ exception_point(P).

% Information to be included - point (b): Section B points 1 to 5, and points 8 and 9
includes_information(S, section_b_point(P)) :-
    must_register_in_section(S, _),
    section_b_point(P),
    between(1, 5, P).
includes_information(S, section_b_point(P)) :-
    must_register_in_section(S, _),
    section_b_point(P),
    member(P, [8, 9]).

% Information to be included - point (c): Annex VIII points (1) to (3)
includes_information(S, annex_viii_point(P)) :-
    must_register_in_section(S, _),
    annex_viii_point(P),
    between(1, 3, P).

% Information to be included - point (d): Annex IX points (1), (2), (3) and (5)
includes_information(S, annex_ix_point(P)) :-
    must_register_in_section(S, _),
    annex_ix_point(P),
    member(P, [1, 2, 3, 5]).

% Exception points for Annex VIII under point (a)
exception_point(6).
exception_point(8).
exception_point(9).

% Annex VIII points
annex_viii_point(1).
annex_viii_point(2).
annex_viii_point(3).
annex_viii_point(4).
annex_viii_point(5).
annex_viii_point(6).
annex_viii_point(7).
annex_viii_point(8).
annex_viii_point(9).
annex_viii_point(10).

% Section B points
section_b_point(1).
section_b_point(2).
section_b_point(3).
section_b_point(4).
section_b_point(5).
section_b_point(6).
section_b_point(7).
section_b_point(8).
section_b_point(9).

% Annex IX points
annex_ix_point(1).
annex_ix_point(2).
annex_ix_point(3).
annex_ix_point(4).
annex_ix_point(5).

% Restricted sections of the EU database
restricted_section(Section) :-
    listed_in_article_49(Section, 4).

% Access rights - Commission
must_have_access(Commission, Section) :-
    commission(Commission),
    restricted_section(Section).

% Access rights - national authorities referred to in Article 74(8)
must_have_access(Authority, Section) :-
    national_authority(Authority),
    referred_in_article_74(Authority, 8),
    restricted_section(Section).

% Helper predicate
between(Low, High, Value) :-
    Low =< Value,
    Value =< High.

member(Element, [Element|_]).
member(Element, [_|Rest]) :-
    member(Element, Rest).
```

## kimi seed 3

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_required/1,
    secure_non_public_section/1,
    eu_database/1,
    commission/1,
    national_authority/1,
    has_access/2,
    restricted_section/1,
    annex_viii_point/1,
    annex_viii_section_b_point/1,
    annex_ix_point/1,
    included_information/2,
    exception_applies/1,
    article_49_1_applies/1,
    article_49_2_applies/1,
    article_49_3_applies/1,
    article_49_4_applies/1,
    article_71_database/1,
    article_74_8_authority/1,
    annex_iii_point/1,
    point_1_applies/1,
    point_6_applies/1,
    point_7_applies/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic eu_database/1.
:- dynamic article_49_1_applies/1.
:- dynamic article_49_2_applies/1.
:- dynamic article_49_3_applies/1.
:- dynamic article_49_4_applies/1.
:- dynamic article_71_database/1.
:- dynamic article_74_8_authority/1.
:- dynamic annex_iii_point/1.

% Domain definitions for areas
area_law_enforcement(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).

area_migration(S) :-
    high_risk_ai_system(S),
    migration_area(S).

area_asylum(S) :-
    high_risk_ai_system(S),
    asylum_area(S).

area_border_control_management(S) :-
    high_risk_ai_system(S),
    border_control_management_area(S).

% Relevant Annex III points
point_1_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, 1).

point_6_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, 6).

point_7_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, 7).

relevant_annex_iii_point(S) :-
    point_1_applies(S).

relevant_annex_iii_point(S) :-
    point_6_applies(S).

relevant_annex_iii_point(S) :-
    point_7_applies(S).

% Covered systems: high-risk AI in specified areas with relevant Annex III points
covered_system(S) :-
    high_risk_ai_system(S),
    relevant_annex_iii_point(S),
    (area_law_enforcement(S); area_migration(S); area_asylum(S); area_border_control_management(S)).

% Registration requirement
registration_required(S) :-
    covered_system(S),
    (article_49_1_applies(S); article_49_2_applies(S); article_49_3_applies(S)).

% Secure non-public section requirement
secure_non_public_section(S) :-
    registration_required(S),
    article_71_database(Database),
    eu_database(Database).

% Information to be included - Annex VIII points (1) to (10) with exceptions
annex_viii_point(S, Point) :-
    covered_system(S),
    between(1, 10, Point),
    \+ exception_applies(Point).

% Exceptions for points 6, 8, 9
exception_applies(6).
exception_applies(8).
exception_applies(9).

% Information to be included - Section B points
annex_viii_section_b_point(S, Point) :-
    covered_system(S),
    (between(1, 5, Point); member(Point, [8, 9])).

% Information to be included - Annex VIII points (1) to (3)
annex_viii_limited_point(S, Point) :-
    covered_system(S),
    between(1, 3, Point).

% Information to be included - Annex IX points
annex_ix_point(S, Point) :-
    covered_system(S),
    member(Point, [1, 2, 3, 5]).

% Included information predicates for different applicable articles
included_information(S, annex_viii_points(1, 10, except([6, 8, 9]))) :-
    article_49_1_applies(S),
    covered_system(S).

included_information(S, annex_viii_section_b([1, 2, 3, 4, 5, 8, 9])) :-
    article_49_2_applies(S),
    covered_system(S).

included_information(S, annex_viii_points(1, 3)) :-
    article_49_3_applies(S),
    covered_system(S).

included_information(S, annex_ix_points([1, 2, 3, 5])) :-
    article_49_4_applies(S),
    covered_system(S).

% Restricted sections
restricted_section(S) :-
    article_49_4_applies(S),
    covered_system(S).

% Access control - only Commission and national authorities under Article 74(8)
has_access(Commission, Section) :-
    commission(Commission),
    restricted_section(Section).

has_access(Authority, Section) :-
    national_authority(Authority),
    article_74_8_authority(Authority),
    restricted_section(Section).

% No other access permitted
access_permitted(Actor, Section) :-
    has_access(Actor, Section).

prohibited_access(Actor, Section) :-
    restricted_section(Section),
    \+ has_access(Actor, Section).

% Helper predicate
between(Low, High, Value) :-
    Low =< Value,
    Value =< High.

member(Element, [Element|_]).
member(Element, [_|Tail]) :-
    member(Element, Tail).
```

## mistral seed 1

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    annex_iii_point/1,
    area/1,
    registration_section/1,
    registration_information/1,
    eu_database/1,
    restricted_section/1,
    access_to_restricted_section/2,
    commission/1,
    national_authority/1
]).

% Input predicates about the world the text does not settle
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/1.
:- dynamic area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Article 74(8) national authorities
national_authority_referred_to_in_article_74_8(A) :-
    national_authority(A).

% EU database referred to in Article 71
eu_database(EU) :-
    eu_database_article_71(EU).

:- dynamic eu_database_article_71/1.

% Registration under Article 49(1), 49(2), 49(3) for specific high-risk AI systems
registration_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, P),
    member(P, [point_1, point_6, point_7]),
    area(S, A),
    member(A, [law_enforcement, migration, asylum, border_control_management]).

% The registration shall be in a secure non-public section of the EU database
registration_section(S, secure_non_public_section(EU)) :-
    registration_applies(S),
    eu_database(EU).

% Information included in the registration, as applicable
registration_information(S, annex_viii_points_1_to_10_except_6_8_9) :-
    registration_applies(S),
    registration_referred_to_in(S, article_49_1).

registration_information(S, section_b_points_1_to_5_and_8_9_of_annex_viii) :-
    registration_applies(S),
    registration_referred_to_in(S, article_49_2).

registration_information(S, annex_viii_points_1_to_3) :-
    registration_applies(S),
    registration_referred_to_in(S, article_49_3).

registration_information(S, annex_ix_points_1_2_3_5) :-
    registration_applies(S),
    registration_referred_to_in(S, article_49_4).

:- dynamic registration_referred_to_in/2.

% Restricted sections of the EU database listed in Article 49(4)
restricted_section(S, restricted_section(EU)) :-
    registration_applies(S),
    eu_database(EU),
    registration_referred_to_in(S, article_49_4).

% Only the Commission and national authorities referred to in Article 74(8) shall have access
access_to_restricted_section(A, restricted_section(EU)) :-
    restricted_section(_, restricted_section(EU)),
    commission(A).

access_to_restricted_section(A, restricted_section(EU)) :-
    restricted_section(_, restricted_section(EU)),
    national_authority_referred_to_in_article_74_8(A).

% Helper: membership
member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).
```

## mistral seed 2

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    annex_iii_point/1,
    area/1,
    registration_in_secure_non_public_section/2,
    registration_includes_information/3,
    information_source/1,
    permitted_access/2,
    commission/1,
    national_authority/1,
    eu_database/1,
    restricted_section/2,
    article_49_paragraph/1,
    article_71/1,
    article_74_paragraph_8/1
]).

% Input predicates about the world the text does not settle
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/1.
:- dynamic area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic eu_database/1.
:- dynamic article_49_paragraph/1.
:- dynamic article_71/1.
:- dynamic article_74_paragraph_8/1.

% The specific high-risk AI systems: Annex III, points (1), (6) and (7)
annex_iii_point(point_1).
annex_iii_point(point_6).
annex_iii_point(point_7).

% The areas: law enforcement, migration, asylum and border control management
area(law_enforcement).
area(migration).
area(asylum).
area(border_control_management).

% Article 49 paragraphs (1), (2), (3) all refer to registration
article_49_paragraph(paragraph_1).
article_49_paragraph(paragraph_2).
article_49_paragraph(paragraph_3).

% Article 71 refers to the EU database
article_71(article_71).

% Article 74(8) refers to national authorities
article_74_paragraph_8(article_74_paragraph_8).

% Registration for these high-risk AI systems in these areas shall be in a secure non-public section of the EU database
registration_in_secure_non_public_section(S, Db) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    area(A),
    applies_to_area(S, A),
    refers_to_annex_iii_point(S, P),
    eu_database(Db),
    article_71(Art71),
    referred_to_in(Db, Art71),
    article_49_paragraph(Para),
    registration_referred_to_in(S, Para).

% Helper: the system applies to one of the specified areas
applies_to_area(S, law_enforcement) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(law_enforcement).
applies_to_area(S, migration) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(migration).
applies_to_area(S, asylum) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(asylum).
applies_to_area(S, border_control_management) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(border_control_management).

% The registration shall include only the following information, as applicable
% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
registration_includes_information(S, annex_viii_points_1_to_10_except_6_8_9) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(A),
    applies_to_area(S, A),
    information_source(annex_viii_points_1_to_10_except_6_8_9).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
registration_includes_information(S, annex_viii_section_b_points_1_to_5_and_8_9) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(A),
    applies_to_area(S, A),
    information_source(annex_viii_section_b_points_1_to_5_and_8_9).

% (c) Annex VIII, points (1) to (3)
registration_includes_information(S, annex_viii_points_1_to_3) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(A),
    applies_to_area(S, A),
    information_source(annex_viii_points_1_to_3).

% (d) Annex IX, points (1), (2), (3) and (5)
registration_includes_information(S, annex_ix_points_1_2_3_5) :-
    high_risk_ai_system(S),
    annex_iii_point(P),
    refers_to_annex_iii_point(S, P),
    area(A),
    applies_to_area(S, A),
    information_source(annex_ix_points_1_2_3_5).

% The information sources
information_source(annex_viii_points_1_to_10_except_6_8_9).
information_source(annex_viii_section_b_points_1_to_5_and_8_9).
information_source(annex_viii_points_1_to_3).
information_source(annex_ix_points_1_2_3_5).

% Only the Commission and national authorities referred to in Article 74(8) shall have access
% to the respective restricted sections of the EU database listed in Article 49(4)
permitted_access(Accessor, RestrictedSection) :-
    restricted_section(Db, RestrictedSection),
    eu_database(Db),
    article_49_paragraph_4_lists(Db),
    (
        commission(Accessor)
        ;
        national_authority(Accessor),
        article_74_paragraph_8(Art74_8),
        referred_to_in(Accessor, Art74_8)
    ).

% Helper: Article 49(4) lists restricted sections of the EU database
article_49_paragraph_4_lists(Db) :-
    eu_database(Db),
    restricted_section(Db, _).

% Helper predicates that would be defined elsewhere or as facts
% refers_to_annex_iii_point(S, P) - the system S refers to Annex III point P
% registration_referred_to_in(S, Para) - the registration of S is referred to in Article 49 paragraph Para
% referred_to_in(X, Art) - X is referred to in Article Art
% restricted_section(Db, Section) - Section is a restricted section of database Db

:- dynamic refers_to_annex_iii_point/2.
:- dynamic registration_referred_to_in/2.
:- dynamic referred_to_in/2.
:- dynamic restricted_section/2.
```

## mistral seed 3

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    annex_iii_point/1,
    area/1,
    registration_section/1,
    registration_information/1,
    access_to_restricted_section/2,
    commission/1,
    national_authority/1
]).

% Input predicates: facts about the world the text does not settle
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/1.
:- dynamic area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Article 74(8) national authorities
national_authority_referred_to_in_article_74_8(A) :-
    national_authority(A).

% The registration under Article 49(1), 49(2), 49(3) for high-risk AI systems
% in Annex III, points (1), (6) and (7), in the areas of law enforcement,
% migration, asylum and border control management
registration_applies(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, P),
    member(P, [point(1), point(6), point(7)]),
    area(S, A),
    member(A, [law_enforcement, migration, asylum, border_control_management]).

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

% The registration shall be in a secure non-public section of the EU database
% referred to in Article 71
registration_section(S, secure_non_public_section(eu_database(article_71))) :-
    registration_applies(S).

% The registration shall include only the following information, as applicable

% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
registration_information(S, annex_viii_points_except_6_8_9) :-
    registration_applies(S),
    registration_information_applicable(S, a).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
registration_information(S, annex_viii_section_b_points_1_to_5_and_8_and_9) :-
    registration_applies(S),
    registration_information_applicable(S, b).

% (c) Annex VIII, points (1) to (3)
registration_information(S, annex_viii_points_1_to_3) :-
    registration_applies(S),
    registration_information_applicable(S, c).

% (d) Annex IX, points (1), (2), (3) and (5)
registration_information(S, annex_ix_points_1_2_3_and_5) :-
    registration_applies(S),
    registration_information_applicable(S, d).

% Input predicate: which information categories are applicable to a system
:- dynamic registration_information_applicable/2.

% Only the Commission and national authorities referred to in Article 74(8)
% shall have access to the respective restricted sections of the EU database
% listed in Article 49(4)
access_to_restricted_section(A, restricted_section(eu_database(article_71), article_49_4)) :-
    registration_applies(S),
    registration_section(S, Section),
    restricted_section_of(Section, restricted_section(eu_database(article_71), article_49_4)),
    (
        commission(A)
    ;
        national_authority_referred_to_in_article_74_8(A)
    ).

restricted_section_of(secure_non_public_section(eu_database(article_71)), restricted_section(eu_database(article_71), article_49_4)).
```

## qwen seed 1

```prolog
:- module(secure_registration_requirements, [
    high_risk_ai_system/1,
    referred_to_in_annex_iii_point_1/1,
    referred_to_in_annex_iii_point_6/1,
    referred_to_in_annex_iii_point_7/1,
    law_enforcement_applies/1,
    migration_applies/1,
    asylum_applies/1,
    border_control_management_applies/1,
    registration_referred_to_in_article_49_1/1,
    registration_referred_to_in_article_49_2/1,
    registration_referred_to_in_article_49_3/1,
    eu_database_referred_to_in_article_71/1,
    must_be_in_secure_non_public_section/2,
    must_include_only_applicable_information/2,
    annex_viii_points_1_to_10_except_6_8_9/1,
    section_b_points_1_to_5_and_8_9_of_annex_viii/1,
    annex_viii_points_1_to_3/1,
    annex_ix_points_1_2_3_and_5/1,
    commission/1,
    national_authority_referred_to_in_article_74_8/1,
    restricted_section_listed_in_article_49_4/1,
    has_access_to_restricted_section/2
]).

% Input predicates for entities and references not defined in this text
:- dynamic high_risk_ai_system/1.
:- dynamic referred_to_in_annex_iii_point_1/1.
:- dynamic referred_to_in_annex_iii_point_6/1.
:- dynamic referred_to_in_annex_iii_point_7/1.
:- dynamic law_enforcement_applies/1.
:- dynamic migration_applies/1.
:- dynamic asylum_applies/1.
:- dynamic border_control_management_applies/1.
:- dynamic registration_referred_to_in_article_49_1/1.
:- dynamic registration_referred_to_in_article_49_2/1.
:- dynamic registration_referred_to_in_article_49_3/1.
:- dynamic eu_database_referred_to_in_article_71/1.
:- dynamic annex_viii_points_1_to_10_except_6_8_9/1.
:- dynamic section_b_points_1_to_5_and_8_9_of_annex_viii/1.
:- dynamic annex_viii_points_1_to_3/1.
:- dynamic annex_ix_points_1_2_3_and_5/1.
:- dynamic commission/1.
:- dynamic national_authority_referred_to_in_article_74_8/1.
:- dynamic restricted_section_listed_in_article_49_4/1.

% Conditions for applicability of secure registration requirements
applicable_high_risk_system(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point_1(S).

applicable_high_risk_system(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point_6(S).

applicable_high_risk_system(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point_7(S).

applicable_domain(S) :-
    law_enforcement_applies(S).

applicable_domain(S) :-
    migration_applies(S).

applicable_domain(S) :-
    asylum_applies(S).

applicable_domain(S) :-
    border_control_management_applies(S).

% Registration location requirement
must_be_in_secure_non_public_section(R, D) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    eu_database_referred_to_in_article_71(D).

registration_for_system(R, S) :-
    registration_referred_to_in_article_49_1(R),
    high_risk_ai_system(S).

registration_for_system(R, S) :-
    registration_referred_to_in_article_49_2(R),
    high_risk_ai_system(S).

registration_for_system(R, S) :-
    registration_referred_to_in_article_49_3(R),
    high_risk_ai_system(S).

% Information inclusion requirements
must_include_only_applicable_information(R, I) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    annex_viii_points_1_to_10_except_6_8_9(I).

must_include_only_applicable_information(R, I) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    section_b_points_1_to_5_and_8_9_of_annex_viii(I).

must_include_only_applicable_information(R, I) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    annex_viii_points_1_to_3(I).

must_include_only_applicable_information(R, I) :-
    applicable_high_risk_system(S),
    applicable_domain(S),
    registration_for_system(R, S),
    annex_ix_points_1_2_3_and_5(I).

% Access restrictions
has_access_to_restricted_section(C, Sec) :-
    commission(C),
    restricted_section_listed_in_article_49_4(Sec).

has_access_to_restricted_section(A, Sec) :-
    national_authority_referred_to_in_article_74_8(A),
    restricted_section_listed_in_article_49_4(Sec).
```

## qwen seed 2

```prolog
:- module(secure_registration_requirements, [
    high_risk_ai_system/1,
    referred_to_in_annex_iii_point/2,
    area_applies/2,
    must_register_in_secure_non_public_section/2,
    eu_database/1,
    secure_non_public_section/2,
    registration_must_include_only/2,
    annex_viii_point/2,
    section_b_of_annex_viii_point/2,
    annex_ix_point/2,
    commission/1,
    national_authority_referred_to_in_article_74_8/1,
    has_access_to_restricted_section/2,
    restricted_section_of_eu_database/2
]).

% Input predicates for entities and references not defined in this text
:- dynamic high_risk_ai_system/1.
:- dynamic eu_database/1.
:- dynamic commission/1.
:- dynamic national_authority_referred_to_in_article_74_8/1.

% Conditions for applicability of the secure registration requirement
referred_to_in_annex_iii_point(S, 1) :- high_risk_ai_system(S).
referred_to_in_annex_iii_point(S, 6) :- high_risk_ai_system(S).
referred_to_in_annex_iii_point(S, 7) :- high_risk_ai_system(S).

area_applies(S, law_enforcement) :- high_risk_ai_system(S).
area_applies(S, migration) :- high_risk_ai_system(S).
area_applies(S, asylum) :- high_risk_ai_system(S).
area_applies(S, border_control_management) :- high_risk_ai_system(S).

% Secure non-public section of the EU database
secure_non_public_section(Section, Database) :-
    eu_database(Database),
    restricted_section_of_eu_database(Section, Database).

% Registration obligation for qualifying systems
must_register_in_secure_non_public_section(S, Section) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, _Area),
    secure_non_public_section(Section, _Database).

% Information inclusion constraints
registration_must_include_only(S, InfoSet) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, _Area),
    permitted_information_set(S, InfoSet).

permitted_information_set(S, annex_viii_points_1_to_10_excluding_6_8_9) :-
    high_risk_ai_system(S).

permitted_information_set(S, section_b_annex_viii_points_1_to_5_and_8_9) :-
    high_risk_ai_system(S).

permitted_information_set(S, annex_viii_points_1_to_3) :-
    high_risk_ai_system(S).

permitted_information_set(S, annex_ix_points_1_2_3_5) :-
    high_risk_ai_system(S).

% Annex point references (structural facts)
annex_viii_point(S, N) :-
    high_risk_ai_system(S),
    member(N, [1,2,3,4,5,6,7,8,9,10]).

section_b_of_annex_viii_point(S, N) :-
    high_risk_ai_system(S),
    member(N, [1,2,3,4,5,8,9]).

annex_ix_point(S, N) :-
    high_risk_ai_system(S),
    member(N, [1,2,3,5]).

% Access control to restricted sections
restricted_section_of_eu_database(Section, Database) :-
    eu_database(Database),
    secure_non_public_section(Section, Database).

has_access_to_restricted_section(commission, Section) :-
    restricted_section_of_eu_database(Section, _Database).

has_access_to_restricted_section(Authority, Section) :-
    national_authority_referred_to_in_article_74_8(Authority),
    restricted_section_of_eu_database(Section, _Database).
```

## qwen seed 3

```prolog
:- module(secure_registration_requirements, [
    high_risk_ai_system/1,
    referred_to_in_annex_iii_point/2,
    area_applies/2,
    must_register_in_secure_section/2,
    eu_database/1,
    secure_non_public_section/2,
    registration_information_includes/2,
    annex_viii_point/1,
    annex_ix_point/1,
    section_b_point/1,
    commission/1,
    national_authority_referred_to_in_article_74_8/1,
    has_access_to_restricted_section/2,
    restricted_section_listed_in_article_49_4/1
]).

% Input predicates for entities and references not defined in this text
:- dynamic high_risk_ai_system/1.
:- dynamic eu_database/1.
:- dynamic commission/1.
:- dynamic national_authority_referred_to_in_article_74_8/1.
:- dynamic annex_viii_point/1.
:- dynamic annex_ix_point/1.
:- dynamic section_b_point/1.

% Conditions for applicability
referred_to_in_annex_iii_point(S, 1) :- high_risk_ai_system(S).
referred_to_in_annex_iii_point(S, 6) :- high_risk_ai_system(S).
referred_to_in_annex_iii_point(S, 7) :- high_risk_ai_system(S).

area_applies(S, law_enforcement) :- high_risk_ai_system(S).
area_applies(S, migration) :- high_risk_ai_system(S).
area_applies(S, asylum) :- high_risk_ai_system(S).
area_applies(S, border_control_management) :- high_risk_ai_system(S).

% Secure non-public section of the EU database
secure_non_public_section(Section, Database) :-
    eu_database(Database),
    secure_section(Section, Database).

% Registration obligation for specific high-risk AI systems
must_register_in_secure_section(S, Section) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]),
    secure_non_public_section(Section, _Database).

% Information inclusion requirements for registration
registration_information_includes(S, annex_viii_points_1_to_10_excluding_6_8_9) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

registration_information_includes(S, section_b_points_1_to_5_and_8_9) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

registration_information_includes(S, annex_viii_points_1_to_3) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

registration_information_includes(S, annex_ix_points_1_2_3_5) :-
    high_risk_ai_system(S),
    referred_to_in_annex_iii_point(S, Point),
    member(Point, [1, 6, 7]),
    area_applies(S, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

% Access restrictions to restricted sections
restricted_section_listed_in_article_49_4(Section) :-
    secure_non_public_section(Section, _Database).

has_access_to_restricted_section(commission, Section) :-
    restricted_section_listed_in_article_49_4(Section).

has_access_to_restricted_section(Authority, Section) :-
    national_authority_referred_to_in_article_74_8(Authority),
    restricted_section_listed_in_article_49_4(Section).
```
