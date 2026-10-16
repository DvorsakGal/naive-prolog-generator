% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dc2d6b03fe608a3324bf84b1e56c464d46bf0a5d692ff98c750bb28c2c1fcdbf
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred member_state/1, gloss('entity that is an EU Member State'), source('celex:32024R1689/oj#art_70').
:- pred single_point_of_contact/1, gloss('designated market surveillance authority acting as single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred union_institution_body_office_or_agency/1, gloss('EU institution, body, office or agency'), source('celex:32024R1689/oj#art_70').
:- pred must_designate/2, gloss('actor must designate a specified authority or body'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate/2, gloss('actor must communicate specified information to a recipient'), source('celex:32024R1689/oj#art_70').
:- pred must_publish/2, gloss('actor must make specified information publicly available'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure/2, gloss('actor must ensure a specified condition or provision'), source('celex:32024R1689/oj#art_70').
:- pred must_assess/2, gloss('actor must assess specified requirements periodically'), source('celex:32024R1689/oj#art_70').
:- pred must_take_measures/2, gloss('actor must take measures regarding a specified matter'), source('celex:32024R1689/oj#art_70').
:- pred must_comply_with/2, gloss('actor must comply with specified obligations'), source('celex:32024R1689/oj#art_70').
:- pred must_report/2, gloss('actor must report specified matters to a recipient'), source('celex:32024R1689/oj#art_70').
:- pred must_transmit/2, gloss('actor must transmit specified information to a recipient'), source('celex:32024R1689/oj#art_70').
:- pred must_facilitate/2, gloss('actor must facilitate specified processes'), source('celex:32024R1689/oj#art_70').
:- pred permitted_guidance/2, gloss('actor is permitted to provide guidance and advice on a subject'), source('celex:32024R1689/oj#art_70').
:- pred must_consult/2, gloss('actor must consult another authority on a matter'), source('celex:32024R1689/oj#art_70').
:- pred competent_authority_for/2, gloss('authority acts as competent authority for an entity'), source('celex:32024R1689/oj#art_70').

% Paragraph 1: National competent authorities designation
national_competent_authority(A) :-
    notifying_authority(A).
national_competent_authority(A) :-
    market_surveillance_authority(A).

must_designate(MS, authority(notifying_authority)) :-
    member_state(MS).

must_designate(MS, authority(market_surveillance_authority)) :-
    member_state(MS).

% Paragraph 2: Single point of contact and notifications
single_point_of_contact(A) :-
    market_surveillance_authority(A).

must_designate(MS, single_point_of_contact(A)) :-
    member_state(MS),
    market_surveillance_authority(A).

must_communicate(MS, to(commission, identity_and_tasks(A))) :-
    member_state(MS),
    national_competent_authority(A).

must_communicate(MS, to(commission, single_point_of_contact(A))) :-
    member_state(MS),
    single_point_of_contact(A).

must_publish(MS, contact_information(national_competent_authorities_and_spoc)) :-
    member_state(MS).

must_publish(commission, list_of_single_points_of_contact).

% Paragraph 3: Resources
must_ensure(MS, adequate_resources(A)) :-
    member_state(MS),
    national_competent_authority(A).

must_assess(MS, periodicity(annual, competence_and_resource_requirements(A))) :-
    member_state(MS),
    national_competent_authority(A).

% Paragraph 4: Cybersecurity
must_take_measures(A, adequate_level(cybersecurity)) :-
    national_competent_authority(A).

% Paragraph 5: Confidentiality
must_comply_with(A, confidentiality_obligations) :-
    national_competent_authority(A).

% Paragraph 6: Reporting on resources
must_report(MS, to(commission, periodicity(years(2), adequacy_assessment(financial_and_human_resources(national_competent_authorities))))) :-
    member_state(MS).

must_transmit(commission, to(board, resource_reports(national_competent_authorities))).

% Paragraph 7: Exchange of experience
must_facilitate(commission, exchange_of_experience(national_competent_authorities)).

% Paragraph 8: Guidance and consultation
permitted_guidance(A, implementation(ai_act)) :-
    national_competent_authority(A).

must_consult(A, other_union_law_national_competent_authorities(ai_system(S))) :-
    national_competent_authority(A),
    ai_system(S).

% Paragraph 9: European Data Protection Supervisor for EU bodies
competent_authority_for(european_data_protection_supervisor, E) :-
    union_institution_body_office_or_agency(E).

% Provenance facts
provenance(national_competent_authority/1, 'celex:32024R1689/oj#art_70').
provenance(single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(member_state/1, 'celex:32024R1689/oj#art_70').
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_70').
provenance(must_publish/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess/2, 'celex:32024R1689/oj#art_70').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_70').
provenance(must_comply_with/2, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(must_transmit/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_70').
provenance(permitted_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult/2, 'celex:32024R1689/oj#art_70').
provenance(competent_authority_for/2, 'celex:32024R1689/oj#art_70').

% References
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
