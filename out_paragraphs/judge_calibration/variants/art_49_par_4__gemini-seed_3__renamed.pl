:- module(elevated_risk_ai_system_registration, [
    required_registration/1,
    secure_non_public_section/1,
    permitted_registration_data/2,
    permitted_access/2
]).
:- dynamic elevated_risk_ai_system/1.
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
:- dynamic data_annex_viii_section_a_point/2.
:- dynamic data_annex_viii_section_b_point/2.
:- dynamic data_annex_ix_point/2.
:- dynamic european_commission/1.
:- dynamic national_public_authority_article_74_8/1.
:- dynamic restricted_section_article_49_4/1.

permitted_registration_data(XRegistration, XInformation) :-
    registration_article_49(XRegistration, XSystem),
    relevant_elevated_risk_ai_system(XSystem),
    allowed_data(XInformation).

allowed_annex_viii_section_b_point(2).

allowed_annex_viii_section_b_point(1).

relevant_area(XSystem) :- area_asylum(XSystem).

allowed_annex_ix_point(3).

allowed_annex_viii_section_a_point(1).

allowed_annex_viii_section_b_point(3).

relevant_annex_iii_point(XSystem) :- annex_iii_point_6(XSystem).

secure_non_public_section(XRegistration) :-
    registration_article_49(XRegistration, XSystem),
    relevant_elevated_risk_ai_system(XSystem).

allowed_annex_viii_section_a_point(4).

registration_article_49(XRegistration, XSystem) :-
    registration_article_49_1(XRegistration, XSystem).

allowed_annex_viii_section_b_point(9).

allowed_annex_ix_point(2).

relevant_area(XSystem) :- area_law_enforcement(XSystem).

authorised_actor(XActor) :-
    national_public_authority_article_74_8(XActor).

authorised_actor(XActor) :-
    european_commission(XActor).

allowed_annex_viii_section_b_point(8).

allowed_annex_viii_section_a_point(3).

permitted_access(XActor, XSection) :-
    restricted_section_article_49_4(XSection),
    authorised_actor(XActor).

allowed_annex_viii_section_b_point(4).

allowed_annex_viii_section_b_point(5).

relevant_area(XSystem) :- area_border_control_management(XSystem).

allowed_data(XInformation) :-
    data_annex_viii_section_a_point(XInformation, XPoint),
    allowed_annex_viii_section_a_point(XPoint).

relevant_area(XSystem) :- area_migration(XSystem).

allowed_annex_viii_section_a_point(5).

registration_article_49(XRegistration, XSystem) :-
    registration_article_49_3(XRegistration, XSystem).

allowed_annex_ix_point(1).

allowed_data(XInformation) :-
    data_annex_viii_section_b_point(XInformation, XPoint),
    allowed_annex_viii_section_b_point(XPoint).

allowed_data(XInformation) :-
    data_annex_ix_point(XInformation, XPoint),
    allowed_annex_ix_point(XPoint).

allowed_annex_ix_point(5).

relevant_annex_iii_point(XSystem) :- annex_iii_point_1(XSystem).

allowed_annex_viii_section_a_point(7).

allowed_annex_viii_section_a_point(2).

registration_article_49(XRegistration, XSystem) :-
    registration_article_49_2(XRegistration, XSystem).

required_registration(XRegistration) :-
    registration_article_49(XRegistration, XSystem),
    relevant_elevated_risk_ai_system(XSystem).

allowed_annex_viii_section_a_point(10).

relevant_annex_iii_point(XSystem) :- annex_iii_point_7(XSystem).

relevant_elevated_risk_ai_system(XSystem) :-
    elevated_risk_ai_system(XSystem),
    relevant_annex_iii_point(XSystem),
    relevant_area(XSystem).
