% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7555cf3ca4c40f4ef8506ee63d3ccb2528d9f7b9329856365cc739a2f95bc2ab
% cached     : False
% title      : Obligations of distributors
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_24').
:- pred bears_ce_marking/1, gloss('system bears the required CE marking'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_eu_declaration_of_conformity/1, gloss('system accompanied by a copy of the EU declaration of conformity'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_instructions_for_use/1, gloss('system accompanied by instructions for use'), source('celex:32024R1689/oj#art_24').
:- pred provider_complied_with_obligations/1, gloss('provider complied with obligations under art_16(1)(b) and (c)'), source('celex:32024R1689/oj#art_24').
:- pred importer_complied_with_obligations/1, gloss('importer complied with obligations under art_23(3)'), source('celex:32024R1689/oj#art_24').
:- pred conformity_with_section_2_requirements/1, gloss('system conforms with requirements of Chapter III Section 2'), source('celex:32024R1689/oj#art_24').
:- pred presents_risk/1, gloss('system presents a risk within the meaning of art_79(1)'), source('celex:32024R1689/oj#art_24').
:- pred under_distributor_responsibility/2, gloss('system is under the responsibility of the distributor'), source('celex:32024R1689/oj#art_24').
:- pred storage_or_transport_conditions_jeopardise_compliance/2, gloss('storage or transport conditions jeopardise compliance of the system'), source('celex:32024R1689/oj#art_24').
:- pred corrective_actions_taken/2, gloss('distributor has taken corrective actions for the system'), source('celex:32024R1689/oj#art_24').
:- pred competent_authority/1, gloss('authority competent for the high-risk AI system'), source('celex:32024R1689/oj#art_24').
:- pred reasoned_request/2, gloss('competent authority has made a reasoned request to the distributor'), source('celex:32024R1689/oj#art_24').

% Paragraph 1
must_verify_before_making_available(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    bears_ce_marking(System),
    accompanied_by_eu_declaration_of_conformity(System),
    accompanied_by_instructions_for_use(System),
    provider_complied_with_obligations(System),
    importer_complied_with_obligations(System).

% Paragraph 2 – first sentence
must_not_make_available(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    \+ conformity_with_section_2_requirements(System).

% Paragraph 2 – second sentence
must_inform(Distributor, nonconformity_risk(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    presents_risk(System).

% Paragraph 3
must_ensure_storage_transport_compliance(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    under_distributor_responsibility(Distributor, System),
    \+ storage_or_transport_conditions_jeopardise_compliance(Distributor, System).

% Paragraph 4 – first sentence (non-conformity after making available)
must_take_corrective_actions(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    \+ conformity_with_section_2_requirements(System),
    \+ corrective_actions_taken(Distributor, System).

% Paragraph 4 – second sentence (risk after making available)
must_immediately_inform(Distributor, risk_details(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    presents_risk(System).

% Paragraph 5
must_provide_information_and_documentation(Distributor, Authority, System) :-
    distributor(Distributor),
    competent_authority(Authority),
    high_risk_ai_system(System),
    reasoned_request(Authority, Distributor).

% Paragraph 6
must_cooperate(Distributor, Authority) :-
    distributor(Distributor),
    competent_authority(Authority).

% Provenance
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_and_documentation/3, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_24').

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
