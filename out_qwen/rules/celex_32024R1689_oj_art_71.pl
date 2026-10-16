% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0b671752eb9da18704d837ab288a1d709c0e87ff50f4da6397acafac814c966c
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_set_up_and_maintain_eu_database/2, gloss('obligation to establish and maintain the EU database for high-risk AI systems'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_contains_info_on_registered_high_risk_system/1, gloss('EU database includes information on high-risk AI systems registered under Article 49 or 60'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_contains_info_on_non_high_risk_system/1, gloss('EU database includes information on AI systems not considered high-risk but registered under Article 6(4) and 49'), source('celex:32024R1689/oj#art_71').
:- pred must_enter_data_into_eu_database/2, gloss('obligation to enter specified data into the EU database'), source('celex:32024R1689/oj#art_71').
:- pred public_authority_deployer/1, gloss('deployer that is or acts on behalf of a public authority, agency or body'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_info_publicly_accessible/1, gloss('information in the EU database registered under Article 49 is publicly accessible'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_info_restricted_access/1, gloss('information in the EU database registered under Article 60 is restricted to authorities unless consent given'), source('celex:32024R1689/oj#art_71').
:- pred controller_of_eu_database/1, gloss('entity designated as controller of the EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_provide_technical_and_administrative_support/2, gloss('obligation to provide technical and administrative support for the EU database'), source('celex:32024R1689/oj#art_71').

must_set_up_and_maintain_eu_database(commission, member_states).

eu_database_contains_info_on_registered_high_risk_system(S) :-
    high_risk_ai_system(S),
    registered_in_accordance_with_art_49_or_60(S).

eu_database_contains_info_on_non_high_risk_system(S) :-
    ai_system(S),
    \+ high_risk_ai_system(S),
    registered_in_accordance_with_art_6_par_4_and_art_49(S).

must_enter_data_into_eu_database(provider, data_listed_in_annex_viii_sec_1_and_2).
must_enter_data_into_eu_database(authorised_representative, data_listed_in_annex_viii_sec_1_and_2).

must_enter_data_into_eu_database(D, data_listed_in_annex_viii_sec_3) :-
    deployer(D),
    public_authority_deployer(D).

public_authority_deployer(D) :-
    deployer(D),
    acts_on_behalf_of_public_authority(D).

eu_database_info_publicly_accessible(info_registered_under_art_49).

eu_database_info_restricted_access(info_registered_under_art_60).

controller_of_eu_database(commission).

must_provide_technical_and_administrative_support(commission, providers).
must_provide_technical_and_administrative_support(commission, prospective_providers).
must_provide_technical_and_administrative_support(commission, deployers).

provenance(must_set_up_and_maintain_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains_info_on_registered_high_risk_system/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains_info_on_non_high_risk_system/1, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_into_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_info_publicly_accessible/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_info_restricted_access/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of_eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(must_provide_technical_and_administrative_support/2, 'celex:32024R1689/oj#art_71').

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
