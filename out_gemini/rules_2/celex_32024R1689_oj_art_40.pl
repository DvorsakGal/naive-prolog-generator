% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : c19961c5527b3287ad42768e36f4faca09bb8dd3414e162d277d1c6ba09fb2bb
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_40').
:- pred published_in_official_journal/1, gloss('reference of standard published in OJ'), source('celex:32024R1689/oj#art_40').
:- pred conforms_to_standard/2, gloss('system or model conforms to harmonised standard'), source('celex:32024R1689/oj#art_40').
:- pred standard_covers/2, gloss('harmonised standard covers requirement or obligation'), source('celex:32024R1689/oj#art_40').
:- pred presumed_in_conformity/2, gloss('presumed in conformity with requirements or obligations'), source('celex:32024R1689/oj#art_40').
:- pred must_issue_standardisation_request/2, gloss('Commission must issue standardisation request covering requirements or obligations'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_participant/1, gloss('participant in the standardisation process'), source('celex:32024R1689/oj#art_40').
:- pred must_seek_objectives/2, gloss('participant in standardisation process must seek specified statutory objectives'), source('celex:32024R1689/oj#art_40').

% Paragraph 1: Presumption of conformity for high-risk AI systems
presumed_in_conformity(System, requirements_chapter_3_section_2) :-
    high_risk_ai_system(System),
    conforms_to_standard(System, Standard),
    harmonised_standard(Standard),
    published_in_official_journal(Standard),
    standard_covers(Standard, requirements_chapter_3_section_2).

% Paragraph 1: Presumption of conformity for general-purpose AI models
presumed_in_conformity(Model, obligations_chapter_5) :-
    general_purpose_ai_model(Model),
    conforms_to_standard(Model, Standard),
    harmonised_standard(Standard),
    published_in_official_journal(Standard),
    standard_covers(Standard, obligations_chapter_5).

% Paragraph 2: Commission obligation to issue standardisation requests
must_issue_standardisation_request(Commission, standardisation_requests(high_risk_and_gpai)) :-
    commission(Commission).

% Paragraph 3: Participants in standardisation process shall seek specific objectives
must_seek_objectives(Participant, standardisation_objectives) :-
    standardisation_participant(Participant).

% Provenance
provenance(presumed_in_conformity/2, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(must_seek_objectives/2, 'celex:32024R1689/oj#art_40').

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
