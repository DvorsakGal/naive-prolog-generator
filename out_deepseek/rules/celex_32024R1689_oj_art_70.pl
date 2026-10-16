% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b9d472976ac6bbedef7ab1b5eba653c3950821c8edceb522cff0c3afd284ec47
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred must_establish_or_designate/2, gloss('Member State must establish or designate a national competent authority'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate_identity/2, gloss('Member State must communicate identity of authority to Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_make_publicly_available/2, gloss('Member State must make contact information publicly available'), source('celex:32024R1689/oj#art_70').
:- pred must_designate_single_point_of_contact/2, gloss('Member State must designate a market surveillance authority as single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred must_notify_single_point_of_contact/2, gloss('Member State must notify Commission of single point of contact identity'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_resources/2, gloss('Member State must ensure adequate resources for national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred must_assess_resource_requirements/2, gloss('Member State must assess and update resource requirements annually'), source('celex:32024R1689/oj#art_70').
:- pred must_take_cybersecurity_measures/1, gloss('National competent authority must ensure adequate cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred must_act_with_confidentiality/1, gloss('National competent authority must observe confidentiality obligations'), source('celex:32024R1689/oj#art_70').
:- pred must_report_resources/2, gloss('Member State must report on resources to Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_facilitate_exchange/2, gloss('Commission must facilitate exchange of experience between authorities'), source('celex:32024R1689/oj#art_70').
:- pred may_provide_guidance/2, gloss('National competent authority may provide guidance on implementation'), source('celex:32024R1689/oj#art_70').
:- pred must_consult_other_authorities/2, gloss('National competent authority must consult other authorities when guidance covers other Union law'), source('celex:32024R1689/oj#art_70').
:- pred acts_as_competent_authority/2, gloss('European Data Protection Supervisor acts as competent authority for Union institutions'), source('celex:32024R1689/oj#art_70').

must_establish_or_designate(MemberState, notifying_authority) :-
    member_state(MemberState).

must_establish_or_designate(MemberState, market_surveillance_authority) :-
    member_state(MemberState).

must_communicate_identity(MemberState, notifying_authority) :-
    member_state(MemberState).

must_communicate_identity(MemberState, market_surveillance_authority) :-
    member_state(MemberState).

must_make_publicly_available(MemberState, contact_information) :-
    member_state(MemberState).

must_designate_single_point_of_contact(MemberState, Authority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority).

must_notify_single_point_of_contact(MemberState, Authority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority).

must_ensure_resources(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority).

must_assess_resource_requirements(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority).

must_take_cybersecurity_measures(Authority) :-
    national_competent_authority(Authority).

must_act_with_confidentiality(Authority) :-
    national_competent_authority(Authority).

must_report_resources(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority).

must_facilitate_exchange(Commission, Authority) :-
    ai_office(Commission),
    national_competent_authority(Authority).

may_provide_guidance(Authority, implementation(Regulation)) :-
    national_competent_authority(Authority).

must_consult_other_authorities(Authority, ai_system_in_other_law_area(System)) :-
    national_competent_authority(Authority),
    ai_system(System).

acts_as_competent_authority(edps, union_institution(UnionBody)) :-
    union_institution_body_office_or_agency(UnionBody).

provenance(must_establish_or_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_identity/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_notify_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_resource_requirements/2, 'celex:32024R1689/oj#art_70').
provenance(must_take_cybersecurity_measures/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_with_confidentiality/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange/2, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities/2, 'celex:32024R1689/oj#art_70').
provenance(acts_as_competent_authority/2, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
