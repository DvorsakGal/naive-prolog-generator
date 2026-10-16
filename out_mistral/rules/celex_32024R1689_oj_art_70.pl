% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2727efc3d682150ebbc109d3b7fab8a0e86221e6f4fd5d660d8abdca4d790e16
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred member_state/1, gloss('EU Member State'), source('celex:32024R1689/oj#art_70').
:- pred single_point_of_contact/1, gloss('market surveillance authority designated as single point of contact for the Regulation'), source('celex:32024R1689/oj#art_70').
:- pred adequate_cybersecurity/1, gloss('adequate level of cybersecurity ensured by national competent authority'), source('celex:32024R1689/oj#art_70').
:- pred adequate_resources/1, gloss('adequate technical, financial and human resources and infrastructure provided to national competent authority'), source('celex:32024R1689/oj#art_70').
:- pred sufficient_personnel/1, gloss('sufficient number of personnel permanently available with required competences and expertise'), source('celex:32024R1689/oj#art_70').
:- pred annual_competence_assessment/1, gloss('annual assessment and update of competence and resource requirements'), source('celex:32024R1689/oj#art_70').
:- pred biennial_resource_report/1, gloss('report to Commission on status of financial and human resources every two years'), source('celex:32024R1689/oj#art_70').
:- pred experience_exchange_facilitated/1, gloss('Commission facilitates exchange of experience between national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred guidance_and_advice_provided/1, gloss('national competent authority provides guidance and advice on implementation of the Regulation'), source('celex:32024R1689/oj#art_70').
:- pred edps_competent_authority/1, gloss('European Data Protection Supervisor acts as competent authority for Union institutions, bodies, offices or agencies'), source('celex:32024R1689/oj#art_70').

must_designate_national_competent_authorities(MemberState) :-
    member_state(MemberState).

must_ensure_independent_impartial_unbiased(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).

must_refrain_from_incompatible_action(Member) :-
    national_competent_authority(Authority),
    member_of_authority(Member, Authority).

must_communicate_authorities_to_commission(MemberState) :-
    member_state(MemberState).

must_make_contact_information_public(MemberState) :-
    member_state(MemberState).

must_designate_single_point_of_contact(MemberState) :-
    member_state(MemberState).

must_notify_commission_of_single_point_of_contact(MemberState) :-
    member_state(MemberState).

must_provide_adequate_resources(MemberState, NationalCompetentAuthority) :-
    member_state(MemberState),
    national_competent_authority(NationalCompetentAuthority).

must_ensure_sufficient_personnel(MemberState, NationalCompetentAuthority) :-
    member_state(MemberState),
    national_competent_authority(NationalCompetentAuthority).

must_assess_competence_annually(MemberState) :-
    member_state(MemberState).

must_ensure_adequate_cybersecurity(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).

must_obey_confidentiality(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).

must_report_resources_biennially(MemberState) :-
    member_state(MemberState).

must_facilitate_experience_exchange :-
    true.

may_provide_guidance(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).

must_consult_other_authorities(NationalCompetentAuthority, AISystem) :-
    national_competent_authority(NationalCompetentAuthority),
    ai_system(AISystem),
    covered_by_other_union_law(AISystem).

edps_competent_authority(UnionEntity) :-
    union_institution_body_office_or_agency(UnionEntity),
    within_scope_of_regulation(UnionEntity).

member_of_authority(Member, Authority) :-
    national_competent_authority(Authority),
    member(Member, Authority).

member(Member, Authority) :-
    national_competent_authority(Authority).

covered_by_other_union_law(AISystem) :-
    ai_system(AISystem).

union_institution_body_office_or_agency(Entity) :-
    european_data_protection_supervisor(Entity).

within_scope_of_regulation(Entity) :-
    union_institution_body_office_or_agency(Entity).

european_data_protection_supervisor(_).

single_point_of_contact(Authority) :-
    market_surveillance_authority(Authority),
    designated_as_single_point_of_contact(Authority).

designated_as_single_point_of_contact(Authority) :-
    market_surveillance_authority(Authority).

adequate_resources(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority),
    provided_with_adequate_resources(NationalCompetentAuthority).

provided_with_adequate_resources(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).

sufficient_personnel(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority),
    has_sufficient_personnel(NationalCompetentAuthority).

has_sufficient_personnel(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).

adequate_cybersecurity(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority),
    ensures_adequate_cybersecurity(NationalCompetentAuthority).

ensures_adequate_cybersecurity(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).

annual_competence_assessment(MemberState) :-
    member_state(MemberState),
    assesses_competence_annually(MemberState).

assesses_competence_annually(MemberState) :-
    member_state(MemberState).

biennial_resource_report(MemberState) :-
    member_state(MemberState),
    reports_resources_biennially(MemberState).

reports_resources_biennially(MemberState) :-
    member_state(MemberState).

experience_exchange_facilitated :-
    commission_facilitates_experience_exchange.

commission_facilitates_experience_exchange.

guidance_and_advice_provided(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority),
    provides_guidance_and_advice(NationalCompetentAuthority).

provides_guidance_and_advice(NationalCompetentAuthority) :-
    national_competent_authority(NationalCompetentAuthority).

provenance(member_state/1, 'celex:32024R1689/oj#art_70').
provenance(single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(adequate_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(adequate_resources/1, 'celex:32024R1689/oj#art_70').
provenance(sufficient_personnel/1, 'celex:32024R1689/oj#art_70').
provenance(annual_competence_assessment/1, 'celex:32024R1689/oj#art_70').
provenance(biennial_resource_report/1, 'celex:32024R1689/oj#art_70').
provenance(experience_exchange_facilitated/1, 'celex:32024R1689/oj#art_70').
provenance(guidance_and_advice_provided/1, 'celex:32024R1689/oj#art_70').
provenance(edps_competent_authority/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_national_competent_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_independent_impartial_unbiased/1, 'celex:32024R1689/oj#art_70').
provenance(must_refrain_from_incompatible_action/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_authorities_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_information_public/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_notify_commission_of_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_provide_adequate_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_sufficient_personnel/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_competence_annually/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_obey_confidentiality/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_resources_biennially/1, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_experience_exchange/0, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/1, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities/2, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
