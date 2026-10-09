% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 4e679e6153c281d3d7c3e8f6df63a15c32077c768c609b76c81ab9c6a61f4757
% cached     : False
% title      : Obligations of distributors
:- pred must_verify/2, gloss('distributor must verify CE marking, declaration of conformity and instructions for use, and that provider and importer have complied'), source('celex:32024R1689/oj#art_24').
must_verify(Distributor, verification(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).

:- pred prohibited_making_available_on_market/1, gloss('distributor must not make available a high‑risk AI system that is not in conformity'), source('celex:32024R1689/oj#art_24').
prohibited_making_available_on_market(System) :-
    high_risk_ai_system(System),
    distributor(Distributor),
    considers_not_in_conformity(Distributor, System).

:- pred must_inform/2, gloss('distributor must inform provider or importer when a risk is present'), source('celex:32024R1689/oj#art_24').
must_inform(Distributor, risk_present(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    risk_present(System).

:- pred must_ensure/2, gloss('distributor must ensure storage or transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_24').
must_ensure(Distributor, storage_conditions_not_jeopardise(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).

:- pred must_take_corrective_action/2, gloss('distributor must take corrective actions to bring the system into conformity'), source('celex:32024R1689/oj#art_24').
must_take_corrective_action(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_not_in_conformity(Distributor, System).

:- pred must_inform/2, gloss('distributor must inform provider, importer and competent authorities of non‑compliance and corrective actions'), source('celex:32024R1689/oj#art_24').
must_inform(Distributor, non_compliance_details(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_not_in_conformity(Distributor, System),
    risk_present(System).

:- pred must_provide_information/2, gloss('distributor must provide all information and documentation to a competent authority upon request'), source('celex:32024R1689/oj#art_24').
must_provide_information(Distributor, info_request(Authority, System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    market_surveillance_authority(Authority).

:- pred must_cooperate/2, gloss('distributor must cooperate with competent authorities'), source('celex:32024R1689/oj#art_24').
must_cooperate(Distributor, Authority) :-
    distributor(Distributor),
    market_surveillance_authority(Authority).

% auxiliary predicates introduced for conditions
:- pred considers_not_in_conformity/2, gloss('distributor considers or has reason to consider the system not in conformity'), source('celex:32024R1689/oj#art_24').
:- pred risk_present/1, gloss('the high‑risk AI system presents a risk within the meaning of article 79(1)'), source('celex:32024R1689/oj#art_24').
:- pred storage_conditions_not_jeopardise/1, gloss('storage or transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_24').
:- pred non_compliance_details/1, gloss('details of non‑compliance and corrective actions taken'), source('celex:32024R1689/oj#art_24').

% provenance
provenance(must_verify/2, 'celex:32024R1689/oj#art_24').
provenance(prohibited_making_available_on_market/1, 'celex:32024R1689/oj#art_24').
provenance(must_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_24').

% references
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').
