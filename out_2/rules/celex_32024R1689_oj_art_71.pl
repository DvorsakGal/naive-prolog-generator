% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 819e352cf06362568369a402b4d0137c9b61f702e603e9300b73d75a510c32bd
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred public_authority/1, gloss('public authority, agency or body'), source('art_71').
:- pred acts_on_behalf_of/2, gloss('acts on behalf of'), source('art_71').
:- pred provider_consent_public/1, gloss('provider has given consent for public access'), source('art_71').

must_set_up_and_maintain(commission, eu_database).

must_consult(commission, relevant_experts).
must_consult(commission, board).

must_enter_data(Actor, eu_database) :-
    provider(Actor).

must_enter_data(Actor, eu_database) :-
    authorised_representative(Actor).

must_enter_data(Actor, eu_database) :-
    deployer(Actor),
    (   public_authority(Actor)
    ;   acts_on_behalf_of(Actor, Authority),
        public_authority(Authority)
    ).

must_make_accessible_publicly(eu_database_info_art_49) :-
    \+ exception_section(eu_database_info_art_49).

must_make_accessible_only_to(eu_database_info_art_60, market_surveillance_authority).
must_make_accessible_only_to(eu_database_info_art_60, commission) :-
    \+ provider_consent_public(_).

required_personal_data(eu_database).

required_responsible_contact_details(eu_database).

must_be_controller(commission, eu_database).

must_provide_support(commission, provider).
must_provide_support(commission, prospective_provider).
must_provide_support(commission, deployer).

must_comply(eu_database, accessibility_requirements).

% provenance
provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(must_make_accessible_publicly/1, 'celex:32024R1689/oj#art_71').
provenance(must_make_accessible_only_to/2, 'celex:32024R1689/oj#art_71').
provenance(required_personal_data/1, 'celex:32024R1689/oj#art_71').
provenance(required_responsible_contact_details/1, 'celex:32024R1689/oj#art_71').
provenance(must_be_controller/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').
provenance(must_comply/2, 'celex:32024R1689/oj#art_71').

% references
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
