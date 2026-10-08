% unit       : celex:32024R1689/oj#art_70
% title      : Designation of national competent authorities and single points of contact
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : gpt-oss:120b-cloud
% prompt sha : 4694e7140d5494810a3857197b4039eca4a861bdc2c963dfa8f9d5223181e42f
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_70').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_70').

required_designate_notifying_authority(MS) :-
    member_state(MS).
provenance(required_designate_notifying_authority/1, 'celex:32024R1689/oj#art_70').

required_designate_market_surveillance_authority(MS) :-
    member_state(MS).
provenance(required_designate_market_surveillance_authority/1, 'celex:32024R1689/oj#art_70').

required_communicate_nca_identities(MS) :-
    member_state(MS).
provenance(required_communicate_nca_identities/1, 'celex:32024R1689/oj#art_70').

required_make_public_contact_info(MS) :-
    member_state(MS).
provenance(required_make_public_contact_info/1, 'celex:32024R1689/oj#art_70').

required_designate_spoc_market_surveillance_authority(MS) :-
    member_state(MS).
provenance(required_designate_spoc_market_surveillance_authority/1, 'celex:32024R1689/oj#art_70').

required_commission_publish_spoc_list.
provenance(required_commission_publish_spoc_list/0, 'celex:32024R1689/oj#art_70').

required_provide_adequate_resources(NCA) :-
    national_competent_authority(NCA).
provenance(required_provide_adequate_resources/1, 'celex:32024R1689/oj#art_70').

required_annual_assessment_of_resources(MS) :-
    member_state(MS).
provenance(required_annual_assessment_of_resources/1, 'celex:32024R1689/oj#art_70').

required_ensure_cybersecurity(NCA) :-
    national_competent_authority(NCA).
provenance(required_ensure_cybersecurity/1, 'celex:32024R1689/oj#art_70').

required_observe_confidentiality(NCA) :-
    national_competent_authority(NCA).
provenance(required_observe_confidentiality/1, 'celex:32024R1689/oj#art_70').

required_report_resources_status(MS) :-
    member_state(MS).
provenance(required_report_resources_status/1, 'celex:32024R1689/oj#art_70').

required_transmit_information_to_board(Comm) :-
    commission(Comm).
provenance(required_transmit_information_to_board/1, 'celex:32024R1689/oj#art_70').

required_facilitate_exchange_experience(Comm) :-
    commission(Comm).
provenance(required_facilitate_exchange_experience/1, 'celex:32024R1689/oj#art_70').

permitted_provide_guidance(NCA) :-
    national_competent_authority(NCA).
provenance(permitted_provide_guidance/1, 'celex:32024R1689/oj#art_70').

required_consult_other_authorities(NCA) :-
    national_competent_authority(NCA).
provenance(required_consult_other_authorities/1, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
