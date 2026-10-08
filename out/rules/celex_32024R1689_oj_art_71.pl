% unit       : celex:32024R1689/oj#art_71
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : gpt-oss:120b-cloud
% prompt sha : 25151c1c73207c710362c7fe9f8b9d5d9999dc4de90461e3bfd06262e815b64a
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_71').
:- pred eu_database/1, gloss('EU database for high‑risk AI systems'), source('celex:32024R1689/oj#art_71').
:- pred setting_functional_specifications/1, gloss('process of setting functional specifications of the EU database'), source('celex:32024R1689/oj#art_71').
:- pred updating_functional_specifications/1, gloss('process of updating functional specifications of the EU database'), source('celex:32024R1689/oj#art_71').
:- pred relevant_experts/1, gloss('relevant experts consulted by the Commission'), source('celex:32024R1689/oj#art_71').
:- pred board/1, gloss('Board consulted by the Commission'), source('celex:32024R1689/oj#art_71').
:- pred data_listed_in_annex8_sec1_2/1, gloss('data listed in annex VIII sec 1‑2'), source('celex:32024R1689/oj#art_71').
:- pred data_listed_in_annex8_sec3/1, gloss('data listed in annex VIII sec 3'), source('celex:32024R1689/oj#art_71').
:- pred public_authority_actor/1, gloss('deployer who is or acts on behalf of a public authority, agency or body'), source('celex:32024R1689/oj#art_71').
:- pred information_registered_in/2, gloss('information registered in the EU database under a given article'), source('celex:32024R1689/oj#art_71').
:- pred exception_section/1, gloss('section excluded from public accessibility'), source('celex:32024R1689/oj#art_71').
:- pred consent_given/2, gloss('provider or prospective provider has given consent for public accessibility'), source('celex:32024R1689/oj#art_71').
:- pred provider_consents_public/1, gloss('provider has consented to public accessibility of its information'), source('celex:32024R1689/oj#art_71').

must_set_up(Commission, eu_database) :-
    commission(Commission).

must_maintain(Commission, eu_database) :-
    commission(Commission).

must_consult(Commission, relevant_experts) :-
    commission(Commission),
    setting_functional_specifications(eu_database).

must_consult(Commission, board) :-
    commission(Commission),
    updating_functional_specifications(eu_database).

must_enter_data(Actor, Data) :-
    provider(Actor),
    data_listed_in_annex8_sec1_2(Data).

must_enter_data(Actor, Data) :-
    authorised_representative(Actor),
    data_listed_in_annex8_sec1_2(Data).

must_enter_data(Deployer, Data) :-
    deployer(Deployer),
    public_authority_actor(Deployer),
    data_listed_in_annex8_sec3(Data).

permitted_access(public, Information) :-
    information_registered_in(Information, art_49),
    \+ exception_section(Information).

permitted_access(market_surveillance_authority, Information) :-
    information_registered_in(Information, art_60).

permitted_access(commission, Information) :-
    information_registered_in(Information, art_60).

permitted_access(public, Information) :-
    information_registered_in(Information, art_60),
    consent_given(_Provider, public).

prohibited_excess_personal_data(EU_Database) :-
    eu_database(EU_Database).

must_be_controller(Commission, eu_database) :-
    commission(Commission).

must_make_available_support(Commission, Provider) :-
    commission(Commission),
    provider(Provider).

% Provenance
provenance(must_set_up/2, 'celex:32024R1689/oj#art_71').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(permitted_access/2, 'celex:32024R1689/oj#art_71').
provenance(prohibited_excess_personal_data/1, 'celex:32024R1689/oj#art_71').
provenance(must_be_controller/2, 'celex:32024R1689/oj#art_71').
provenance(must_make_available_support/2, 'celex:32024R1689/oj#art_71').

% References
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
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49/par_4').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj').
