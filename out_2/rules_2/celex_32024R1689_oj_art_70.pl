% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 4550de95396b04a0ffa285fc94bbf03e96b0156d5e436aaf86cf5180bc7f249e
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred must_communicate/2, gloss('Member State communicates information to the Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure/2, gloss('Member State ensures resources are provided to national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred must_assess_and_update/2, gloss('Member State assesses and updates competence and resource requirements annually'), source('celex:32024R1689/oj#art_70').
:- pred must_take_measures/2, gloss('National competent authority takes measures to ensure cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred must_act_in_accordance/2, gloss('National competent authority acts in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_70').
:- pred must_report/2, gloss('Member State reports resources status to the Commission periodically'), source('celex:32024R1689/oj#art_70').
:- pred must_transmit/2, gloss('Commission transmits information to the Board'), source('celex:32024R1689/oj#art_70').
:- pred must_facilitate/2, gloss('Commission facilitates exchange of experience between national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred permitted_provide_guidance/2, gloss('National competent authority may provide guidance and advice'), source('celex:32024R1689/oj#art_70').
:- pred must_act/2, gloss('European Data Protection Supervisor acts as competent authority for Union institutions'), source('celex:32024R1689/oj#art_70').

must_designate_or_establish(MS, NA) :-
    member_state(MS),
    notifying_authority(NA),
    NA = NA.

must_designate_or_establish(MS, MSA) :-
    member_state(MS),
    market_surveillance_authority(MSA),
    MSA = MSA.

must_communicate(MS, identity_of(Authority)) :-
    member_state(MS),
    (   notifying_authority(Authority)
    ;   market_surveillance_authority(Authority)
    ;   single_point_of_contact(Authority)
    ),
    Authority = Authority.

must_make_publicly_available(MS, contact_information(competent_authorities)) :-
    member_state(MS),
    deadline(date(2025,8,2)),
    MS = MS.

must_designate_or_establish(MS, SPOC) :-
    member_state(MS),
    market_surveillance_authority(SPOC),
    single_point_of_contact(SPOC),
    SPOC = SPOC.

must_communicate(MS, single_point_of_contact_identity(SPOC)) :-
    member_state(MS),
    single_point_of_contact(SPOC),
    SPOC = SPOC.

must_make_publicly_available(commission, list_of(single_points_of_contact)).

must_ensure(MS, resources_provided(NCA)) :-
    member_state(MS),
    national_competent_authority(NCA),
    NCA = NCA.

must_assess_and_update(MS, competence_and_resource_requirements) :-
    member_state(MS),
    annual_basis,
    MS = MS.

must_take_measures(NCA, cybersecurity) :-
    national_competent_authority(NCA),
    NCA = NCA.

must_act_in_accordance(NCA, confidentiality_obligations) :-
    national_competent_authority(NCA),
    NCA = NCA.

must_report(MS, resources_status_report) :-
    member_state(MS),
    deadline(date(2025,8,2)),
    periodic(years(2)),
    MS = MS.

must_transmit(commission, information_to_board).

must_facilitate(commission, exchange_of_experience_between(national_competent_authorities)).

permitted_provide_guidance(NCA, guidance_and_advice) :-
    national_competent_authority(NCA),
    NCA = NCA.

must_act(european_data_protection_supervisor, competent_authority_supervision).

provenance(must_designate_or_establish/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_and_update/2, 'celex:32024R1689/oj#art_70').
provenance(must_take_measures/2, 'celex:32024R1689/oj#art_70').
provenance(must_act_in_accordance/2, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(must_transmit/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_70').
provenance(permitted_provide_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(must_act/2, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
