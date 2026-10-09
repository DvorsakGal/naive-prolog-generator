% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c4169d700ba93c02c55808f5683d53d353b8f0ec823f18ae80469c502dca5fad
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred member_state_applies/1, gloss('Member State'), source('celex:32024R1689/oj#art_70').

:- pred must_establish_or_designate/2, gloss('establish or designate authority'), source('celex:32024R1689/oj#art_70').
:- pred must_exercise_powers/2, gloss('exercise powers with specified quality'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate_identity_and_tasks/2, gloss('communicate identity and tasks to the Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_make_publicly_available/2, gloss('make information publicly available'), source('celex:32024R1689/oj#art_70').
:- pred must_designate_single_point_of_contact/2, gloss('designate a market surveillance authority as single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred must_notify/2, gloss('notify the Commission of the single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_resources/2, gloss('ensure adequate resources for national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred must_assess_and_update_competence/2, gloss('assess and update competence and resource requirements annually'), source('celex:32024R1689/oj#art_70').
:- pred must_take_appropriate_measures/2, gloss('take appropriate measures for cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred must_act/2, gloss('act in accordance with confidentiality obligations or as competent authority'), source('celex:32024R1689/oj#art_70').
:- pred must_report/2, gloss('report resources status to the Commission periodically'), source('celex:32024R1689/oj#art_70').
:- pred must_transmit/2, gloss('transmit information to the Board'), source('celex:32024R1689/oj#art_70').
:- pred must_facilitate/2, gloss('facilitate exchange of experience'), source('celex:32024R1689/oj#art_70').
:- pred permitted_provide_guidance_and_advice/1, gloss('provide guidance and advice'), source('celex:32024R1689/oj#art_70').

must_establish_or_designate(MS, notifying_authority) :-
    member_state_applies(MS).

must_establish_or_designate(MS, market_surveillance_authority) :-
    member_state_applies(MS).

must_exercise_powers(Authority, independently) :-
    national_competent_authority(Authority).

must_exercise_powers(Authority, impartially) :-
    national_competent_authority(Authority).

must_exercise_powers(Authority, without_bias) :-
    national_competent_authority(Authority).

must_communicate_identity_and_tasks(MS, commission) :-
    member_state_applies(MS).

must_make_publicly_available(MS, public_information(contact_information, by(date(2025,8,2)))) :-
    member_state_applies(MS).

must_designate_single_point_of_contact(MS, market_surveillance_authority) :-
    member_state_applies(MS).

must_notify(MS, notification(single_point_of_contact_identity)) :-
    member_state_applies(MS).

must_ensure_resources(MS, resources(national_competent_authority)) :-
    member_state_applies(MS).

must_assess_and_update_competence(MS, annual) :-
    member_state_applies(MS).

must_take_appropriate_measures(Authority, cybersecurity) :-
    national_competent_authority(Authority).

must_act(Authority, confidentiality_obligations) :-
    national_competent_authority(Authority).

must_report(MS, report(resources_status, by(date(2025,8,2)), periodic(years(2)))) :-
    member_state_applies(MS).

must_transmit(commission, information(board, resources_status)).

must_facilitate(commission, exchange_of_experience(national_competent_authorities)).

permitted_provide_guidance_and_advice(Authority) :-
    national_competent_authority(Authority).

must_act(european_data_protection_supervisor, competent_authority(supervision)).

provenance(member_state_applies/1, 'celex:32024R1689/oj#art_70').
provenance(must_establish_or_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_exercise_powers/2, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_identity_and_tasks/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_notify/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_assess_and_update_competence/2, 'celex:32024R1689/oj#art_70').
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_70').
provenance(must_act/2, 'celex:32024R1689/oj#art_70').
provenance(must_report/2, 'celex:32024R1689/oj#art_70').
provenance(must_transmit/2, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_70').
provenance(permitted_provide_guidance_and_advice/1, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
