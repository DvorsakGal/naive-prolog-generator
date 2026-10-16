% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 174fdfe48b9b092a532f523a1ebead65e8fef38af11298df0087eab4dd090d0d
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred must_establish_or_designate/2, gloss('Member State must establish or designate national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate_identity/2, gloss('Member State must communicate identity of notifying and market surveillance authorities to Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_make_publicly_available/2, gloss('Member State must make publicly available contact information for competent authorities and single points of contact'), source('celex:32024R1689/oj#art_70').
:- pred must_designate_single_point_of_contact/2, gloss('Member State must designate a market surveillance authority as single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred must_notify_identity_of_single_point_of_contact/2, gloss('Member State must notify Commission of identity of single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred must_make_list_publicly_available/1, gloss('Commission must make list of single points of contact publicly available'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_adequate_resources/2, gloss('Member State must ensure national competent authorities have adequate technical, financial and human resources and infrastructure'), source('celex:32024R1689/oj#art_70').
:- pred must_have_sufficient_personnel/1, gloss('national competent authority must have sufficient number of permanently available personnel with required expertise'), source('celex:32024R1689/oj#art_70').
:- pred must_assess_and_update_requirements/1, gloss('Member State must assess and if necessary update competence and resource requirements annually'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_adequate_cybersecurity/1, gloss('national competent authority must take appropriate measures to ensure adequate level of cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred must_act_in_accordance_with_confidentiality/1, gloss('national competent authority must act in accordance with confidentiality obligations of Article 78'), source('celex:32024R1689/oj#art_70').
:- pred must_report_on_resources/2, gloss('Member State must report to Commission on status of financial and human resources of national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred must_transmit_information_to_board/1, gloss('Commission must transmit resource information to Board for discussion and possible recommendations'), source('celex:32024R1689/oj#art_70').
:- pred must_facilitate_exchange_of_experience/1, gloss('Commission must facilitate exchange of experience between national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred may_provide_guidance_and_advice/2, gloss('national competent authority may provide guidance and advice on implementation, in particular to SMEs'), source('celex:32024R1689/oj#art_70').
:- pred must_consult_other_authorities/2, gloss('national competent authority must consult other Union law authorities when providing guidance on AI system in areas covered by other Union law'), source('celex:32024R1689/oj#art_70').
:- pred acts_as_competent_authority/2, gloss('European Data Protection Supervisor acts as competent authority for supervision of Union institutions'), source('celex:32024R1689/oj#art_70').

% Paragraph 1
must_establish_or_designate(MemberState, authorities(notifying_authority, market_surveillance_authority)) :-
    member_state(MemberState).

must_exercise_powers_independently(Authority) :-
    national_competent_authority(Authority).

must_refrain_from_incompatible_action(Member) :-
    member_of_authority(Member),
    national_competent_authority(Authority),
    member_of(Member, Authority).

% Paragraph 2
must_communicate_identity(MemberState, identity(notifying_authorities, market_surveillance_authorities, tasks)) :-
    member_state(MemberState).

must_make_publicly_available(MemberState, contact_information(competent_authorities, single_points_of_contact)) :-
    member_state(MemberState).

must_designate_single_point_of_contact(MemberState, market_surveillance_authority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    designated_as_single_point_of_contact(Authority).

must_notify_identity_of_single_point_of_contact(MemberState, single_point_of_contact) :-
    member_state(MemberState),
    designated_as_single_point_of_contact(Authority),
    single_point_of_contact(Authority).

must_make_list_publicly_available(Commission) :-
    ai_office(Commission).

% Paragraph 3
must_ensure_adequate_resources(MemberState, resources(technical, financial, human, infrastructure)) :-
    member_state(MemberState).

must_have_sufficient_personnel(Authority) :-
    national_competent_authority(Authority).

must_assess_and_update_requirements(MemberState) :-
    member_state(MemberState).

% Paragraph 4
must_ensure_adequate_cybersecurity(Authority) :-
    national_competent_authority(Authority).

% Paragraph 5
must_act_in_accordance_with_confidentiality(Authority) :-
    national_competent_authority(Authority).

% Paragraph 6
must_report_on_resources(MemberState, status(financial_resources, human_resources, adequacy_assessment)) :-
    member_state(MemberState).

must_transmit_information_to_board(Commission) :-
    ai_office(Commission).

% Paragraph 7
must_facilitate_exchange_of_experience(Commission) :-
    ai_office(Commission).

% Paragraph 8
may_provide_guidance_and_advice(Authority, smes_including_startups) :-
    national_competent_authority(Authority).

must_consult_other_authorities(Authority, ai_system_in_other_union_law_area) :-
    national_competent_authority(Authority),
    intends_to_provide_guidance(Authority, ai_system_in_other_union_law_area).

% Paragraph 9
acts_as_competent_authority(european_data_protection_supervisor, union_institutions_bodies_offices_agencies) :-
    within_scope_of_regulation(union_institutions_bodies_offices_agencies).

% Provenance
provenance(must_establish_or_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_exercise_powers_independently/1, 'celex:32024R1689/oj#art_70').
provenance(must_refrain_from_incompatible_action/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_identity/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_notify_identity_of_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_list_publicly_available/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_have_sufficient_personnel/1, 'celex:32024R1689/oj#art_70').
provenance(must_assess_and_update_requirements/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_in_accordance_with_confidentiality/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_on_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_transmit_information_to_board/1, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange_of_experience/1, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance_and_advice/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities/2, 'celex:32024R1689/oj#art_70').
provenance(acts_as_competent_authority/2, 'celex:32024R1689/oj#art_70').

% References
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
