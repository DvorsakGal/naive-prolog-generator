% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 9a974c140e2293abb1dd5ace6160c429cf667eeff26a83af2f58d76f7e440142
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred must_designate_national_competent_authorities/1, gloss('Member State obligation to designate notifying and market surveillance authorities'), source('celex:32024R1689/oj#art_70').
:- pred must_exercise_powers_independently_and_impartially/1, gloss('National competent authority obligation regarding independence and impartiality'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate_authority_identity_to_commission/1, gloss('Member State obligation to communicate identity and tasks of authorities to Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_make_contact_information_publicly_available/1, gloss('Member State obligation to publish contact information for authorities by deadline'), source('celex:32024R1689/oj#art_70').
:- pred must_designate_single_point_of_contact/1, gloss('Member State obligation to designate a market surveillance authority as single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred must_notify_single_point_of_contact_to_commission/1, gloss('Member State obligation to notify Commission of single point of contact identity'), source('celex:32024R1689/oj#art_70').
:- pred must_publish_list_of_single_points_of_contact/1, gloss('Commission obligation to make list of single points of contact publicly available'), source('celex:32024R1689/oj#art_70').
:- pred must_provide_adequate_resources_to_authorities/1, gloss('Member State obligation to provide technical, financial and human resources'), source('celex:32024R1689/oj#art_70').
:- pred must_assess_competence_and_resource_requirements_annually/1, gloss('Member State obligation to assess and update resource requirements annually'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_cybersecurity_level/1, gloss('National competent authority obligation to ensure adequate cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred must_act_in_accordance_with_confidentiality_obligations/1, gloss('National competent authority obligation to respect confidentiality under Article 78'), source('celex:32024R1689/oj#art_70').
:- pred must_report_on_resources_to_commission/1, gloss('Member State obligation to report on status of resources biennially'), source('celex:32024R1689/oj#art_70').
:- pred must_transmit_resource_report_to_board/1, gloss('Commission obligation to transmit resource reports to the Board'), source('celex:32024R1689/oj#art_70').
:- pred must_facilitate_exchange_of_experience/1, gloss('Commission obligation to facilitate exchange of experience between authorities'), source('celex:32024R1689/oj#art_70').
:- pred may_provide_guidance_and_advice/1, gloss('National competent authority permission to provide guidance on implementation'), source('celex:32024R1689/oj#art_70').
:- pred must_consult_other_authorities_for_guidance/2, gloss('Obligation to consult other Union law authorities when providing guidance in their areas'), source('celex:32024R1689/oj#art_70').
:- pred edps_acts_as_competent_authority_for_union_bodies/1, gloss('EDPS acts as competent authority for supervision of Union institutions and bodies'), source('celex:32024R1689/oj#art_70').

must_designate_national_competent_authorities(MS) :-
    member_state(MS).

must_exercise_powers_independently_and_impartially(A) :-
    national_competent_authority(A).

must_communicate_authority_identity_to_commission(MS) :-
    member_state(MS).

must_make_contact_information_publicly_available(MS) :-
    member_state(MS).

must_designate_single_point_of_contact(MS) :-
    member_state(MS).

must_notify_single_point_of_contact_to_commission(MS) :-
    member_state(MS).

must_publish_list_of_single_points_of_contact(commission).

must_provide_adequate_resources_to_authorities(MS) :-
    member_state(MS).

must_assess_competence_and_resource_requirements_annually(MS) :-
    member_state(MS).

must_ensure_cybersecurity_level(A) :-
    national_competent_authority(A).

must_act_in_accordance_with_confidentiality_obligations(A) :-
    national_competent_authority(A).

must_report_on_resources_to_commission(MS) :-
    member_state(MS).

must_transmit_resource_report_to_board(commission).

must_facilitate_exchange_of_experience(commission).

may_provide_guidance_and_advice(A) :-
    national_competent_authority(A).

must_consult_other_authorities_for_guidance(A, Area) :-
    national_competent_authority(A),
    area_covered_by_other_union_law(Area).

edps_acts_as_competent_authority_for_union_bodies(edps).

provenance(must_designate_national_competent_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_exercise_powers_independently_and_impartially/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_authority_identity_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_information_publicly_available/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_notify_single_point_of_contact_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_publish_list_of_single_points_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_provide_adequate_resources_to_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_assess_competence_and_resource_requirements_annually/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_cybersecurity_level/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_in_accordance_with_confidentiality_obligations/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_on_resources_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_transmit_resource_report_to_board/1, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange_of_experience/1, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance_and_advice/1, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities_for_guidance/2, 'celex:32024R1689/oj#art_70').
provenance(edps_acts_as_competent_authority_for_union_bodies/1, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
