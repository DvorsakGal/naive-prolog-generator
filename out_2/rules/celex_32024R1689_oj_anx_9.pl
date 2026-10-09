% unit       : celex:32024R1689/oj#anx_9
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 181a5824ef507b7d130fe50b9164c71157c6e3592116bbc215245bae8cfa3b3e
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
:- pred must_provide/2, gloss('obligation to provide required information'), source('celex:32024R1689/oj#anx_9').
:- pred must_maintain/2, gloss('obligation to keep required information up to date'), source('celex:32024R1689/oj#anx_9').

must_provide(Provider, unique_testing_id) :-
    provider(Provider).

must_maintain(Provider, unique_testing_id) :-
    provider(Provider).

must_provide(Provider, provider_contact_details) :-
    provider(Provider).

must_maintain(Provider, provider_contact_details) :-
    provider(Provider).

must_provide(Deployer, deployer_contact_details) :-
    deployer(Deployer).

must_maintain(Deployer, deployer_contact_details) :-
    deployer(Deployer).

must_provide(Provider, system_description) :-
    provider(Provider).

must_maintain(Provider, system_description) :-
    provider(Provider).

must_provide(Provider, plan_summary) :-
    provider(Provider).

must_maintain(Provider, plan_summary) :-
    provider(Provider).

must_provide(Provider, suspension_information) :-
    provider(Provider).

must_maintain(Provider, suspension_information) :-
    provider(Provider).

provenance(must_provide/2, 'celex:32024R1689/oj#anx_9').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_9').

references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').
