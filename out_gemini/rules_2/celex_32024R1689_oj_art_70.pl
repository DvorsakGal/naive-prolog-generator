% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : affa0b0f503ff929c0922c519e0983d5b7d88d4ee710e2c2a1c0427534e24f3c
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_70').
:- pred single_point_of_contact/1, gloss('authority designated as the single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred edps/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_70').
:- pred competent_authority_for/2, gloss('authority acts as competent authority for an entity or scope'), source('celex:32024R1689/oj#art_70').
:- pred permitted_provide_guidance_and_advice/2, gloss('authority is permitted to provide guidance and advice on AI Act implementation to a target'), source('celex:32024R1689/oj#art_70').
:- pred scope_of_act/1, gloss('entity falls within the scope of the AI Act'), source('celex:32024R1689/oj#art_70').

% Paragraph 1: Member State designation obligations
must_comply(MS, establish_or_designate(national_competent_authorities)) :-
    member_state(MS).

must_comply(Auth, independent_and_impartial_exercise_of_powers) :-
    national_competent_authority(Auth).

% Paragraph 2: Communications, designations, publications
must_comply(MS, communicate(commission, authorities_and_tasks)) :-
    member_state(MS).

must_comply(MS, make_publicly_available(contact_information, deadline(date(2025, 8, 2)))) :-
    member_state(MS).

must_comply(MS, designate_single_point_of_contact(Auth)) :-
    member_state(MS),
    market_surveillance_authority(Auth).

single_point_of_contact(Auth) :-
    market_surveillance_authority(Auth),
    member_state(MS),
    must_comply(MS, designate_single_point_of_contact(Auth)).

must_comply(MS, notify(commission, single_point_of_contact(Auth))) :-
    member_state(MS),
    single_point_of_contact(Auth).

must_comply(Comm, make_publicly_available(list_of_single_points_of_contact)) :-
    commission(Comm).

% Paragraph 3: Resources and annual assessment
must_comply(MS, provide_adequate_resources_and_infrastructure(Auth)) :-
    member_state(MS),
    national_competent_authority(Auth).

must_comply(MS, assess_and_update_resource_requirements(annual)) :-
    member_state(MS).

% Paragraph 4: Cybersecurity
must_comply(Auth, ensure_adequate_level_of_cybersecurity) :-
    national_competent_authority(Auth).

% Paragraph 5: Confidentiality
must_comply(Auth, confidentiality_obligations) :-
    national_competent_authority(Auth).

% Paragraph 6: Reporting on resources
must_report(MS, commission(status_and_adequacy_of_resources(deadline(date(2025, 8, 2)), recurrence(years(2))))) :-
    member_state(MS).

must_comply(Comm, transmit_to_board(resources_reports)) :-
    commission(Comm).

% Paragraph 7: Commission facilitation
must_comply(Comm, facilitate_exchange_of_experience(national_competent_authorities)) :-
    commission(Comm).

% Paragraph 8: Guidance and advice
permitted_provide_guidance_and_advice(Auth, implementation_of_ai_act) :-
    national_competent_authority(Auth).

% Paragraph 9: EDPS supervision of Union institutions
competent_authority_for(EDPS, UnionEntity) :-
    edps(EDPS),
    union_institution_body_office_agency(UnionEntity),
    scope_of_act(UnionEntity).

provenance(must_comply/2, 'celex:32024R1689/oj#art_70').
provenance(single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(permitted_provide_guidance_and_advice/2, 'celex:32024R1689/oj#art_70').
provenance(competent_authority_for/2, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
