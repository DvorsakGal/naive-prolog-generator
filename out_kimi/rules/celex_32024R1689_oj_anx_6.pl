% unit       : celex:32024R1689/oj#anx_6
% context    : ANNEXES
% slice sha  : e8c27fb7b995b2646e89813a0a366177fa01eed999f9cf6afcdabf9e6227d6ab
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 93b1d53f1c72e94dccfee26fd5531b93d9635bf5579da89d254bec401ff924cb
% cached     : False
% title      : Conformity assessment procedure based on internal control
:- pred internal_control_conformity_assessment/1, gloss('conformity assessment procedure based on internal control'), source('celex:32024R1689/oj#anx_6').
:- pred must_verify_quality_management_system_compliance/2, gloss('provider must verify quality management system compliance with Article 17'), source('celex:32024R1689/oj#anx_6').
:- pred must_examine_technical_documentation/2, gloss('provider must examine technical documentation to assess compliance with essential requirements'), source('celex:32024R1689/oj#anx_6').
:- pred must_verify_design_development_consistency/2, gloss('provider must verify design and development process and post-market monitoring are consistent with technical documentation'), source('celex:32024R1689/oj#anx_6').

internal_control_conformity_assessment(CA) :-
    conformity_assessment(CA),
    based_on_internal_control(CA).

based_on_internal_control(_CA).

must_verify_quality_management_system_compliance(Provider, CA) :-
    provider(Provider),
    internal_control_conformity_assessment(CA),
    quality_management_system(QMS),
    established_by(Provider, QMS),
    compliant_with(QMS, requirements_of('celex:32024R1689/oj#art_17')).

must_examine_technical_documentation(Provider, CA) :-
    provider(Provider),
    internal_control_conformity_assessment(CA),
    technical_documentation(TD),
    contains_information(TD, AI_system),
    assesses_compliance(AI_system, essential_requirements_of('celex:32024R1689/oj#chp_3/sec_2')).

must_verify_design_development_consistency(Provider, CA) :-
    provider(Provider),
    internal_control_conformity_assessment(CA),
    ai_system(S),
    design_and_development_process(S, Process),
    post_market_monitoring(S, Monitoring),
    referred_to_in(Monitoring, 'celex:32024R1689/oj#art_72'),
    technical_documentation(TD),
    consistent_with(Process, TD),
    consistent_with(Monitoring, TD).

established_by(_Provider, _QMS).
compliant_with(_QMS, _Requirements).
contains_information(_TD, _AI_system).
assesses_compliance(_AI_system, _Essential_requirements).
design_and_development_process(_S, _Process).
post_market_monitoring(_S, _Monitoring).
referred_to_in(_Monitoring, _Article).
consistent_with(_X, _TD).
technical_documentation(_TD).

provenance(internal_control_conformity_assessment/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_development_consistency/2, 'celex:32024R1689/oj#anx_6').

references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').
