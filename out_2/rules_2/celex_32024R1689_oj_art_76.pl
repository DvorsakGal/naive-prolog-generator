% unit       : celex:32024R1689/oj#art_76
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : a4cf5524f509912fc3eadca711c23ed5f290fd1384db8185f67135e0a0b086aa
% cached     : False
% title      : Supervision of testing in real world conditions by market surveillance authorities
:- pred must_ensure/2, gloss('market surveillance authority must ensure testing in real world conditions is compliant'), source('celex:32024R1689/oj#art_76').
:- pred must_verify_compliance/2, gloss('market surveillance authority must verify compliance with article 60 for sandbox‑supervised testing'), source('celex:32024R1689/oj#art_76').
:- pred allow_testing_by/2, gloss('market surveillance authority may allow testing by provider or prospective provider'), source('celex:32024R1689/oj#art_76').
:- pred prospective_provider/1, gloss('entity that may become a provider'), source('celex:32024R1689/oj#art_76').
:- pred supervised_in_sandbox/1, gloss('testing is supervised within an AI regulatory sandbox'), source('celex:32024R1689/oj#art_76').
:- pred informed_by/2, gloss('authority has been informed by an entity'), source('celex:32024R1689/oj#art_76').
:- pred third_party/1, gloss('any third party'), source('celex:32024R1689/oj#art_76').
:- pred authority_may_decide/1, gloss('market surveillance authority may take decisions on testing'), source('celex:32024R1689/oj#art_76').
:- pred permit_suspend_testing/2, gloss('authority may suspend or terminate testing in real world conditions'), source('celex:32024R1689/oj#art_76').
:- pred permit_require_modification/3, gloss('authority may require provider and deployer to modify testing'), source('celex:32024R1689/oj#art_76').
:- pred provider_or_prospective/1, gloss('provider or prospective provider'), source('celex:32024R1689/oj#art_76').
:- pred deployer_or_prospective/1, gloss('deployer or prospective deployer'), source('celex:32024R1689/oj#art_76').
:- pred prospective_deployer/1, gloss('entity that may become a deployer'), source('celex:32024R1689/oj#art_76').
:- pred decision_referred/1, gloss('decision referred to in paragraph 3'), source('celex:32024R1689/oj#art_76').
:- pred objection_issued/1, gloss('objection issued by market surveillance authority'), source('celex:32024R1689/oj#art_76').
:- pred must_indicate/2, gloss('authority must indicate grounds and how provider can challenge'), source('celex:32024R1689/oj#art_76').
:- pred must_communicate/2, gloss('authority must communicate grounds to other Member State authorities'), source('celex:32024R1689/oj#art_76').

must_ensure(Authority, testing_in_real_world_conditions_compliant) :-
    market_surveillance_authority(Authority).

must_verify_compliance(Authority, art_60) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(_S),
    supervised_in_sandbox(_S).

allow_testing_by(Authority, Provider) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    testing_in_real_world_conditions(_S),
    supervised_in_sandbox(_S).

allow_testing_by(Authority, ProsProv) :-
    market_surveillance_authority(Authority),
    prospective_provider(ProsProv),
    testing_in_real_world_conditions(_S),
    supervised_in_sandbox(_S).

authority_may_decide(Authority) :-
    market_surveillance_authority(Authority),
    informed_by(Authority, _),
    serious_incident(_).

permit_suspend_testing(Authority, S) :-
    authority_may_decide(Authority),
    testing_in_real_world_conditions(S).

permit_require_modification(Authority, Provider, Deployer) :-
    authority_may_decide(Authority),
    provider_or_prospective(Provider),
    deployer_or_prospective(Deployer),
    testing_in_real_world_conditions(_S).

provider_or_prospective(P) :- provider(P).
provider_or_prospective(P) :- prospective_provider(P).

deployer_or_prospective(D) :- deployer(D).
deployer_or_prospective(D) :- prospective_deployer(D).

decision_referred(Authority) :-
    permit_suspend_testing(Authority, _).

decision_referred(Authority) :-
    permit_require_modification(Authority, _, _).

must_indicate(Authority, decision_or_objection(grounds_and_challenge)) :-
    market_surveillance_authority(Authority),
    (   decision_referred(Authority)
    ;   objection_issued(Authority)
    ).

must_communicate(Authority, grounds_to_other_member_states) :-
    market_surveillance_authority(Authority),
    decision_referred(Authority).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_76').
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(allow_testing_by/2, 'celex:32024R1689/oj#art_76').
provenance(authority_may_decide/1, 'celex:32024R1689/oj#art_76').
provenance(permit_suspend_testing/2, 'celex:32024R1689/oj#art_76').
provenance(permit_require_modification/3, 'celex:32024R1689/oj#art_76').
provenance(provider_or_prospective/1, 'celex:32024R1689/oj#art_76').
provenance(deployer_or_prospective/1, 'celex:32024R1689/oj#art_76').
provenance(decision_referred/1, 'celex:32024R1689/oj#art_76').
provenance(must_indicate/2, 'celex:32024R1689/oj#art_76').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_76').

references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').
