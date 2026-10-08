% unit       : celex:32024R1689/oj#art_70
% title      : Designation of national competent authorities and single points of contact
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : gpt-oss:120b-cloud
% prompt sha : a63c86ce710f044f067873e5b112194da416cca634c0d61a9c4a8f1cef27c847
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_70').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_70').
:- pred required_designation_of_notifying_authority/2, gloss('Member State must designate a notifying authority'), source('celex:32024R1689/oj#art_70').
:- pred required_designation_of_market_surveillance_authority/2, gloss('Member State must designate a market surveillance authority'), source('celex:32024R1689/oj#art_70').
:- pred required_independent_exercise_of_powers/1, gloss('National competent authority must exercise powers independently, impartially and without bias'), source('celex:32024R1689/oj#art_70').
:- pred prohibited_incompatible_action/1, gloss('Members of national competent authorities must refrain from actions incompatible with their duties'), source('celex:32024R1689/oj#art_70').
:- pred required_communication_of_nca_to_commission/1, gloss('Member State must communicate identities and tasks of national competent authorities to the Commission'), source('celex:32024R1689/oj#art_70').
:- pred required_public_availability_of_contact_info/1, gloss('Member State must make contact information for competent authorities publicly available'), source('celex:32024R1689/oj#art_70').
:- pred required_designation_of_spoc/2, gloss('Member State must designate a market surveillance authority as single point of contact and notify the Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_publish_spoc_list/1, gloss('Commission must publish list of single points of contact'), source('celex:32024R1689/oj#art_70').
:- pred required_provision_of_resources/1, gloss('Member State must ensure national competent authorities have adequate technical, financial and human resources'), source('celex:32024R1689/oj#art_70').
:- pred required_annual_assessment_of_resources/1, gloss('Member State must assess and update competence and resource requirements annually'), source('celex:32024R1689/oj#art_70').
:- pred required_cybersecurity_measures/1, gloss('National competent authorities must take appropriate measures to ensure adequate cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred required_confidentiality_observance/1, gloss('National competent authorities must act in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_70').
:- pred required_reporting_of_resources/1, gloss('Member State must report to the Commission on financial and human resources of national competent authorities every two years'), source('celex:32024R1689/oj#art_70').
:- pred must_transmit_to_board/1, gloss('Commission must transmit reported information to the Board'), source('celex:32024R1689/oj#art_70').
:- pred must_facilitate_exchange/1, gloss('Commission must facilitate exchange of experience between national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred permitted_provision_of_guidance/1, gloss('National competent authorities may provide guidance and advice on implementation'), source('celex:32024R1689/oj#art_70').
:- pred required_consultation_of_other_authority/2, gloss('National competent authorities must consult the competent authority under other Union law when providing guidance on AI systems'), source('celex:32024R1689/oj#art_70').
:- pred other_competent_authority/1, gloss('Competent authority under other Union law'), source('celex:32024R1689/oj#art_70').
:- pred designated_competent_authority/1, gloss('Designated competent authority for Union institutions, bodies, offices or agencies'), source('celex:32024R1689/oj#art_70').

required_designation_of_notifying_authority(MS, NA) :-
    member_state(MS),
    member_state(MS),
    notifying_authority(NA),
    notifying_authority(NA).

required_designation_of_market_surveillance_authority(MS, MA) :-
    member_state(MS),
    member_state(MS),
    market_surveillance_authority(MA),
    market_surveillance_authority(MA).

required_independent_exercise_of_powers(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).

prohibited_incompatible_action(Member) :-
    national_competent_authority(Member),
    national_competent_authority(Member).

required_communication_of_nca_to_commission(MS) :-
    member_state(MS),
    member_state(MS),
    commission(C),
    commission(C).

required_public_availability_of_contact_info(MS) :-
    member_state(MS),
    member_state(MS),
    commission(C),
    commission(C).

required_designation_of_spoc(MS, MA) :-
    member_state(MS),
    member_state(MS),
    market_surveillance_authority(MA),
    market_surveillance_authority(MA).

must_publish_spoc_list(C) :-
    commission(C),
    commission(C).

required_provision_of_resources(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).

required_annual_assessment_of_resources(MS) :-
    member_state(MS),
    member_state(MS).

required_cybersecurity_measures(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).

required_confidentiality_observance(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).

required_reporting_of_resources(MS) :-
    member_state(MS),
    member_state(MS),
    commission(C),
    commission(C).

must_transmit_to_board(C) :-
    commission(C),
    commission(C).

must_facilitate_exchange(C) :-
    commission(C),
    commission(C).

permitted_provision_of_guidance(Authority) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority).

required_consultation_of_other_authority(Authority, Other) :-
    national_competent_authority(Authority),
    national_competent_authority(Authority),
    other_competent_authority(Other),
    other_competent_authority(Other).

designated_competent_authority(european_data_protection_supervisor).

provenance(required_designation_of_notifying_authority/2, 'celex:32024R1689/oj#art_70').
provenance(required_designation_of_market_surveillance_authority/2, 'celex:32024R1689/oj#art_70').
provenance(required_independent_exercise_of_powers/1, 'celex:32024R1689/oj#art_70').
provenance(prohibited_incompatible_action/1, 'celex:32024R1689/oj#art_70').
provenance(required_communication_of_nca_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(required_public_availability_of_contact_info/1, 'celex:32024R1689/oj#art_70').
provenance(required_designation_of_spoc/2, 'celex:32024R1689/oj#art_70').
provenance(must_publish_spoc_list/1, 'celex:32024R1689/oj#art_70').
provenance(required_provision_of_resources/1, 'celex:32024R1689/oj#art_70').
provenance(required_annual_assessment_of_resources/1, 'celex:32024R1689/oj#art_70').
provenance(required_cybersecurity_measures/1, 'celex:32024R1689/oj#art_70').
provenance(required_confidentiality_observance/1, 'celex:32024R1689/oj#art_70').
provenance(required_reporting_of_resources/1, 'celex:32024R1689/oj#art_70').
provenance(must_transmit_to_board/1, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange/1, 'celex:32024R1689/oj#art_70').
provenance(permitted_provision_of_guidance/1, 'celex:32024R1689/oj#art_70').
provenance(required_consultation_of_other_authority/2, 'celex:32024R1689/oj#art_70').
provenance(designated_competent_authority/1, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
