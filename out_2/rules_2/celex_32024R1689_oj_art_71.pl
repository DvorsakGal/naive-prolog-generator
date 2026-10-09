% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : f762b122307ba4113e2ca166b49b1d7765e65816e6ccdf3a123656b25f33cc86
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_set_up_and_maintain/2, gloss('Commission must set up and maintain the EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_consult_experts_when_setting_specs/2, gloss('Commission must consult relevant experts when setting functional specifications of the EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_consult_board_when_updating_specs/2, gloss('Commission must consult the Board when updating functional specifications of the EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_enter_data/2, gloss('Provider, authorised representative or deployer must enter specified data into the EU database'), source('celex:32024R1689/oj#art_71').
:- pred public_authority/1, gloss('Entity that is a public authority, agency or body'), source('celex:32024R1689/oj#art_71').
:- pred info_registered_under/2, gloss('Information is registered under a given article'), source('celex:32024R1689/oj#art_71').
:- pred permitted_public_access/1, gloss('Information is publicly accessible'), source('celex:32024R1689/oj#art_71').
:- pred permitted_access_to_market_surveillance/1, gloss('Information is accessible to market surveillance authorities and the Commission'), source('celex:32024R1689/oj#art_71').
:- pred provider_consents_public/1, gloss('Provider gives consent for public access to information'), source('celex:32024R1689/oj#art_71').
:- pred required_personal_data_limit/1, gloss('EU database shall contain personal data only as necessary'), source('celex:32024R1689/oj#art_71').
:- pred required_responsible_person_details/1, gloss('EU database shall include names and contact details of responsible natural persons'), source('celex:32024R1689/oj#art_71').
:- pred must_be_controller/2, gloss('Commission is the controller of the EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_provide_support/2, gloss('Commission shall provide technical and administrative support'), source('celex:32024R1689/oj#art_71').
:- pred required_compliance_accessibility_requirements/1, gloss('EU database shall comply with applicable accessibility requirements'), source('celex:32024R1689/oj#art_71').

must_set_up_and_maintain(commission, eu_database).
must_consult_experts_when_setting_specs(commission, eu_database).
must_consult_board_when_updating_specs(commission, eu_database).

must_enter_data(Actor, data_annex_8_sec_1_2) :-
    provider(Actor).
must_enter_data(Actor, data_annex_8_sec_1_2) :-
    authorised_representative(Actor).

must_enter_data(Deployer, data_annex_8_sec_3) :-
    deployer(Deployer),
    public_authority(Deployer).

permitted_public_access(Info) :-
    info_registered_under(Info, art_49).

permitted_access_to_market_surveillance(Info) :-
    info_registered_under(Info, art_60).

permitted_public_access(Info) :-
    info_registered_under(Info, art_60),
    provider_consents_public(_Provider).

required_personal_data_limit(eu_database).
required_responsible_person_details(eu_database).

must_be_controller(commission, eu_database).
must_provide_support(commission, technical_and_administrative_support).
required_compliance_accessibility_requirements(eu_database).

provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult_experts_when_setting_specs/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult_board_when_updating_specs/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(public_authority/1, 'celex:32024R1689/oj#art_71').
provenance(info_registered_under/2, 'celex:32024R1689/oj#art_71').
provenance(permitted_public_access/1, 'celex:32024R1689/oj#art_71').
provenance(permitted_access_to_market_surveillance/1, 'celex:32024R1689/oj#art_71').
provenance(provider_consents_public/1, 'celex:32024R1689/oj#art_71').
provenance(required_personal_data_limit/1, 'celex:32024R1689/oj#art_71').
provenance(required_responsible_person_details/1, 'celex:32024R1689/oj#art_71').
provenance(must_be_controller/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').
provenance(required_compliance_accessibility_requirements/1, 'celex:32024R1689/oj#art_71').

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
