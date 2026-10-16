% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2ff8bfac0db682b1eb55ceedeacf0cd9460727ae2ad35c61b91a2c8ef2a4342a
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred member_state/1, gloss('member state of the European Union'), source('celex:32024R1689/oj#art_70').
:- pred single_point_of_contact/1, gloss('market surveillance authority designated as contact point'), source('celex:32024R1689/oj#art_70').
:- pred union_institution_or_body/1, gloss('union institution body office or agency'), source('celex:32024R1689/oj#art_70').
:- pred european_data_protection_supervisor/1, gloss('supervisor for union institutions and bodies'), source('celex:32024R1689/oj#art_70').
:- pred must_designate_national_competent_authorities(MS, Authorities) , gloss('member state must designate notifying and market surveillance authorities'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate_authority_identity(MS, Commission) , gloss('member state must communicate identity and tasks of authorities to commission'), source('celex:32024R1689/oj#art_70').
:- pred must_make_contact_info_public(MS) , gloss('member state must make contact info for authorities publicly available'), source('celex:32024R1689/oj#art_70').
:- pred must_designate_single_point_of_contact(MS, SPC) , gloss('member state must designate a market surveillance authority as single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred must_notify_single_point_of_contact(MS, Commission) , gloss('member state must notify commission of single point of contact identity'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_adequate_resources(MS, Authority) , gloss('member state must ensure authority has adequate resources and infrastructure'), source('celex:32024R1689/oj#art_70').
:- pred must_assess_competence_requirements_annually(MS, Authority) , gloss('member state must assess and update competence requirements annually'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_cybersecurity(Authority) , gloss('national competent authority must ensure adequate cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred must_act_confidentially(Authority) , gloss('national competent authority must act in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_70').
:- pred must_report_resource_status(MS, Commission) , gloss('member state must report on status of financial and human resources'), source('celex:32024R1689/oj#art_70').
:- pred must_facilitate_exchange_of_experience(Commission) , gloss('commission must facilitate exchange of experience between authorities'), source('celex:32024R1689/oj#art_70').
:- pred may_provide_guidance(Authority, Recipient) , gloss('national competent authority may provide guidance on implementation'), source('celex:32024R1689/oj#art_70').
:- pred must_consult_other_authorities(Authority, OtherAuthority) , gloss('authority must consult other authorities when providing guidance in overlapping areas'), source('celex:32024R1689/oj#art_70').
:- pred acts_as_competent_authority_for_union_bodies(Supervisor) , gloss('edps acts as competent authority for union institutions'), source('celex:32024R1689/oj#art_70').

must_designate_national_competent_authorities(MS, authorities(notifying(NA), market_surveillance(MSA))) :-
    member_state(MS),
    notifying_authority(NA),
    market_surveillance_authority(MSA).

must_communicate_authority_identity(MS, commission) :-
    member_state(MS),
    must_designate_national_competent_authorities(MS, _).

must_make_contact_info_public(MS) :-
    member_state(MS),
    by_date(date(2025, 8, 2)).

must_designate_single_point_of_contact(MS, SPC) :-
    member_state(MS),
    market_surveillance_authority(SPC),
    single_point_of_contact(SPC).

must_notify_single_point_of_contact(MS, commission) :-
    member_state(MS),
    must_designate_single_point_of_contact(MS, _SPC).

must_ensure_adequate_resources(MS, A) :-
    member_state(MS),
    national_competent_authority(A),
    operator(A).

must_assess_competence_requirements_annually(MS, A) :-
    member_state(MS),
    national_competent_authority(A),
    operator(A).

must_ensure_cybersecurity(A) :-
    national_competent_authority(A),
    operator(A).

must_act_confidentially(A) :-
    national_competent_authority(A),
    operator(A).

must_report_resource_status(MS, commission) :-
    member_state(MS),
    must_designate_national_competent_authorities(MS, _).

must_facilitate_exchange_of_experience(commission).

may_provide_guidance(A, Recipient) :-
    national_competent_authority(A),
    operator(A).

must_consult_other_authorities(A, OA) :-
    national_competent_authority(A),
    national_competent_authority(OA),
    A \= OA.

acts_as_competent_authority_for_union_bodies(edps) :-
    european_data_protection_supervisor(edps).

provenance(must_designate_national_competent_authorities/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_authority_identity/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_info_public/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_notify_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_competence_requirements_annually/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_confidentially/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_resource_status/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange_of_experience/1, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities/2, 'celex:32024R1689/oj#art_70').
provenance(acts_as_competent_authority_for_union_bodies/1, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
