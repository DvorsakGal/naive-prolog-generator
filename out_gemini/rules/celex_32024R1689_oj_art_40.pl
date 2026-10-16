% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 728c9cc701b6086c7ccc30fdac039df01e1c606b38f30464cca281892fc905c3
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred high_risk_ai_system/1, gloss('high-risk AI system'), source('celex:32024R1689/oj#art_40').
:- pred published_in_oj/1, gloss('reference published in the Official Journal'), source('celex:32024R1689/oj#art_40').
:- pred conforms_with/2, gloss('subject conforms with a standard or specification'), source('celex:32024R1689/oj#art_40').
:- pred covers_requirement/2, gloss('standard covers a requirement or obligation'), source('celex:32024R1689/oj#art_40').
:- pred presumed_conformity/2, gloss('subject presumed in conformity with requirement or obligation'), source('celex:32024R1689/oj#art_40').
:- pred must_issue(Actor, Object), gloss('actor must issue an object'), source('celex:32024R1689/oj#art_40').
:- pred must_consult(Actor, Object), gloss('actor must consult an entity'), source('celex:32024R1689/oj#art_40').
:- pred must_specify(Actor, Object), gloss('actor must specify conditions'), source('celex:32024R1689/oj#art_40').
:- pred must_request(Actor, Object), gloss('actor must request an action or evidence'), source('celex:32024R1689/oj#art_40').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_40').

% Paragraph 1: Presumption of conformity for high-risk AI systems
presumed_conformity(System, Req) :-
    high_risk_ai_system(System),
    conforms_with(System, Standard),
    harmonised_standard(Standard),
    published_in_oj(Standard),
    covers_requirement(Standard, Req).

% Paragraph 1: Presumption of conformity for general-purpose AI models
presumed_conformity(Model, Obligation) :-
    general_purpose_ai_model(Model),
    conforms_with(Model, Standard),
    harmonised_standard(Standard),
    published_in_oj(Standard),
    covers_requirement(Standard, Obligation).

% Paragraph 2: Duties of the Commission
must_issue(Actor, standardisation_request(requirements_and_obligations)) :-
    commission(Actor).

must_consult(Actor, standardisation_preparation(board_and_stakeholders)) :-
    commission(Actor).

must_specify(Actor, standardisation_request_specifications(european_standardisation_organisations)) :-
    commission(Actor).

must_request(Actor, evidence_of_best_efforts(european_standardisation_organisations)) :-
    commission(Actor).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_40').
provenance(published_in_oj/1, 'celex:32024R1689/oj#art_40').
provenance(conforms_with/2, 'celex:32024R1689/oj#art_40').
provenance(covers_requirement/2, 'celex:32024R1689/oj#art_40').
provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_40').
provenance(must_issue/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify/2, 'celex:32024R1689/oj#art_40').
provenance(must_request/2, 'celex:32024R1689/oj#art_40').
provenance(commission/1, 'celex:32024R1689/oj#art_40').

% References
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_10').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_2').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_24').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_6').
