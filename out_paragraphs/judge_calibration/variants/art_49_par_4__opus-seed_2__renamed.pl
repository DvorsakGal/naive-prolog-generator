:- module(secure_registration_law_enforcement, [
    sensitive_area_elevated_risk_system/1,
    required_secure_non_public_registration/1,
    registered_in/2,
    permitted_registration_data/1,
    includes_data/2,
    permitted_restricted_section_access/1,
    has_access/2
]).
:- dynamic elevated_risk_ai_system/1.
:- dynamic annex_iii_point/2.
:- dynamic area/2.
:- dynamic registration/2.
:- dynamic applicable_data/2.
:- dynamic european_commission/1.
:- dynamic national_public_authority_article_74_8/1.
:- dynamic restricted_section/1.

permitted_registration_data(annex_viii(2)).

permitted_registration_data(annex_viii(10)).

permitted_registration_data(annex_ix(3)).

sensitive_area(XS) :- area(XS, migration).

permitted_registration_data(annex_ix(1)).

permitted_restricted_section_access(XA) :- national_public_authority_article_74_8(XA).

permitted_registration_data(annex_ix(5)).

annex_iii_listed(XS) :- annex_iii_point(XS, 6).

sensitive_area(XS) :- area(XS, asylum).

required_secure_non_public_registration(XR) :-
    registration(XR, XS),
    sensitive_area_elevated_risk_system(XS).

permitted_registration_data(annex_viii_section_b(4)).

permitted_registration_data(annex_viii(4)).

permitted_registration_data(annex_viii_section_b(3)).

permitted_registration_data(annex_viii(7)).

permitted_registration_data(annex_viii_section_b(5)).

permitted_registration_data(annex_viii(1)).

annex_iii_listed(XS) :- annex_iii_point(XS, 7).

sensitive_area(XS) :- area(XS, border_control_management).

permitted_registration_data(annex_ix(2)).

permitted_registration_data(annex_viii(5)).

sensitive_area(XS) :- area(XS, law_enforcement).

permitted_restricted_section_access(XA) :- european_commission(XA).

sensitive_area_elevated_risk_system(XS) :-
    elevated_risk_ai_system(XS),
    annex_iii_listed(XS),
    sensitive_area(XS).

permitted_registration_data(annex_viii_section_b(9)).

permitted_registration_data(annex_viii_section_b(1)).

has_access(XA, XSection) :-
    restricted_section(XSection),
    permitted_restricted_section_access(XA).

registered_in(XR, secure_non_public_section(eu_database)) :-
    required_secure_non_public_registration(XR).

includes_data(XR, XI) :-
    required_secure_non_public_registration(XR),
    applicable_data(XR, XI),
    permitted_registration_data(XI).

permitted_registration_data(annex_viii_section_b(8)).

annex_iii_listed(XS) :- annex_iii_point(XS, 1).

permitted_registration_data(annex_viii_section_b(2)).

permitted_registration_data(annex_viii(3)).
