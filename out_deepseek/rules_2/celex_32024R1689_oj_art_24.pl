% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : ba22d3a015a66c38e383b6889c67d365cb4b763e249616b4321f97cc4f10cab3
% cached     : False
% title      : Obligations of distributors
:- pred must_verify_before_making_available/2, gloss('distributor must verify CE marking, EU declaration of conformity, instructions for use, and provider/importer compliance'), source('celex:32024R1689/oj#art_24/par_1').
:- pred must_not_make_available_until_conformity/2, gloss('distributor must not make available a non-conforming high-risk AI system until brought into conformity'), source('celex:32024R1689/oj#art_24/par_2').
:- pred must_inform_of_risk/2, gloss('distributor must inform provider or importer when high-risk AI system presents a risk'), source('celex:32024R1689/oj#art_24/par_2').
:- pred must_ensure_storage_transport_compliance/2, gloss('distributor must ensure storage or transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_24/par_3').
:- pred must_take_corrective_actions_or_ensure/2, gloss('distributor must take corrective actions or ensure provider/importer/operator does so'), source('celex:32024R1689/oj#art_24/par_4').
:- pred must_immediately_inform_authorities/2, gloss('distributor must immediately inform provider/importer and competent authorities of risk and non-compliance details'), source('celex:32024R1689/oj#art_24/par_4').
:- pred must_provide_information_on_request/2, gloss('distributor must provide competent authority with information and documentation on reasoned request'), source('celex:32024R1689/oj#art_24/par_5').
:- pred must_cooperate_with_authorities/2, gloss('distributor must cooperate with competent authorities in actions relating to high-risk AI system'), source('celex:32024R1689/oj#art_24/par_6').

% Paragraph 1
must_verify_before_making_available(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    ce_marking(System),
    contains_eu_declaration_of_conformity(System),
    instructions_for_use(System),
    provider_complied_with_obligations(System),
    importer_complied_with_obligations(System).

provider_complied_with_obligations(System) :-
    provider(P),
    % obligations in art_16(1)(b) and (c) are assumed satisfied if no evidence to contrary
    true.

importer_complied_with_obligations(System) :-
    importer(I),
    % obligations in art_23(3) are assumed satisfied if no evidence to contrary
    true.

% Paragraph 2
must_not_make_available_until_conformity(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_non_conforming(Distributor, System).

must_inform_of_risk(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    risk_presenting_system(System),
    ( provider(P) -> true ; importer(I) -> true ).

% Paragraph 3
must_ensure_storage_transport_compliance(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    under_responsibility(Distributor, System).

% Paragraph 4
must_take_corrective_actions_or_ensure(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_union_market(Distributor, System),
    considers_non_conforming(Distributor, System).

must_immediately_inform_authorities(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_union_market(Distributor, System),
    risk_presenting_system(System).

% Paragraph 5
must_provide_information_on_request(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    reasoned_request_from_competent_authority(System).

% Paragraph 6
must_cooperate_with_authorities(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_union_market(Distributor, System).

% Helper predicates
considers_non_conforming(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    % based on information in distributor's possession
    true.

under_responsibility(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System).

reasoned_request_from_competent_authority(System) :-
    high_risk_ai_system(System).

% Provenance
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24/par_1').
provenance(must_not_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24/par_2').
provenance(must_inform_of_risk/2, 'celex:32024R1689/oj#art_24/par_2').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24/par_3').
provenance(must_take_corrective_actions_or_ensure/2, 'celex:32024R1689/oj#art_24/par_4').
provenance(must_immediately_inform_authorities/2, 'celex:32024R1689/oj#art_24/par_4').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_24/par_5').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_24/par_5').

% References
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_4').
