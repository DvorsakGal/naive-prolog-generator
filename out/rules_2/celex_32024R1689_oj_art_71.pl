% unit       : celex:32024R1689/oj#art_71
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : gpt-oss:120b-cloud
% prompt sha : 1482975483b8f322fc7ab9d4aa30765b7898dd64b3c83a34c3021dc5b37909d5
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred eu_database/1, gloss('EU database for high‑risk AI systems'), source('celex:32024R1689/oj#art_71').
:- pred info_registered_under/2, gloss('information registered under a given article'), source('celex:32024R1689/oj#art_71').
:- pred data_section/1, gloss('section of annex containing data to be entered'), source('celex:32024R1689/oj#art_71').
:- pred exception_info/1, gloss('information exempt from public accessibility'), source('celex:32024R1689/oj#art_71').
:- pred consent_given/1, gloss('provider consent to make information publicly accessible'), source('celex:32024R1689/oj#art_71').
:- pred public_authority/1, gloss('public authority, agency or body'), source('celex:32024R1689/oj#art_71').
:- pred prospective_provider/1, gloss('entity that may become a provider'), source('celex:32024R1689/oj#art_71').

must_set_up(commission, DB) :-
    eu_database(DB).

must_maintain(commission, DB) :-
    eu_database(DB).

must_consult(commission, experts) :-
    eu_database(DB),
    setting_functional_specifications(DB).

must_consult(commission, board) :-
    eu_database(DB),
    updating_functional_specifications(DB).

setting_functional_specifications(DB) :-
    eu_database(DB).

updating_functional_specifications(DB) :-
    eu_database(DB).

must_enter_data(Actor, DB, Section) :-
    eu_database(DB),
    data_section(Section),
    (provider(Actor) ; authorised_representative(Actor)).

must_enter_data(Actor, DB, Section) :-
    eu_database(DB),
    data_section(Section),
    deployer(Actor),
    public_authority(Actor).

data_section('anx_8_sec_1').
data_section('anx_8_sec_2').
data_section('anx_8_sec_3').

publicly_accessible_info(Info) :-
    info_registered_under(Info, art_49),
    \+ exception_info(Info).

exception_info('art_49_par_4_section').
exception_info('art_60_par_4_unp_1_pnt_c').

accessible_to_market_surveillance(Info) :-
    info_registered_under(Info, art_60).

publicly_accessible_info(Info) :-
    info_registered_under(Info, art_60),
    consent_given(Info).

must_be_controller(commission, DB) :-
    eu_database(DB).

must_provide_support(commission, Actor) :-
    eu_database(DB),
    (provider(Actor) ; prospective_provider(Actor) ; deployer(Actor)).

provenance(must_set_up/2, 'celex:32024R1689/oj#art_71').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(setting_functional_specifications/1, 'celex:32024R1689/oj#art_71').
provenance(updating_functional_specifications/1, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/3, 'celex:32024R1689/oj#art_71').
provenance(data_section/1, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible_info/1, 'celex:32024R1689/oj#art_71').
provenance(exception_info/1, 'celex:32024R1689/oj#art_71').
provenance(accessible_to_market_surveillance/1, 'celex:32024R1689/oj#art_71').
provenance(consent_given/1, 'celex:32024R1689/oj#art_71').
provenance(must_be_controller/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').

references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_71/par_2').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_71/par_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_6/par_4').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_8/sec_1').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_8/sec_2').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_8/sec_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49/par_4').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj').
