% unit       : celex:32024R1689/oj#art_22
% title      : Authorised representatives of providers of high-risk AI systems
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : gpt-oss:120b-cloud
% prompt sha : 2b61dac3d45dfe1da2a351886310292a5be74fb284261a3f654bcf937d552bd1
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred third_country_established/1, gloss('provider established in a third country'), source('celex:32024R1689/oj#art_22').
:- pred established_in_union/1, gloss('authorised representative established in the Union'), source('celex:32024R1689/oj#art_22').
:- pred high_risk_ai_system_provider/1, gloss('provider of a high‑risk AI system'), source('celex:32024R1689/oj#art_22').
:- pred mandate_received/2, gloss('mandate received by the authorised representative from the provider'), source('celex:32024R1689/oj#art_22').
:- pred acts_contrary/1, gloss('provider acting contrary to its obligations'), source('celex:32024R1689/oj#art_22').

required_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    third_country_established(Provider),
    high_risk_ai_system_provider(Provider),
    authorised_representative(Representative),
    established_in_union(Representative).

required_enable_authorised_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    mandate_received(Provider, Representative).

required_perform_mandated_tasks(Representative) :-
    authorised_representative(Representative),
    mandate_received(_, Representative).

required_provide_copy_of_mandate(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).

required_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    acts_contrary(Provider).

required_inform_authority(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).

provenance(required_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(required_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(required_perform_mandated_tasks/1, 'celex:32024R1689/oj#art_22').
provenance(required_provide_copy_of_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(required_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(required_inform_authority/2, 'celex:32024R1689/oj#art_22').

references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
