% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : daf5a813c925458739e7654c7cae64bdb90f6c4fe22ab8fddee8798f8995e6b4
% cached     : False
% title      : Codes of practice
:- pred code_of_practice/1, gloss('code of practice for general-purpose AI models'), source('celex:32024R1689/oj#art_56').
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_56').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_56').
:- pred civil_society_organisation/1, gloss('civil society organisation'), source('celex:32024R1689/oj#art_56').
:- pred provider_of_general_purpose_ai_model/1, gloss('provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_56').
:- pred presents_systemic_risk/1, gloss('general-purpose AI model presents systemic risk'), source('celex:32024R1689/oj#art_56').
:- pred adheres_to_code/2, gloss('provider adheres to a code of practice'), source('celex:32024R1689/oj#art_56').
:- pred approved_code_of_practice/1, gloss('code of practice approved by the Commission with general validity'), source('celex:32024R1689/oj#art_56').
:- pred permitted_participation/2, gloss('entity permitted to participate or support drawing up of a code of practice'), source('celex:32024R1689/oj#art_56').
:- pred permitted_limited_adherence/2, gloss('provider permitted to limit adherence to Article 53 obligations'), source('celex:32024R1689/oj#art_56').
:- pred permitted_common_rules/1, gloss('Commission permitted to provide common rules by implementing act'), source('celex:32024R1689/oj#art_56').
:- pred deadline_missed/2, gloss('code of practice missed specified deadline date'), source('celex:32024R1689/oj#art_56').
:- pred inadequate_code_of_practice/1, gloss('code of practice assessed as not adequate by the AI Office'), source('celex:32024R1689/oj#art_56').
:- pred explicitly_declares_full_adherence/2, gloss('provider explicitly declares interest to join the full code of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_encourage_and_facilitate/2, gloss('actor must encourage and facilitate drawing up or review of code of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_monitor_and_evaluate/2, gloss('actor must monitor and evaluate objectives of code of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_publish/2, gloss('actor must publish an assessment of adequacy of codes of practice'), source('celex:32024R1689/oj#art_56').

% Paragraph 1 & 8: Duties to encourage and facilitate
must_encourage_and_facilitate(Office, drawing_up(Code)) :-
    ai_office(Office),
    code_of_practice(Code).

must_encourage_and_facilitate(Office, review_and_adaptation(Code)) :-
    ai_office(Office),
    code_of_practice(Code).

% Paragraph 3: Stakeholders permitted to participate/support drawing up
permitted_participation(Provider, drawing_up(Code)) :-
    provider_of_general_purpose_ai_model(Provider),
    code_of_practice(Code).

permitted_participation(Authority, drawing_up(Code)) :-
    national_competent_authority(Authority),
    code_of_practice(Code).

permitted_participation(Org, drawing_up(Code)) :-
    civil_society_organisation(Org),
    code_of_practice(Code).

permitted_participation(Provider, drawing_up(Code)) :-
    downstream_provider(Provider),
    code_of_practice(Code).

% Paragraph 6: Monitoring, evaluation, and publication
must_monitor_and_evaluate(Office, Code) :-
    ai_office(Office),
    code_of_practice(Code).

must_monitor_and_evaluate(Board, Code) :-
    board(Board),
    code_of_practice(Code).

must_publish(Office, assessment_of_adequacy(Code)) :-
    ai_office(Office),
    code_of_practice(Code).

must_publish(Board, assessment_of_adequacy(Code)) :-
    board(Board),
    code_of_practice(Code).

% Paragraph 7: Limited adherence for models not presenting systemic risks
permitted_limited_adherence(Provider, Code) :-
    provider_of_general_purpose_ai_model(Provider),
    code_of_practice(Code),
    \+ presents_systemic_risk(Provider),
    \+ explicitly_declares_full_adherence(Provider, Code).

% Paragraph 9: Implementing acts for common rules where code fails or is inadequate
permitted_common_rules(Commission) :-
    commission(Commission),
    deadline_missed(code_of_practice, date(2025, 8, 2)).

permitted_common_rules(Commission) :-
    commission(Commission),
    inadequate_code_of_practice(_Code).

% Provenance
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_participation/2, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_limited_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_common_rules/1, 'celex:32024R1689/oj#art_56').

% References
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').
