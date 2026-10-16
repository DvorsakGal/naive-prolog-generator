% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 79ebe90200fd0cf73052b36f8c47ed56b49ab54926366ea2e0fc0a1d93c1b52e
% cached     : False
% title      : Operational obligations of notified bodies
:- pred must_verify_conformity/2, gloss('notified body shall verify conformity of high-risk AI system'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid_unnecessary_burdens/2, gloss('notified body shall avoid unnecessary burdens for provider'), source('celex:32024R1689/oj#art_34').
:- pred must_take_account_of_provider_characteristics/2, gloss('notified body shall take account of provider size, sector, structure, system complexity'), source('celex:32024R1689/oj#art_34').
:- pred must_respect_required_rigour_and_protection/2, gloss('notified body shall respect degree of rigour and level of protection required'), source('celex:32024R1689/oj#art_34').
:- pred must_make_available_documentation/2, gloss('notified body shall make available and submit documentation upon request'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    conformity_assessment_procedure_for(System, Procedure),
    set_out_in(Procedure, 'celex:32024R1689/oj#art_43').

must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    performing_activities(Body, _System).

must_take_account_of_provider_characteristics(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    performing_activities(Body, System),
    high_risk_ai_system(System),
    size_of_provider(Provider, _Size),
    sector_of_provider(Provider, _Sector),
    structure_of_provider(Provider, _Structure),
    degree_of_complexity(System, _Complexity).

must_respect_required_rigour_and_protection(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    degree_of_rigour_required(System, _Rigour),
    level_of_protection_required(System, _Protection),
    compliance_with_requirements(System, 'celex:32024R1689/oj').

must_make_available_documentation(Body, documentation(ProviderDocs, NotifyingAuthority)) :-
    notified_body(Body),
    providers_documentation(ProviderDocs),
    notifying_authority(NotifyingAuthority),
    referred_to_in(NotifyingAuthority, 'celex:32024R1689/oj#art_28'),
    assessment_designation_notification_monitoring_activities(NotifyingAuthority),
    assessment_outlined_in('celex:32024R1689/oj#chp_3/sec_4').

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_take_account_of_provider_characteristics/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_required_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_documentation/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
