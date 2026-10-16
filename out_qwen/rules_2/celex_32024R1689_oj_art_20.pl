% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : f1c53b5199f72dfb8447aaa8e73c2f0edaaa612decc869bfe4b26523e051addc
% cached     : False
% title      : Corrective actions and duty of information
:- pred considers_non_conformity/2, gloss('provider considers or has reason to consider that a high-risk AI system is not in conformity'), source('celex:32024R1689/oj#art_20').
:- pred must_take_corrective_action_for_non_conformity/2, gloss('provider must immediately take necessary corrective actions for non-conforming system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_distributor_of_non_conformity/2, gloss('provider must inform distributors of non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_deployer_of_non_conformity/2, gloss('provider must inform deployers of non-conforming high-risk AI system where applicable'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_authorised_representative_of_non_conformity/2, gloss('provider must inform authorised representative of non-conforming high-risk AI system where applicable'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_importer_of_non_conformity/2, gloss('provider must inform importers of non-conforming high-risk AI system where applicable'), source('celex:32024R1689/oj#art_20').
:- pred aware_of_risk/2, gloss('provider becomes aware that high-risk AI system presents a risk'), source('celex:32024R1689/oj#art_20').
:- pred must_investigate_causes_of_risk/2, gloss('provider must immediately investigate causes of risk presented by high-risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_collaborate_with_reporting_deployer/2, gloss('provider must collaborate with reporting deployer on investigation of risk where applicable'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_market_surveillance_authority_of_risk/2, gloss('provider must inform competent market surveillance authority of risk and corrective action'), source('celex:32024R1689/oj#art_20').
:- pred must_inform_notified_body_of_risk/2, gloss('provider must inform notified body that issued certificate of risk and corrective action where applicable'), source('celex:32024R1689/oj#art_20').

considers_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S).

considers_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S).

must_take_corrective_action_for_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S).

must_inform_distributor_of_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S),
    distributor(_D).

must_inform_deployer_of_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S),
    deployer(_Dep).

must_inform_authorised_representative_of_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S),
    authorised_representative(_AR).

must_inform_importer_of_non_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    considers_non_conformity(P, S),
    importer(_I).

aware_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S).

must_investigate_causes_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    aware_of_risk(P, S).

must_collaborate_with_reporting_deployer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    aware_of_risk(P, S),
    deployer(_Dep).

must_inform_market_surveillance_authority_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    aware_of_risk(P, S),
    relevant_market_surveillance_authority(_MSA).

must_inform_notified_body_of_risk(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    aware_of_risk(P, S),
    notified_body(_NB).

provenance(considers_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_action_for_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_distributor_of_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_deployer_of_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorised_representative_of_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_importer_of_non_conformity/2, 'celex:32024R1689/oj#art_20').
provenance(aware_of_risk/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes_of_risk/2, 'celex:32024R1689/oj#art_20').
provenance(must_collaborate_with_reporting_deployer/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authority_of_risk/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body_of_risk/2, 'celex:32024R1689/oj#art_20').

references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
