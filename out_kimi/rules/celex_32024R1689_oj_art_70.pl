% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6286fe926acce524cd24a9c9e4ab2eed0c7a7e526e3ff7eb4f23f0dc9dab9fb1
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred must_designate/2, gloss('Member State shall designate authority'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate/2, gloss('Member State shall communicate information to Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_make_publicly_available/2, gloss('Member State shall make information publicly available'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_resources/2, gloss('Member State shall ensure adequate resources for authority'), source('celex:32024R1689/oj#art_70').
:- pred must_assess_annually/2, gloss('Member State shall assess requirements annually'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_cybersecurity/2, gloss('authority shall ensure adequate cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred must_report/2, gloss('Member State shall report to Commission'), source('celex:32024R1689/oj#art_70').
:- pred may_provide_guidance/2, gloss('authority may provide guidance and advice'), source('celex:32024R1689/oj#art_70').
:- pred must_consult/2, gloss('authority shall consult other authority'), source('celex:32024R1689/oj#art_70').
:- pred competent_authority_for_supervision/2, gloss('entity acts as competent authority for supervision of another'), source('celex:32024R1689/oj#art_70').

must_designate(MemberState, national_competent_authority(Authority)) :-
    member_state(MemberState),
    (notifying_authority(Authority) ; market_surveillance_authority(Authority)),
    national_competent_authority(Authority).

must_communicate(MemberState, identity_and_tasks(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    (notifying_authority(Authority) ; market_surveillance_authority(Authority)).

must_communicate(MemberState, subsequent_changes(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    (notifying_authority(Authority) ; market_surveillance_authority(Authority)).

must_communicate(MemberState, single_point_of_contact_designation(Authority)) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    single_point_of_contact(Authority).

must_make_publicly_available(MemberState, contact_information(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    single_point_of_contact(Authority),
    by(date(2, august, 2025)).

must_ensure_resources(MemberState, national_competent_authority(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    adequate(technical_resources),
    adequate(financial_resources),
    adequate(human_resources),
    adequate(infrastructure).

must_assess_annually(MemberState, competence_and_resource_requirements) :-
    member_state(MemberState),
    national_competent_authority(_Authority).

must_ensure_cybersecurity(national_competent_authority(Authority), adequate_level) :-
    national_competent_authority(Authority).

must_report(MemberState, status_of_resources(Authority)) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    by(date(2, august, 2025)),
    frequency(years(2)).

may_provide_guidance(national_competent_authority(Authority), implementation(advice)) :-
    national_competent_authority(Authority),
    target(sme),
    target(start_up).

must_consult(national_competent_authority(Authority), other_competent_authority(OtherLaw)) :-
    national_competent_authority(Authority),
    guidance_area(Area),
    covered_by_other_union_law(Area),
    national_competent_authority_under_law(OtherLaw).

competent_authority_for_supervision(european_data_protection_supervisor, union_institution(Institution)) :-
    union_institution(Institution),
    falls_within_scope(Institution).

provenance(must_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_annually/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_cybersecurity/2, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult/2, 'celex:32024R1689/oj#art_70').
provenance(competent_authority_for_supervision/2, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
