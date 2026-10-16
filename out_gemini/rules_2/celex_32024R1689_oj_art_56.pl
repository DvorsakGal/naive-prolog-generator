% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : c012ac898dea1bc21627a8eb48664500dd3f51f9d6d4c35f68b3cc5e8852a70d
% cached     : False
% title      : Codes of practice
:- pred code_of_practice/1, gloss('Code of practice drawn up at Union level'), source('celex:32024R1689/oj#art_56').
:- pred artificial_intelligence_board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_56').
:- pred must_encourage_and_facilitate/2, gloss('Entity must encourage and facilitate a process or task'), source('celex:32024R1689/oj#art_56').
:- pred permitted_invite_to_participate/2, gloss('AI Office may invite entity to participate in drawing up codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred permitted_support_process/2, gloss('Stakeholder may support the drawing-up of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred permitted_invite_to_adhere/2, gloss('AI Office may invite entity to adhere to codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred permitted_limited_adherence/2, gloss('Provider may limit adherence to codes of practice to specific obligations'), source('celex:32024R1689/oj#art_56').
:- pred explicitly_declares_interest_to_join_full_code/1, gloss('Provider explicitly declares interest to join the full code of practice'), source('celex:32024R1689/oj#art_56').
:- pred presents_systemic_risk/1, gloss('General-purpose AI model presents systemic risk'), source('celex:32024R1689/oj#art_56').
:- pred must_monitor_and_evaluate/2, gloss('Entity must monitor and evaluate an object or achievement'), source('celex:32024R1689/oj#art_56').
:- pred must_assess/2, gloss('Entity must assess an object or compliance'), source('celex:32024R1689/oj#art_56').
:- pred must_publish/2, gloss('Entity must publish a document or assessment'), source('celex:32024R1689/oj#art_56').
:- pred permitted_approve_code_of_practice/2, gloss('Commission may approve a code of practice via implementing act'), source('celex:32024R1689/oj#art_56').
:- pred deadline_code_of_practice/1, gloss('Statutory deadline for finalising codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred permitted_provide_common_rules/2, gloss('Commission may provide common rules via implementing acts'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_finalised/1, gloss('Code of practice has been finalised'), source('celex:32024R1689/oj#art_56').
:- pred deemed_adequate/2, gloss('Authority deems a code of practice adequate following assessment'), source('celex:32024R1689/oj#art_56').
:- pred civil_society_organisation/1, gloss('Civil society organisation'), source('celex:32024R1689/oj#art_56').
:- pred academia/1, gloss('Academic institution or body'), source('celex:32024R1689/oj#art_56').
:- pred industry_stakeholder/1, gloss('Industry stakeholder'), source('celex:32024R1689/oj#art_56').
:- pred independent_expert/1, gloss('Independent expert'), source('celex:32024R1689/oj#art_56').

% Paragraph 1: AI Office shall encourage and facilitate drawing up of codes of practice
must_encourage_and_facilitate(Office, drawing_up(codes_of_practice)) :-
    ai_office(Office).

% Paragraph 3: AI Office may invite providers of GPAI models and national competent authorities
permitted_invite_to_participate(Office, invite_to_draw_up(Actor, C)) :-
    ai_office(Office),
    code_of_practice(C),
    provider_of_general_purpose_ai_model(Actor).

permitted_invite_to_participate(Office, invite_to_draw_up(Authority, C)) :-
    ai_office(Office),
    code_of_practice(C),
    national_competent_authority(Authority).

% Stakeholders that may support the process
permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    civil_society_organisation(Actor).

permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    industry_stakeholder(Actor).

permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    academia(Actor).

permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    downstream_provider(Actor).

permitted_support_process(Actor, drawing_up(C)) :-
    code_of_practice(C),
    independent_expert(Actor).

% Paragraph 6: Monitoring, evaluation, assessment, publication, and Commission approval
must_monitor_and_evaluate(Actor, objectives(C)) :-
    code_of_practice(C),
    ( ai_office(Actor) ; artificial_intelligence_board(Actor) ).

must_assess(Actor, coverage(C, obligations(articles_53_and_55))) :-
    code_of_practice(C),
    ( ai_office(Actor) ; artificial_intelligence_board(Actor) ).

must_publish(Actor, assessment(adequacy(C))) :-
    code_of_practice(C),
    ( ai_office(Actor) ; artificial_intelligence_board(Actor) ).

permitted_approve_code_of_practice(Commission, C) :-
    commission(Commission),
    code_of_practice(C).

% Paragraph 7: Adherence to codes of practice
permitted_invite_to_adhere(Office, adhere(Provider, C)) :-
    ai_office(Office),
    code_of_practice(C),
    provider_of_general_purpose_ai_model(Provider).

permitted_limited_adherence(Provider, adherence_to(C, obligations(article_53))) :-
    code_of_practice(C),
    provider_of_general_purpose_ai_model(Provider),
    \+ presents_systemic_risk(Provider),
    \+ explicitly_declares_interest_to_join_full_code(Provider).

% Paragraph 8: Review and adaptation
must_encourage_and_facilitate(Office, review_and_adaptation(codes_of_practice)) :-
    ai_office(Office).

% Paragraph 9: Deadlines and fallback implementing acts
deadline_code_of_practice(date(2025, 5, 2)).

permitted_provide_common_rules(Commission, implementing_act(obligations(articles_53_and_55))) :-
    commission(Commission),
    \+ code_of_practice_finalised(code_of_practice).

permitted_provide_common_rules(Commission, implementing_act(obligations(articles_53_and_55))) :-
    commission(Commission),
    ai_office(Office),
    \+ deemed_adequate(Office, code_of_practice).

% Provenance
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(artificial_intelligence_board/1, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite_to_participate/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_support_process/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite_to_adhere/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_limited_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(explicitly_declares_interest_to_join_full_code/1, 'celex:32024R1689/oj#art_56').
provenance(presents_systemic_risk/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_approve_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(deadline_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_provide_common_rules/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_finalised/1, 'celex:32024R1689/oj#art_56').
provenance(deemed_adequate/2, 'celex:32024R1689/oj#art_56').
provenance(civil_society_organisation/1, 'celex:32024R1689/oj#art_56').
provenance(academia/1, 'celex:32024R1689/oj#art_56').
provenance(industry_stakeholder/1, 'celex:32024R1689/oj#art_56').
provenance(independent_expert/1, 'celex:32024R1689/oj#art_56').

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
