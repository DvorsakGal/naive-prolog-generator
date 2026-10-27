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
| deepseek/seed_1 | yes | high_risk_ai_registration | 17 | 10 | 13 | 0.742 | 13 |
| deepseek/seed_2 | NO | high_risk_ai_registration | 20 | 12 | 11 | 0.742 | 7 |
| deepseek/seed_3 | NO | high_risk_ai_registration | 14 | 11 | 9 | 0.645 | 11 |
| gemini/seed_1 | yes | registration_in_restricted_sections | 9 | 5 | 11 | 0.677 | 4 |
| gemini/seed_2 | yes | sensitive_high_risk_ai_registration | 27 | 4 | 10 | 0.645 | 7 |
| gemini/seed_3 | yes | high_risk_ai_system_registration | 38 | 13 | 17 | 0.645 | 20 |
| kimi/seed_1 | yes | high_risk_ai_registration | 27 | 14 | 7 | 0.774 | 6 |
| kimi/seed_2 | yes | high_risk_ai_registration | 55 | 20 | 7 | 0.71 | 20 |
| kimi/seed_3 | NO | high_risk_ai_registration | 26 | 17 | 3 | 0.774 | 3 |
| mistral/seed_1 | yes | high_risk_ai_registration | 12 | 7 | 10 | 0.839 | 8 |
| mistral/seed_2 | yes | high_risk_ai_registration | 19 | 4 | 13 | 0.806 | 8 |
| mistral/seed_3 | NO | high_risk_ai_registration | 19 | 4 | 11 | 0.774 | 6 |
| qwen/seed_1 | yes | secure_registration_requirements | 19 | 9 | 13 | 0.677 | 11 |
| qwen/seed_2 | NO | secure_registration_requirements | 12 | 5 | 10 | 0.742 | 17 |
| qwen/seed_3 | yes | secure_registration_requirements | 15 | 6 | 9 | 0.71 | 5 |

Within-model (3 seeds): deepseek: J_preds 0.156, J_clauses 0.029, consensus 0.153; gemini: J_preds 0.253, J_clauses 0.0, consensus 0.0; kimi: J_preds 0.145, J_clauses 0.03, consensus 0.038; mistral: J_preds 0.4, J_clauses 0.154, consensus 0.083; qwen: J_preds 0.256, J_clauses 0.01, consensus 0.093

## deepseek seed 1

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    must_register_in/2,
    secure_non_public_section/1,
    eu_database/1,
    must_include_information/2,
    annex_viii_point/1,
    annex_ix_point/1,
    section_b_point/1,
    commission/1,
    national_authority/1,
    must_have_access_to/2,
    restricted_section/1
]).

% System classification
high_risk_ai_system(S) :-
    annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7).

% Area classification
law_enforcement_area(S) :-
    high_risk_ai_system(S),
    area(S, law_enforcement).
migration_area(S) :-
    high_risk_ai_system(S),
    area(S, migration).
asylum_area(S) :-
    high_risk_ai_system(S),
    area(S, asylum).
border_control_management_area(S) :-
    high_risk_ai_system(S),
    area(S, border_control_management).

% Registration obligation
must_register_in(S, secure_non_public_section(Database)) :-
    high_risk_ai_system(S),
    (   law_enforcement_area(S)
    ;   migration_area(S)
    ;   asylum_area(S)
    ;   border_control_management_area(S)
    ),
    eu_database(Database),
    article_71(Database).

% Information to be included
must_include_information(S, Info) :-
    must_register_in(S, _),
    applicable_information(S, Info).

applicable_information(S, annex_viii_point(P)) :-
    annex_viii_point(P),
    between(1, 10, P),
    \+ excluded_annex_viii_point(P).

excluded_annex_viii_point(6).
excluded_annex_viii_point(8).
excluded_annex_viii_point(9).

applicable_information(S, section_b_point(P)) :-
    section_b_point(P),
    member(P, [1, 2, 3, 4, 5, 8, 9]).

applicable_information(S, annex_viii_point(P)) :-
    annex_viii_point(P),
    member(P, [1, 2, 3]).

applicable_information(S, annex_ix_point(P)) :-
    annex_ix_point(P),
    member(P, [1, 2, 3, 5]).

% Access control
must_have_access_to(Actor, restricted_section(Database)) :-
    (   commission(Actor)
    ;   national_authority(Actor)
    ),
    article_74_8(Actor),
    eu_database(Database),
    article_49_4(Database).

% Dynamic predicates for external facts
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic article_71/1.
:- dynamic article_74_8/1.
:- dynamic article_49_4/1.
:- dynamic annex_viii_point/1.
:- dynamic annex_ix_point/1.
:- dynamic section_b_point/1.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic eu_database/1.
:- dynamic restricted_section/1.
:- dynamic secure_non_public_section/1.
```

## deepseek seed 2

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    registration_applies/1,
    must_be_in_secure_non_public_section/2,
    must_include_information/2,
    must_include_only_information/2,
    information_included/2,
    commission/1,
    national_authority/1,
    must_have_access/2,
    restricted_section/1
]).

% System classification
high_risk_ai_system(S) :-
    annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7).

% Area classification
law_enforcement_area(S) :-
    high_risk_ai_system(S),
    in_area(S, law_enforcement).
migration_area(S) :-
    high_risk_ai_system(S),
    in_area(S, migration).
asylum_area(S) :-
    high_risk_ai_system(S),
    in_area(S, asylum).
border_control_management_area(S) :-
    high_risk_ai_system(S),
    in_area(S, border_control_management).

% Registration obligation
registration_applies(S) :-
    high_risk_ai_system(S),
    (   law_enforcement_area(S)
    ;   migration_area(S)
    ;   asylum_area(S)
    ;   border_control_management_area(S)
    ).

must_be_in_secure_non_public_section(Registration, eu_database) :-
    registration_applies(S),
    registration_of(Registration, S, article_49(1)).
must_be_in_secure_non_public_section(Registration, eu_database) :-
    registration_applies(S),
    registration_of(Registration, S, article_49(2)).
must_be_in_secure_non_public_section(Registration, eu_database) :-
    registration_applies(S),
    registration_of(Registration, S, article_49(3)).

% Information inclusion rules
must_include_information(Registration, Info) :-
    must_be_in_secure_non_public_section(Registration, _),
    applicable_information(Info, Registration).

must_include_only_information(Registration, Info) :-
    must_include_information(Registration, Info),
    \+ other_information_included(Registration, Info).

other_information_included(Registration, Info) :-
    must_include_information(Registration, Other),
    Other \= Info.

% Applicable information from Annex VIII and IX
applicable_information(Info, Registration) :-
    annex_viii_point(Info, Point),
    between(1, 10, Point),
    Point \= 6,
    Point \= 8,
    Point \= 9,
    registration_applies(S),
    registration_of(Registration, S, _).

applicable_information(Info, Registration) :-
    annex_viii_section_b_point(Info, Point),
    member(Point, [1,2,3,4,5,8,9]),
    registration_applies(S),
    registration_of(Registration, S, _).

applicable_information(Info, Registration) :-
    annex_viii_point(Info, Point),
    between(1, 3, Point),
    registration_applies(S),
    registration_of(Registration, S, _).

applicable_information(Info, Registration) :-
    annex_ix_point(Info, Point),
    member(Point, [1,2,3,5]),
    registration_applies(S),
    registration_of(Registration, S, _).

% Access control
must_have_access(Actor, restricted_section(eu_database)) :-
    commission(Actor).
must_have_access(Actor, restricted_section(eu_database)) :-
    national_authority(Actor),
    article_74_8_authority(Actor).

% Dynamic predicates for external facts
:- dynamic annex_iii_point/2.
:- dynamic in_area/2.
:- dynamic registration_of/3.
:- dynamic annex_viii_point/2.
:- dynamic annex_viii_section_b_point/2.
:- dynamic annex_ix_point/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic article_74_8_authority/1.
```

## deepseek seed 3

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    must_register/2,
    secure_non_public_section/1,
    eu_database/1,
    registration_includes/2,
    annex_viii_info/1,
    section_b_info/1,
    annex_ix_info/1,
    has_access_to/2,
    restricted_section/1,
    commission/1,
    national_authority/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Registration requirement for specific high-risk AI systems
must_register(System, secure_non_public_section(eu_database)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    registration_includes(System, annex_viii_info(PointsA)),
    registration_includes(System, section_b_info(PointsB)),
    registration_includes(System, annex_ix_info(PointsC)).

relevant_area(System) :-
    law_enforcement_area(System);
    migration_area(System);
    asylum_area(System);
    border_control_management_area(System).

% Information to be included in registration
registration_includes(System, annex_viii_info(Points)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    findall(P, (between(1, 10, P), P \= 6, P \= 8, P \= 9), Points).

registration_includes(System, section_b_info(Points)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    Points = [1, 2, 3, 4, 5, 8, 9].

registration_includes(System, annex_viii_info(Points)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    Points = [1, 2, 3].

registration_includes(System, annex_ix_info(Points)) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [1, 6, 7]),
    relevant_area(System),
    Points = [1, 2, 3, 5].

% Access control
has_access_to(Actor, restricted_section(eu_database)) :-
    commission(Actor);
    national_authority(Actor).

% Predicates for database and sections
secure_non_public_section(eu_database).
eu_database.
restricted_section(eu_database).

% Helper predicates
annex_iii_point(_System, _Point) :- fail.  % Input: to be provided by facts
annex_viii_info(_Points) :- fail.          % Input: to be provided by facts
section_b_info(_Points) :- fail.           % Input: to be provided by facts
annex_ix_info(_Points) :- fail.            % Input: to be provided by facts
```

## gemini seed 1

```prolog
:- module(registration_in_restricted_sections, [
    restricted_high_risk_ai_system/1,
    required_secure_non_public_registration/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration/1.
:- dynamic registration_for/2.
:- dynamic registration_article/2.
:- dynamic commission/1.
:- dynamic national_authority/1.
:- dynamic article_74_8_authority/1.
:- dynamic restricted_section_eu_database/1.

restricted_high_risk_ai_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point(System, Point),
    member(Point, [point(1), point(6), point(7)]),
    area(System, Area),
    member(Area, [law_enforcement, migration, asylum, border_control_management]).

required_secure_non_public_registration(Registration) :-
    registration(Registration),
    registration_for(Registration, System),
    restricted_high_risk_ai_system(System),
    registration_article(Registration, Article),
    member(Article, [article(49, 1), article(49, 2), article(49, 3)]).

permitted_registration_information(Registration, Information) :-
    required_secure_non_public_registration(Registration),
    permitted_information_item(Information).

permitted_information_item(annex_viii(point(Point))) :-
    member(Point, [1, 2, 3, 4, 5, 7, 10]).
permitted_information_item(annex_viii(section_b(point(Point)))) :-
    member(Point, [1, 2, 3, 4, 5, 8, 9]).
permitted_information_item(annex_viii(point(Point))) :-
    member(Point, [1, 2, 3]).
permitted_information_item(annex_ix(point(Point))) :-
    member(Point, [1, 2, 3, 5]).

permitted_access(Actor, DatabaseSection) :-
    restricted_section_eu_database(DatabaseSection),
    commission(Actor).
permitted_access(Actor, DatabaseSection) :-
    restricted_section_eu_database(DatabaseSection),
    national_authority(Actor),
    article_74_8_authority(Actor).
```

## gemini seed 2

```prolog
:- module(sensitive_high_risk_ai_registration, [
    sensitive_high_risk_system/1,
    required_secure_non_public_registration/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point_1/1.
:- dynamic annex_iii_point_6/1.
:- dynamic annex_iii_point_7/1.
:- dynamic area_law_enforcement/1.
:- dynamic area_migration_asylum_border_control/1.
:- dynamic eu_database_section/2.
:- dynamic restricted_section_article_49_4/1.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.

% A high-risk AI system in the sensitive areas covered by points 1, 6, and 7 of Annex III
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_1(System),
    area_law_enforcement(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_1(System),
    area_migration_asylum_border_control(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_6(System),
    area_law_enforcement(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_6(System),
    area_migration_asylum_border_control(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_7(System),
    area_law_enforcement(System).
sensitive_high_risk_system(System) :-
    high_risk_ai_system(System),
    annex_iii_point_7(System),
    area_migration_asylum_border_control(System).

% Registration shall be in a secure non-public section of the EU database
required_secure_non_public_registration(registration(System)) :-
    sensitive_high_risk_system(System),
    eu_database_section(System, secure_non_public).

% Permitted information in the registration:
% (a) Annex VIII, points 1 to 10, except 6, 8, and 9 (i.e. points 1, 2, 3, 4, 5, 7, 10)
permitted_registration_information(System, information(annex_viii, point(1))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(2))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(3))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(4))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(5))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(7))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, point(10))) :-
    sensitive_high_risk_system(System).

% (b) Annex VIII, Section B, points 1 to 5, and points 8 and 9
permitted_registration_information(System, information(annex_viii, section_b, point(1))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(2))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(3))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(4))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(5))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(8))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_viii, section_b, point(9))) :-
    sensitive_high_risk_system(System).

% (c) Annex VIII, points 1 to 3 (already covered under (a), stated explicitly for clarity/applicability)
% (d) Annex IX, points 1, 2, 3 and 5
permitted_registration_information(System, information(annex_ix, point(1))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_ix, point(2))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_ix, point(3))) :-
    sensitive_high_risk_system(System).
permitted_registration_information(System, information(annex_ix, point(5))) :-
    sensitive_high_risk_system(System).

% Only the Commission and national authorities referred to in Article 74(8) shall have access
% to the restricted sections of the EU database listed in Article 49(4)
permitted_access(Actor, Section) :-
    commission(Actor),
    restricted_section_article_49_4(Section).
permitted_access(Actor, Section) :-
    national_authority_article_74_8(Actor),
    restricted_section_article_49_4(Section).
```

## gemini seed 3

```prolog
:- module(high_risk_ai_system_registration, [
    required_registration/1,
    secure_non_public_section/1,
    permitted_registration_information/2,
    permitted_access/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point_1/1.
:- dynamic annex_iii_point_6/1.
:- dynamic annex_iii_point_7/1.
:- dynamic area_law_enforcement/1.
:- dynamic area_migration/1.
:- dynamic area_asylum/1.
:- dynamic area_border_control_management/1.
:- dynamic registration_article_49_1/2.
:- dynamic registration_article_49_2/2.
:- dynamic registration_article_49_3/2.
:- dynamic information_annex_viii_section_a_point/2.
:- dynamic information_annex_viii_section_b_point/2.
:- dynamic information_annex_ix_point/2.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic restricted_section_article_49_4/1.

relevant_high_risk_ai_system(System) :-
    high_risk_ai_system(System),
    relevant_annex_iii_point(System),
    relevant_area(System).

relevant_annex_iii_point(System) :- annex_iii_point_1(System).
relevant_annex_iii_point(System) :- annex_iii_point_6(System).
relevant_annex_iii_point(System) :- annex_iii_point_7(System).

relevant_area(System) :- area_law_enforcement(System).
relevant_area(System) :- area_migration(System).
relevant_area(System) :- area_asylum(System).
relevant_area(System) :- area_border_control_management(System).

registration_article_49(Registration, System) :-
    registration_article_49_1(Registration, System).
registration_article_49(Registration, System) :-
    registration_article_49_2(Registration, System).
registration_article_49(Registration, System) :-
    registration_article_49_3(Registration, System).

required_registration(Registration) :-
    registration_article_49(Registration, System),
    relevant_high_risk_ai_system(System).

secure_non_public_section(Registration) :-
    registration_article_49(Registration, System),
    relevant_high_risk_ai_system(System).

permitted_registration_information(Registration, Information) :-
    registration_article_49(Registration, System),
    relevant_high_risk_ai_system(System),
    allowed_information(Information).

allowed_information(Information) :-
    information_annex_viii_section_a_point(Information, Point),
    allowed_annex_viii_section_a_point(Point).
allowed_information(Information) :-
    information_annex_viii_section_b_point(Information, Point),
    allowed_annex_viii_section_b_point(Point).
allowed_information(Information) :-
    information_annex_ix_point(Information, Point),
    allowed_annex_ix_point(Point).

allowed_annex_viii_section_a_point(1).
allowed_annex_viii_section_a_point(2).
allowed_annex_viii_section_a_point(3).
allowed_annex_viii_section_a_point(4).
allowed_annex_viii_section_a_point(5).
allowed_annex_viii_section_a_point(7).
allowed_annex_viii_section_a_point(10).

allowed_annex_viii_section_b_point(1).
allowed_annex_viii_section_b_point(2).
allowed_annex_viii_section_b_point(3).
allowed_annex_viii_section_b_point(4).
allowed_annex_viii_section_b_point(5).
allowed_annex_viii_section_b_point(8).
allowed_annex_viii_section_b_point(9).

allowed_annex_ix_point(1).
allowed_annex_ix_point(2).
allowed_annex_ix_point(3).
allowed_annex_ix_point(5).

permitted_access(Actor, Section) :-
    restricted_section_article_49_4(Section),
    authorised_actor(Actor).

authorised_actor(Actor) :-
    commission(Actor).
authorised_actor(Actor) :-
    national_authority_article_74_8(Actor).
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
    must_register_in_section/2,
    registration_includes/2,
    access_restricted_to/2,
    commission/1,
    national_authority/1
]).

% Areas covered by this provision
law_enforcement_area(law_enforcement).
migration_area(migration).
asylum_area(asylum).
border_control_management_area(border_control_management).

% Database and section
eu_database(eu_database_article_71).
secure_non_public_section(secure_non_public_section).

% High-risk AI systems from Annex III, points (1), (6) and (7)
high_risk_ai_system(S) :-
    referred_to_in_annex_iii_point(S, 1).
high_risk_ai_system(S) :-
    referred_to_in_annex_iii_point(S, 6).
high_risk_ai_system(S) :-
    referred_to_in_annex_iii_point(S, 7).

% Covered area predicate
covered_area(A) :-
    law_enforcement_area(A).
covered_area(A) :-
    migration_area(A).
covered_area(A) :-
    asylum_area(A).
covered_area(A) :-
    border_control_management_area(A).

% Registration requirements from Article 49
registration_required(article_49_1).
registration_required(article_49_2).
registration_required(article_49_3).

% The secure non-public section requirement
must_register_in_section(S, secure_non_public_section) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    registration_required(R),
    applies_to(R, S).

% Information to be included from Annex VIII points (1) to (10), except 6, 8, 9
registration_includes(S, annex_viii_point(P)) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    between(1, 10, P),
    P \= 6,
    P \= 8,
    P \= 9,
    applicable_for(S, annex_viii_points_1_to_10_except_6_8_9).

% Information from Section B, points 1 to 5, and points 8 and 9 of Annex VIII
registration_includes(S, section_b_point(P)) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    member(P, [1, 2, 3, 4, 5, 8, 9]),
    applicable_for(S, section_b_points_1_to_5_and_8_9).

% Information from Annex VIII, points (1) to (3)
registration_includes(S, annex_viii_point(P)) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    between(1, 3, P),
    applicable_for(S, annex_viii_points_1_to_3).

% Information from Annex IX, points (1), (2), (3) and (5)
registration_includes(S, annex_ix_point(P)) :-
    high_risk_ai_system(S),
    used_in_area(S, A),
    covered_area(A),
    member(P, [1, 2, 3, 5]),
    applicable_for(S, annex_ix_points_1_2_3_5).

% Access restrictions - only Commission and national authorities under Article 74(8)
access_restricted_to(secure_non_public_section, Entity) :-
    commission(Entity).
access_restricted_to(secure_non_public_section, Entity) :-
    national_authority(Entity),
    referred_to_in_article_74_8(Entity).

% Input predicates - facts about the world not settled by this text
:- dynamic referred_to_in_annex_iii_point/2.
:- dynamic used_in_area/2.
:- dynamic applies_to/2.
:- dynamic applicable_for/2.
:- dynamic referred_to_in_article_74_8/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Helper for range
between(Low, High, Low) :- Low =< High.
between(Low, High, X) :-
    Low < High,
    Next is Low + 1,
    between(Next, High, X).

% Helper for membership
member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).
```

## kimi seed 2

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
    must_include_information/2,
    has_access/2,
    restricted_section/1,
    annex_iii_point/1,
    annex_viii_point/1,
    annex_viii_section_b_point/1,
    annex_ix_point/1,
    commission/1,
    national_authority/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic eu_database/1.
:- dynamic commission/1.
:- dynamic national_authority/1.

% Areas covered by this provision
area(law_enforcement).
area(migration).
area(asylum).
area(border_control_management).

% Annex III points covered
annex_iii_point(1).
annex_iii_point(6).
annex_iii_point(7).

% Annex VIII points for general inclusion (points 1-10 except 6, 8, 9)
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

% Annex VIII points for part (c) (points 1-3)
annex_viii_point_c(1).
annex_viii_point_c(2).
annex_viii_point_c(3).

% Annex IX points
annex_ix_point(1).
annex_ix_point(2).
annex_ix_point(3).
annex_ix_point(5).

% Article 49 paragraphs
article_49_paragraph(1).
article_49_paragraph(2).
article_49_paragraph(3).
article_49_paragraph(4).

% The EU database referred to in Article 71
eu_database(eu_database_article_71).

% Secure non-public section of the EU database
secure_non_public_section(secure_section_article_49).

% Registration requirement for high-risk AI systems in specified areas
registration_required(S) :-
    high_risk_ai_system(S),
    annex_iii_point_applies(S, P),
    member(P, [1, 6, 7]),
    relevant_area(S, A),
    area(A).

% Determine if Annex III point applies to system
annex_iii_point_applies(S, P) :-
    high_risk_ai_system(S),
    annex_iii_point(P).

% Determine relevant area for system
relevant_area(S, law_enforcement) :- law_enforcement_area(S).
relevant_area(S, migration) :- migration_area(S).
relevant_area(S, asylum) :- asylum_area(S).
relevant_area(S, border_control_management) :- border_control_management_area(S).

% The registration shall be in secure non-public section
must_be_in_secure_section(S) :-
    registration_required(S),
    secure_non_public_section(Section),
    eu_database(Database),
    section_of(Section, Database).

% Information that must be included - part (a): Annex VIII points 1-10 except 6, 8, 9
must_include_information(S, annex_viii_point(P)) :-
    registration_required(S),
    annex_viii_point(P),
    \+ excluded_annex_viii_point_a(P).

excluded_annex_viii_point_a(6).
excluded_annex_viii_point_a(8).
excluded_annex_viii_point_a(9).

% Information that must be included - part (b): Section B points 1-5, 8, 9
must_include_information(S, annex_viii_section_b_point(P)) :-
    registration_required(S),
    annex_viii_section_b_point(P).

% Information that must be included - part (c): Annex VIII points 1-3
must_include_information(S, annex_viii_point_c(P)) :-
    registration_required(S),
    annex_viii_point_c(P).

% Information that must be included - part (d): Annex IX points 1, 2, 3, 5
must_include_information(S, annex_ix_point(P)) :-
    registration_required(S),
    annex_ix_point(P).

% Access restriction: only Commission and national authorities under Article 74(8)
has_access(Commission, Section) :-
    commission(Commission),
    restricted_section(Section),
    article_49_paragraph(4).

has_access(Authority, Section) :-
    national_authority(Authority),
    article_74_8_applies(Authority),
    restricted_section(Section),
    article_49_paragraph(4).

% Article 74(8) national authority
article_74_8_applies(Authority) :-
    national_authority(Authority).

% Restricted sections are those listed in Article 49(4)
restricted_section(Section) :-
    secure_non_public_section(Section),
    registration_required(_S).

% Section relationship
section_of(secure_section_article_49, eu_database_article_71).

% Helper for membership
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
```

## kimi seed 3

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    referred_to_in_annex_iii/2,
    point/2,
    area/1,
    registration_required/1,
    must_be_in_section/2,
    secure_non_public_section/1,
    eu_database/1,
    referred_to_in_article/2,
    includes_information/2,
    annex_viii_point/1,
    annex_viii_section_b_point/1,
    annex_ix_point/1,
    exception_point/1,
    must_have_access/2,
    national_authority/1,
    commission/1
]).

% Dynamic predicates for external references
:- dynamic article_74_8_authority/1.

% Classification of AI systems
high_risk_ai_system(S) :-
    referred_to_in_annex_iii(S, Point),
    member(Point, [point(1), point(6), point(7)]).

% Areas specified in the text
area(law_enforcement).
area(migration).
area(asylum).
area(border_control_management).

% Registration requirements
registration_required(S) :-
    high_risk_ai_system(S),
    used_in_area(S, Area),
    area(Area).

must_be_in_section(S, secure_non_public_section) :-
    registration_required(S),
    eu_database(Database),
    referred_to_in_article(Database, article(71)).

% Information to be included from Annex VIII points (1) to (10), except 6, 8, 9
includes_information(S, annex_viii_points(Points)) :-
    registration_required(S),
    findall(Point, (annex_viii_point(Point), 
                   between(1, 10, Point),
                   \+ exception_point(Point)), Points).

% Information to be included from Section B points 1 to 5, and 8, 9
includes_information(S, annex_viii_section_b_points(Points)) :-
    registration_required(S),
    findall(Point, (annex_viii_section_b_point(Point),
                   (between(1, 5, Point); member(Point, [8, 9]))), Points).

% Information to be included from Annex VIII points (1) to (3)
includes_information(S, annex_viii_points_limited(Points)) :-
    registration_required(S),
    findall(Point, (annex_viii_point(Point), between(1, 3, Point)), Points).

% Information to be included from Annex IX points (1), (2), (3) and (5)
includes_information(S, annex_ix_points(Points)) :-
    registration_required(S),
    findall(Point, (annex_ix_point(Point), member(Point, [1, 2, 3, 5])), Points).

% Exception points for Annex VIII
exception_point(6).
exception_point(8).
exception_point(9).

% Access restrictions
must_have_access(commission, restricted_section(Section)) :-
    eu_database(Database),
    referred_to_in_article(Database, article(71)),
    registration_required(_S).

must_have_access(Authority, restricted_section(Section)) :-
    national_authority(Authority),
    article_74_8_authority(Authority),
    eu_database(Database),
    referred_to_in_article(Database, article(71)),
    registration_required(_S).

% Base predicates
referred_to_in_annex_iii(_S, _Point). % input: defined by external classification
point(_Annex, _Point). % input: point references
referred_to_in_article(_Entity, _Article). % input: article references
used_in_area(_S, _Area). % input: area of use
eu_database(_Database). % input: EU database existence
annex_viii_point(_Point). % input: Annex VIII point numbers
annex_viii_section_b_point(_Point). % input: Annex VIII Section B point numbers
annex_ix_point(_Point). % input: Annex IX point numbers
national_authority(_Authority). % input: national authority status
commission(commission). % the Commission as an entity
```

## mistral seed 1

```prolog
:- module(high_risk_ai_registration, [
    registration_in_secure_non_public_section/1,
    registration_includes_information/2,
    access_to_restricted_section/2
]).

% High-risk AI systems referred to in Annex III, points (1), (6) and (7),
% in the areas of law enforcement, migration, asylum and border control management
high_risk_ai_system_annex_iii(S) :-
    high_risk_ai_system(S),
    annex_iii_point(S, P),
    member(P, [1, 6, 7]),
    area(S, A),
    member(A, [law_enforcement, migration, asylum, border_control_management]).

% The registration referred to in Article 49(1), Article 49(2), Article 49(3)
% shall be in a secure non-public section of the EU database referred to in Article 71
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system_annex_iii(S),
    registration_article_49(S, Article),
    member(Article, ['49(1)', '49(2)', '49(3)']),
    eu_database_article_71(DB),
    secure_non_public_section(DB, Section),
    registration_in_section(S, Section).

% The registration shall include only the following information, as applicable
registration_includes_information(S, Info) :-
    high_risk_ai_system_annex_iii(S),
    registration_article_49(S, Article),
    member(Article, ['49(1)', '49(2)', '49(3)']),
    applicable_information(Article, Info).

% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
applicable_information('49(1)', annex_viii_points_except_6_8_9).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
applicable_information('49(2)', annex_viii_section_b_points_1_to_5_and_8_9).

% (c) Annex VIII, points (1) to (3)
applicable_information('49(3)', annex_viii_points_1_to_3).

% (d) Annex IX, points (1), (2), (3) and (5)
applicable_information('49(4)', annex_ix_points_1_2_3_5).

% Only the Commission and national authorities referred to in Article 74(8)
% shall have access to the respective restricted sections of the EU database listed in Article 49(4)
access_to_restricted_section(Accessor, Section) :-
    eu_database_article_71(DB),
    restricted_section(DB, Section),
    article_49_4_listed(Section),
    authorised_accessor(Accessor).

authorised_accessor(commission).

authorised_accessor(national_authority(A)) :-
    national_authority_article_74_8(A).

% Inputs: facts about the world the text does not settle
:- dynamic high_risk_ai_system/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration_article_49/2.
:- dynamic eu_database_article_71/1.
:- dynamic secure_non_public_section/2.
:- dynamic registration_in_section/2.
:- dynamic restricted_section/2.
:- dynamic article_49_4_listed/1.
:- dynamic national_authority_article_74_8/1.

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
```

## mistral seed 2

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    registration_in_secure_non_public_section/2,
    registration_includes_information/2,
    permitted_access_to_restricted_section/2
]).

% High-risk AI systems referred to in Annex III, points (1), (6) and (7),
% in the areas of law enforcement, migration, asylum and border control management
high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, law_enforcement).
high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, migration).
high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, asylum).
high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, border_control_management).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, law_enforcement).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, migration).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, asylum).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, border_control_management).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, law_enforcement).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, migration).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, asylum).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, border_control_management).

% The registration referred to in Article 49(1), Article 49(2), Article 49(3)
% shall be in a secure non-public section of the EU database referred to in Article 71
registration_in_secure_non_public_section(S, Database) :-
    high_risk_ai_system(S),
    eu_database(Article71, Database),
    secure_non_public_section(Database, Section),
    registration_article_49(S, Section).

% The registration shall include only the following information, as applicable
registration_includes_information(S, Information) :-
    high_risk_ai_system(S),
    information_annex_viii_points_1_to_10_except_6_8_9(Information).
registration_includes_information(S, Information) :-
    high_risk_ai_system(S),
    information_section_b_points_1_to_5_and_8_9(Information).
registration_includes_information(S, Information) :-
    high_risk_ai_system(S),
    information_annex_viii_points_1_to_3(Information).
registration_includes_information(S, Information) :-
    high_risk_ai_system(S),
    information_annex_ix_points_1_2_3_5(Information).

% Only the Commission and national authorities referred to in Article 74(8)
% shall have access to the respective restricted sections of the EU database listed in Article 49(4)
permitted_access_to_restricted_section(Commission, Section) :-
    commission(Commission),
    restricted_section(Section),
    eu_database_listed_in_article_49_4(Section).
permitted_access_to_restricted_section(Authority, Section) :-
    national_authority_referred_to_in_article_74_8(Authority),
    restricted_section(Section),
    eu_database_listed_in_article_49_4(Section).

% Input predicates: facts about the world the text does not settle
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic eu_database/2.
:- dynamic secure_non_public_section/2.
:- dynamic registration_article_49/2.
:- dynamic information_annex_viii_points_1_to_10_except_6_8_9/1.
:- dynamic information_section_b_points_1_to_5_and_8_9/1.
:- dynamic information_annex_viii_points_1_to_3/1.
:- dynamic information_annex_ix_points_1_2_3_5/1.
:- dynamic commission/1.
:- dynamic restricted_section/1.
:- dynamic eu_database_listed_in_article_49_4/1.
:- dynamic national_authority_referred_to_in_article_74_8/1.
```

## mistral seed 3

```prolog
:- module(high_risk_ai_registration, [
    high_risk_ai_system/1,
    registration_in_secure_non_public_section/2,
    registration_includes_information/3,
    permitted_access_to_restricted_section/2
]).

% High-risk AI systems referred to in Annex III, points (1), (6) and (7),
% in the areas of law enforcement, migration, asylum and border control management
high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, law_enforcement).
high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, migration).
high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, asylum).
high_risk_ai_system(S) :-
    annex_iii_point(S, 1),
    area(S, border_control_management).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, law_enforcement).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, migration).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, asylum).
high_risk_ai_system(S) :-
    annex_iii_point(S, 6),
    area(S, border_control_management).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, law_enforcement).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, migration).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, asylum).
high_risk_ai_system(S) :-
    annex_iii_point(S, 7),
    area(S, border_control_management).

% The registration referred to in Article 49(1), Article 49(2), Article 49(3)
% shall be in a secure non-public section of the EU database referred to in Article 71
registration_in_secure_non_public_section(S, D) :-
    high_risk_ai_system(S),
    eu_database(D),
    article_71(D),
    secure_non_public_section(D, Section),
    registration(S, Section).

% The registration shall include only the following information, as applicable, referred to in:
% (a) Annex VIII, points (1) to (10), with the exception of points 6, 8 and 9
registration_includes_information(S, info(annex_viii, points(1, 10), except([6, 8, 9]))) :-
    high_risk_ai_system(S),
    registration_applies(S, a).

% (b) Section B, points 1 to 5, and points 8 and 9 of Annex VIII
registration_includes_information(S, info(annex_viii, section_b, points([1, 2, 3, 4, 5, 8, 9]))) :-
    high_risk_ai_system(S),
    registration_applies(S, b).

% (c) Annex VIII, points (1) to (3)
registration_includes_information(S, info(annex_viii, points(1, 3))) :-
    high_risk_ai_system(S),
    registration_applies(S, c).

% (d) Annex IX, points (1), (2), (3) and (5)
registration_includes_information(S, info(annex_ix, points([1, 2, 3, 5]))) :-
    high_risk_ai_system(S),
    registration_applies(S, d).

% Only the Commission and national authorities referred to in Article 74(8)
% shall have access to the respective restricted sections of the EU database listed in Article 49(4)
permitted_access_to_restricted_section(commission, Section) :-
    eu_database(D),
    article_49_4(D, Section),
    restricted_section(D, Section).

permitted_access_to_restricted_section(A, Section) :-
    national_authority(A),
    article_74_8(A),
    eu_database(D),
    article_49_4(D, Section),
    restricted_section(D, Section).

% Inputs: facts about the world the text does not settle
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic eu_database/1.
:- dynamic article_71/1.
:- dynamic secure_non_public_section/2.
:- dynamic registration/2.
:- dynamic registration_applies/2.
:- dynamic article_49_4/2.
:- dynamic restricted_section/2.
:- dynamic national_authority/1.
:- dynamic article_74_8/1.
```

## qwen seed 1

```prolog
:- module(secure_registration_requirements, [
    high_risk_ai_system_in_specified_area/1,
    must_register_in_secure_non_public_section/2,
    required_registration_information/2,
    permitted_access_to_restricted_section/2
]).

% Input predicates for external facts
:- dynamic annex_iii_point_1_applies/1.
:- dynamic annex_iii_point_6_applies/1.
:- dynamic annex_iii_point_7_applies/1.
:- dynamic law_enforcement_area_applies/1.
:- dynamic migration_area_applies/1.
:- dynamic asylum_area_applies/1.
:- dynamic border_control_management_area_applies/1.
:- dynamic eu_database/1.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic annex_viii_point/2.
:- dynamic annex_viii_section_b_point/2.
:- dynamic annex_ix_point/2.

% High-risk AI systems referred to in Annex III points (1), (6) and (7) in specified areas
high_risk_ai_system_in_specified_area(S) :-
    annex_iii_point_1_applies(S),
    specified_area_applies(S).
high_risk_ai_system_in_specified_area(S) :-
    annex_iii_point_6_applies(S),
    specified_area_applies(S).
high_risk_ai_system_in_specified_area(S) :-
    annex_iii_point_7_applies(S),
    specified_area_applies(S).

specified_area_applies(S) :-
    law_enforcement_area_applies(S).
specified_area_applies(S) :-
    migration_area_applies(S).
specified_area_applies(S) :-
    asylum_area_applies(S).
specified_area_applies(S) :-
    border_control_management_area_applies(S).

% Registration shall be in a secure non-public section of the EU database
must_register_in_secure_non_public_section(S, Database) :-
    high_risk_ai_system_in_specified_area(S),
    eu_database(Database).

% Required registration information as applicable
required_registration_information(S, Info) :-
    high_risk_ai_system_in_specified_area(S),
    annex_viii_point(N, Info),
    member(N, [1, 2, 3, 4, 5, 7, 10]).
required_registration_information(S, Info) :-
    high_risk_ai_system_in_specified_area(S),
    annex_viii_section_b_point(N, Info),
    member(N, [1, 2, 3, 4, 5, 8, 9]).
required_registration_information(S, Info) :-
    high_risk_ai_system_in_specified_area(S),
    annex_viii_point(N, Info),
    member(N, [1, 2, 3]).
required_registration_information(S, Info) :-
    high_risk_ai_system_in_specified_area(S),
    annex_ix_point(N, Info),
    member(N, [1, 2, 3, 5]).

member(X, [X|_]).
member(X, [_|T]) :-
    member(X, T).

% Access restricted to Commission and national authorities referred to in Article 74(8)
permitted_access_to_restricted_section(Entity, Section) :-
    commission(Entity),
    restricted_section_of_eu_database(Section).
permitted_access_to_restricted_section(Entity, Section) :-
    national_authority_article_74_8(Entity),
    restricted_section_of_eu_database(Section).

restricted_section_of_eu_database(Section) :-
    eu_database(_Database),
    secure_non_public_section(_Database, Section).

secure_non_public_section(Database, Section) :-
    eu_database(Database),
    non_public_section(Database, Section).

non_public_section(_Database, _Section).
```

## qwen seed 2

```prolog
:- module(secure_registration_requirements, [
    high_risk_ai_system_annex_iii/1,
    law_enforcement_area/1,
    migration_area/1,
    asylum_area/1,
    border_control_management_area/1,
    must_register_in_secure_non_public_section/2,
    secure_non_public_section/2,
    eu_database_article_71/1,
    registration_information_applies/2,
    annex_viii_points_1_to_10_excluding_6_8_9/1,
    annex_viii_section_b_points_1_to_5_and_8_9/1,
    annex_viii_points_1_to_3/1,
    annex_ix_points_1_2_3_5/1,
    commission/1,
    national_authority_article_74_8/1,
    has_access_to_restricted_section/2,
    restricted_section_article_49_4/2
]).

% Input predicates for external facts
:- dynamic high_risk_ai_system_annex_iii/1.
:- dynamic law_enforcement_area/1.
:- dynamic migration_area/1.
:- dynamic asylum_area/1.
:- dynamic border_control_management_area/1.
:- dynamic eu_database_article_71/1.
:- dynamic commission/1.
:- dynamic national_authority_article_74_8/1.
:- dynamic annex_viii_points_1_to_10_excluding_6_8_9/1.
:- dynamic annex_viii_section_b_points_1_to_5_and_8_9/1.
:- dynamic annex_viii_points_1_to_3/1.
:- dynamic annex_ix_points_1_2_3_5/1.

% Secure non-public section of EU database
secure_non_public_section(Section, Database) :-
    eu_database_article_71(Database),
    secure_non_public_section_of(Section, Database).

% Registration requirement for specific high-risk AI systems
must_register_in_secure_non_public_section(System, Section) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System),
    secure_non_public_section(Section, _Database).

applicable_area(System) :-
    law_enforcement_area(System).
applicable_area(System) :-
    migration_area(System).
applicable_area(System) :-
    asylum_area(System).
applicable_area(System) :-
    border_control_management_area(System).

% Information inclusion requirements for registration
registration_information_applies(System, annex_viii_points_1_to_10_excluding_6_8_9) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System).

registration_information_applies(System, annex_viii_section_b_points_1_to_5_and_8_9) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System).

registration_information_applies(System, annex_viii_points_1_to_3) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System).

registration_information_applies(System, annex_ix_points_1_2_3_5) :-
    high_risk_ai_system_annex_iii(System),
    applicable_area(System).

% Access restrictions to restricted sections
has_access_to_restricted_section(Entity, Section) :-
    commission(Entity),
    restricted_section_article_49_4(Section, _Database).

has_access_to_restricted_section(Entity, Section) :-
    national_authority_article_74_8(Entity),
    restricted_section_article_49_4(Section, _Database).
```

## qwen seed 3

```prolog
:- module(secure_registration_requirements, [
    high_risk_ai_system_in_specified_area/1,
    must_register_in_secure_non_public_section/2,
    required_registration_information/2,
    permitted_access_to_restricted_section/2
]).

% Input predicates for external facts
:- dynamic annex_iii_point/2.
:- dynamic eu_database/1.
:- dynamic national_authority_under_article_74_8/1.
:- dynamic commission/1.

% High-risk AI systems in law enforcement, migration, asylum and border control
high_risk_ai_system_in_specified_area(System) :-
    annex_iii_point(System, point(1)),
    in_specified_area(System).
high_risk_ai_system_in_specified_area(System) :-
    annex_iii_point(System, point(6)),
    in_specified_area(System).
high_risk_ai_system_in_specified_area(System) :-
    annex_iii_point(System, point(7)),
    in_specified_area(System).

in_specified_area(System) :-
    area_of_law_enforcement(System).
in_specified_area(System) :-
    area_of_migration(System).
in_specified_area(System) :-
    area_of_asylum(System).
in_specified_area(System) :-
    area_of_border_control_management(System).

% Registration location requirement
must_register_in_secure_non_public_section(System, Database) :-
    high_risk_ai_system_in_specified_area(System),
    eu_database(Database),
    secure_non_public_section(Database).

% Information inclusion requirements based on applicable annex points
required_registration_information(System, annex_viii_points_1_to_10_excluding_6_8_9) :-
    high_risk_ai_system_in_specified_area(System).
required_registration_information(System, section_b_points_1_to_5_and_8_9_of_annex_viii) :-
    high_risk_ai_system_in_specified_area(System).
required_registration_information(System, annex_viii_points_1_to_3) :-
    high_risk_ai_system_in_specified_area(System).
required_registration_information(System, annex_ix_points_1_2_3_and_5) :-
    high_risk_ai_system_in_specified_area(System).

% Access restrictions to the secure non-public section
permitted_access_to_restricted_section(Entity, RestrictedSection) :-
    commission(Entity),
    restricted_section_of_eu_database(RestrictedSection).
permitted_access_to_restricted_section(Entity, RestrictedSection) :-
    national_authority_under_article_74_8(Entity),
    restricted_section_of_eu_database(RestrictedSection).

restricted_section_of_eu_database(Section) :-
    eu_database(_DB),
    secure_non_public_section(_DB),
    Section = _DB.
```
