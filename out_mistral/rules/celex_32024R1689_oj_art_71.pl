% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9eedd7ab28c94f132e7fbcc66f69f89607141a33baa38b09274bc618c0862ccf
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred eu_database/1, gloss('EU database for high-risk AI systems'), source('celex:32024R1689/oj#art_71').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_6/par_2').
:- pred registered_in_accordance_with/2, gloss('system registered under specified article'), source('celex:32024R1689/oj#art_71').
:- pred not_high_risk_pursuant_to/1, gloss('AI system not considered high-risk under specified provision'), source('celex:32024R1689/oj#art_71').
:- pred data_listed_in/1, gloss('data category listed in specified annex section'), source('celex:32024R1689/oj#art_71').
:- pred entered_into_eu_database_by/2, gloss('data entered by specified actor'), source('celex:32024R1689/oj#art_71').
:- pred publicly_accessible_information/1, gloss('information accessible and publicly available'), source('celex:32024R1689/oj#art_71').
:- pred restricted_access_information/1, gloss('information accessible only to specified authorities'), source('celex:32024R1689/oj#art_71').
:- pred controller_of_eu_database/1, gloss('entity acting as controller of EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_set_up_and_maintain/2, gloss('obligation to set up and maintain'), source('celex:32024R1689/oj#art_71').
:- pred must_enter_data/2, gloss('obligation to enter data into EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_consult/2, gloss('obligation to consult specified party'), source('celex:32024R1689/oj#art_71').
:- pred must_make_available/2, gloss('obligation to make available support'), source('celex:32024R1689/oj#art_71').
:- pred deployer_public_authority/1, gloss('deployer who is or acts on behalf of public authority, agency or body'), source('celex:32024R1689/oj#art_71').
:- pred prospective_provider/1, gloss('prospective provider of AI system'), source('celex:32024R1689/oj#art_71').
:- pred consent_given_for_public_access/2, gloss('consent given by provider for public access to information'), source('celex:32024R1689/oj#art_71').

must_set_up_and_maintain(commission, eu_database).

must_set_up_and_maintain(commission, eu_database) :-
    collaboration_with_member_states.

collaboration_with_member_states.

eu_database_contains_information(eu_database, Information) :-
    high_risk_ai_system(S),
    registered_in_accordance_with(S, art_49),
    information_concerning(S, Information).

eu_database_contains_information(eu_database, Information) :-
    high_risk_ai_system(S),
    registered_in_accordance_with(S, art_60),
    information_concerning(S, Information).

eu_database_contains_information(eu_database, Information) :-
    ai_system(S),
    not_high_risk_pursuant_to(S),
    registered_in_accordance_with(S, art_6_par_4),
    registered_in_accordance_with(S, art_49),
    information_concerning(S, Information).

must_consult(commission, relevant_experts) :-
    setting_functional_specifications(eu_database).

must_consult(commission, board) :-
    updating_functional_specifications(eu_database).

must_enter_data(Provider, Data) :-
    provider(Provider),
    data_listed_in(anx_8_sec_1, Data).

must_enter_data(Provider, Data) :-
    provider(Provider),
    data_listed_in(anx_8_sec_2, Data).

must_enter_data(Authorised_representative, Data) :-
    authorised_representative(Authorised_representative),
    applicable_authorised_representative(Authorised_representative),
    data_listed_in(anx_8_sec_1, Data).

must_enter_data(Authorised_representative, Data) :-
    authorised_representative(Authorised_representative),
    applicable_authorised_representative(Authorised_representative),
    data_listed_in(anx_8_sec_2, Data).

must_enter_data(Deployer, Data) :-
    deployer(Deployer),
    deployer_public_authority(Deployer),
    data_listed_in(anx_8_sec_3, Data),
    registered_in_accordance_with(art_49_par_3),
    registered_in_accordance_with(art_49_par_4).

publicly_accessible_information(Information) :-
    registered_in_accordance_with(art_49),
    \+ exception_section(art_49_par_4, Information),
    \+ exception_section(art_60_par_4_unp_1_pnt_c, Information),
    user_friendly_manner(Information),
    easily_navigable(Information),
    machine_readable(Information).

restricted_access_information(Information) :-
    registered_in_accordance_with(art_60),
    accessible_to(Information, market_surveillance_authorities),
    accessible_to(Information, commission).

restricted_access_information(Information) :-
    registered_in_accordance_with(art_60),
    consent_given_for_public_access(Provider, Information),
    publicly_accessible_information(Information).

eu_database_contains_personal_data_only_as_necessary(eu_database).

eu_database_personal_data_includes(Names_and_contact_details) :-
    natural_persons_responsible_for_registering(Names_and_contact_details),
    legal_authority_to_represent_provider_or_deployer(Names_and_contact_details).

controller_of_eu_database(commission).

must_make_available(commission, adequate_technical_and_administrative_support) :-
    recipient(providers),
    recipient(prospective_providers),
    recipient(deployers).

eu_database_complies_with_accessibility_requirements(eu_database).

provenance(eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_71').
provenance(registered_in_accordance_with/2, 'celex:32024R1689/oj#art_71').
provenance(not_high_risk_pursuant_to/1, 'celex:32024R1689/oj#art_71').
provenance(data_listed_in/2, 'celex:32024R1689/oj#art_71').
provenance(entered_into_eu_database_by/2, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible_information/1, 'celex:32024R1689/oj#art_71').
provenance(restricted_access_information/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of_eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(must_make_available/2, 'celex:32024R1689/oj#art_71').
provenance(deployer_public_authority/1, 'celex:32024R1689/oj#art_71').
provenance(prospective_provider/1, 'celex:32024R1689/oj#art_71').
provenance(consent_given_for_public_access/2, 'celex:32024R1689/oj#art_71').

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
