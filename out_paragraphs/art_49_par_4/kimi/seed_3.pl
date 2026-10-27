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
