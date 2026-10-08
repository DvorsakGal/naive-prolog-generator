% unit       : celex:32024R1689/oj#art_24
% title      : Obligations of distributors
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : gpt-oss:120b-cloud
% prompt sha : 209ff41e4f6fbdfb788e81de19ade857732bca75a29ede4679ed4dd251985202
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_24').
:- pred ce_marked/1, gloss('system bears required CE marking'), source('celex:32024R1689/oj#art_24').
:- pred has_declaration_of_conformity/1, gloss('system accompanied by EU declaration of conformity'), source('celex:32024R1689/oj#art_24').
:- pred has_instructions_for_use/1, gloss('system accompanied by instructions for use'), source('celex:32024R1689/oj#art_24').
:- pred provider_compliant/1, gloss('provider has complied with its obligations'), source('celex:32024R1689/oj#art_24').
:- pred importer_compliant/1, gloss('importer has complied with its obligations'), source('celex:32024R1689/oj#art_24').
:- pred not_conforming/1, gloss('system not in conformity with the requirements'), source('celex:32024R1689/oj#art_24').
:- pred has_reason_to_consider_not_conforming/2, gloss('distributor has reason to consider the system not in conformity'), source('celex:32024R1689/oj#art_24').
:- pred presents_risk/1, gloss('system presents a risk within the meaning of art 79 par 1'), source('celex:32024R1689/oj#art_24').
:- pred under_responsibility/2, gloss('system is under the distributor\'s responsibility'), source('celex:32024R1689/oj#art_24').
:- pred storage_transport_conditions_not_jeopardise/1, gloss('storage or transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_24').
:- pred has_made_available/2, gloss('distributor has made the system available on the market'), source('celex:32024R1689/oj#art_24').
:- pred competent_authority/1, gloss('relevant competent authority'), source('celex:32024R1689/oj#art_24').
:- pred request_reasoned/2, gloss('authority makes a reasoned request to the distributor'), source('celex:32024R1689/oj#art_24').

% 1. Pre‑market verification duties
required_pre_market_verification(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    ce_marked(S),
    has_declaration_of_conformity(S),
    has_instructions_for_use(S),
    provider_compliant(S),
    importer_compliant(S).

provenance(required_pre_market_verification/2, 'celex:32024R1689/oj#art_24').

% 2. Prohibition to make available when not in conformity
prohibited_make_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    not_conforming(S),
    has_reason_to_consider_not_conforming(D, S).

provenance(prohibited_make_available/2, 'celex:32024R1689/oj#art_24').

% 2. Duty to inform provider or importer of risk
required_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S).

provenance(required_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').

% 3. Duty to ensure storage/transport does not jeopardise compliance
required_ensure_storage_transport_compliance(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    under_responsibility(D, S),
    storage_transport_conditions_not_jeopardise(S).

provenance(required_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24').

% 4. Duty to take corrective actions when non‑conformity is discovered
required_take_corrective_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    has_made_available(D, S),
    not_conforming(S),
    has_reason_to_consider_not_conforming(D, S).

provenance(required_take_corrective_actions/2, 'celex:32024R1689/oj#art_24').

% 4. Additional duty to inform authorities when risk is present
required_inform_authorities_of_nonconformity(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S),
    not_conforming(S),
    has_reason_to_consider_not_conforming(D, S).

provenance(required_inform_authorities_of_nonconformity/2, 'celex:32024R1689/oj#art_24').

% 5. Duty to provide information upon a reasoned request
required_provide_information(D, A) :-
    distributor(D),
    competent_authority(A),
    request_reasoned(A, D).

provenance(required_provide_information/2, 'celex:32024R1689/oj#art_24').

% 6. Duty to cooperate with competent authorities
required_cooperate(D, A) :-
    distributor(D),
    competent_authority(A).

provenance(required_cooperate/2, 'celex:32024R1689/oj#art_24').

% References
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').
