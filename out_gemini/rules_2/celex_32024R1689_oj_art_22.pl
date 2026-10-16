% unit       : celex:32024R1689/oj#art_22
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 0fe81c2f696b9fdb1cc9e8f1f9d1215c13364d3280c63a280e364d1bc5b378c7
% cached     : False
% title      : Authorised representatives of providers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_22').
:- pred established_in_third_country/1, gloss('entity established in a third country'), source('celex:32024R1689/oj#art_22').
:- pred established_in_union/1, gloss('entity established in the Union'), source('celex:32024R1689/oj#art_22').
:- pred mandate_covers_tasks/2, gloss('mandate covers statutory tasks of authorised representative for an AI system'), source('celex:32024R1689/oj#art_22').
:- pred mandate_allows_addressing/2, gloss('mandate empowers authorised representative to be addressed by competent authorities'), source('celex:32024R1689/oj#art_22').
:- pred written_mandate/2, gloss('written mandate between provider and authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred acts_contrary_to_obligations/1, gloss('entity is considered or has reason to be considered acting contrary to obligations'), source('celex:32024R1689/oj#art_22').
:- pred notified_body_involved/2, gloss('notified body involved in conformity assessment of an AI system'), source('celex:32024R1689/oj#art_22').

% Paragraph 1: Providers established in third countries must appoint an authorised representative established in the Union by written mandate prior to making high-risk AI system available.
must_appoint(Provider, authorised_representative(Rep, System)) :-
    provider(Provider),
    established_in_third_country(Provider),
    high_risk_ai_system(System),
    authorised_representative(Rep),
    established_in_union(Rep),
    written_mandate(Provider, Rep).

% Paragraph 2: Provider must enable authorised representative to perform tasks in mandate.
must_enable(Provider, perform_tasks(Rep)) :-
    provider(Provider),
    authorised_representative_of(Rep, Provider).

% Paragraph 3: Authorised representative must perform tasks specified in the mandate.
must_perform(Rep, tasks(Mandate)) :-
    authorised_representative(Rep),
    written_mandate(_Provider, Rep),
    Mandate = Rep.

% Paragraph 3: Must provide a copy of mandate to market surveillance authorities upon request.
must_provide(Rep, copy_of_mandate(Authority)) :-
    authorised_representative(Rep),
    market_surveillance_authority(Authority).

% Paragraph 3: Mandate must empower representative to carry out the statutory tasks.
must_empower(Provider, mandate_tasks(Rep, System)) :-
    provider(Provider),
    authorised_representative_of(Rep, Provider),
    high_risk_ai_system(System),
    mandate_covers_tasks(Rep, System),
    mandate_allows_addressing(Rep, System).

% Paragraph 3(a): Task to verify EU declaration of conformity and technical documentation drawn up and conformity assessment carried out.
must_verify(Rep, conformity_documentation(System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).

% Paragraph 3(b): Task to keep documentation at disposal of competent authorities for 10 years.
must_keep_at_disposal(Rep, compliance_documentation(System, period(years(10), after(market_placement_or_service)))) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).

% Paragraph 3(c): Provide information/documentation and access to logs upon reasoned request.
must_provide(Rep, documentation_and_logs(System, Authority)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System),
    national_competent_authority(Authority).

% Paragraph 3(d): Cooperate with competent authorities upon reasoned request.
must_cooperate(Rep, competent_authority_action(Authority, System)) :-
    authorised_representative(Rep),
    national_competent_authority(Authority),
    high_risk_ai_system(System).

% Paragraph 3(e): Comply with registration obligations or ensure accuracy of info.
must_comply(Rep, registration_obligations(System)) :-
    authorised_representative(Rep),
    high_risk_ai_system(System).

% Paragraph 4: Authorised representative must terminate mandate if provider acts contrary to obligations.
must_terminate(Rep, mandate(Provider)) :-
    authorised_representative_of(Rep, Provider),
    acts_contrary_to_obligations(Provider).

% Paragraph 4: Authorised representative must inform market surveillance authority upon termination.
must_inform(Rep, termination(mandate(Provider), Authority)) :-
    authorised_representative_of(Rep, Provider),
    acts_contrary_to_obligations(Provider),
    market_surveillance_authority(Authority).

% Paragraph 4: Authorised representative must inform notified body upon termination where applicable.
must_inform(Rep, termination(mandate(Provider), Body)) :-
    authorised_representative_of(Rep, Provider),
    acts_contrary_to_obligations(Provider),
    notified_body(Body),
    notified_body_involved(Body, Provider).

% Provenance
provenance(must_appoint/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide/2, 'celex:32024R1689/oj#art_22').
provenance(must_empower/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform/2, 'celex:32024R1689/oj#art_22').

% References
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
