% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 3c9dcd67ac849a7d99e5dcdfc40caca7cdbfa6126d3363c7cc328e42b418448e
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred eu_database/1, gloss('EU database for high-risk AI systems listed in Annex III'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_contains/2, gloss('EU database contains information about system'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_set_up_and_maintained_by_commission/0, gloss('Commission sets up and maintains EU database in collaboration with Member States'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_data_entered_by/2, gloss('data entered into EU database by actor'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_information_publicly_accessible/1, gloss('information in EU database is publicly accessible'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_information_accessible_only_to/2, gloss('information in EU database accessible only to specified parties'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_contains_personal_data_only_as_necessary/1, gloss('EU database contains personal data only insofar as necessary'), source('celex:32024R1689/oj#art_71').
:- pred commission_is_controller_of_eu_database/0, gloss('Commission is the controller of the EU database'), source('celex:32024R1689/oj#art_71').
:- pred commission_provides_support_for_eu_database/0, gloss('Commission makes available adequate technical and administrative support for EU database'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_complies_with_accessibility_requirements/0, gloss('EU database complies with applicable accessibility requirements'), source('celex:32024R1689/oj#art_71').
:- pred must_set_up_and_maintain_eu_database/1, gloss('actor must set up and maintain EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_enter_data_into_eu_database/2, gloss('actor must enter data into EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_consult_relevant_experts/1, gloss('actor must consult relevant experts when setting functional specifications'), source('celex:32024R1689/oj#art_71').
:- pred must_consult_board/1, gloss('actor must consult the Board when updating functional specifications'), source('celex:32024R1689/oj#art_71').
:- pred data_listed_in_annex_8_section/2, gloss('data listed in specified Annex VIII section'), source('celex:32024R1689/oj#art_71').

eu_database_set_up_and_maintained_by_commission.

must_set_up_and_maintain_eu_database(commission).

must_set_up_and_maintain_eu_database(commission) :-
    eu_database_set_up_and_maintained_by_commission.

must_consult_relevant_experts(commission).

must_consult_board(commission).

eu_database(E) :-
    eu_database_set_up_and_maintained_by_commission,
    E = eu_database.

eu_database_contains(eu_database, S) :-
    high_risk_ai_system(S),
    registered_in_eu_database(S).

eu_database_contains(eu_database, S) :-
    concluded_not_high_risk(S),
    registered_in_eu_database(S).

must_enter_data_into_eu_database(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    data_listed_in_annex_8_section(sec_1, D),
    data_listed_in_annex_8_section(sec_2, D).

must_enter_data_into_eu_database(AR, S) :-
    authorised_representative(AR),
    high_risk_ai_system(S),
    data_listed_in_annex_8_section(sec_1, D),
    data_listed_in_annex_8_section(sec_2, D).

must_enter_data_into_eu_database(D, S) :-
    deployer(D),
    used_by_public_authority_or_on_behalf(S),
    data_listed_in_annex_8_section(sec_3, _).

eu_database_information_publicly_accessible(I) :-
    registered_in_eu_database(S),
    I = information(S),
    \+ eu_database_information_accessible_only_to(I, _).

eu_database_information_accessible_only_to(I, market_surveillance_authority) :-
    I = information(S),
    registered_in_eu_database(S),
    \+ consent_given_for_public_access(S).

eu_database_information_accessible_only_to(I, commission) :-
    I = information(S),
    registered_in_eu_database(S),
    \+ consent_given_for_public_access(S).

eu_database_contains_personal_data_only_as_necessary(eu_database).

commission_is_controller_of_eu_database.

commission_provides_support_for_eu_database.

eu_database_complies_with_accessibility_requirements.

provenance(eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_set_up_and_maintained_by_commission/0, 'celex:32024R1689/oj#art_71').
provenance(eu_database_data_entered_by/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_information_publicly_accessible/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_information_accessible_only_to/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains_personal_data_only_as_necessary/1, 'celex:32024R1689/oj#art_71').
provenance(commission_is_controller_of_eu_database/0, 'celex:32024R1689/oj#art_71').
provenance(commission_provides_support_for_eu_database/0, 'celex:32024R1689/oj#art_71').
provenance(eu_database_complies_with_accessibility_requirements/0, 'celex:32024R1689/oj#art_71').
provenance(must_set_up_and_maintain_eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_into_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult_relevant_experts/1, 'celex:32024R1689/oj#art_71').
provenance(must_consult_board/1, 'celex:32024R1689/oj#art_71').
provenance(data_listed_in_annex_8_section/2, 'celex:32024R1689/oj#art_71').

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
