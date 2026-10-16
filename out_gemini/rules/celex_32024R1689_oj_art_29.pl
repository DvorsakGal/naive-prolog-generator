% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f77b15f2083735a83f5d6b960d0c64dbd76576b4224cae8629467ea02d8c29d2
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred must_submit(Actor, Object), gloss('Actor is obliged to submit an application or documentation'), source('celex:32024R1689/oj#art_29').
:- pred established_in(Body, MemberState), gloss('Conformity assessment body is established in a Member State'), source('celex:32024R1689/oj#art_29').
:- pred notifying_authority_of(Authority, MemberState), gloss('Authority is the notifying authority of a Member State'), source('celex:32024R1689/oj#art_29').
:- pred required_application_for_notification(App), gloss('Application satisfies required accompanying contents'), source('celex:32024R1689/oj#art_29').
:- pred application_accompanying_content(App, Content), gloss('Application includes specified accompanying content'), source('celex:32024R1689/oj#art_29').
:- pred has_accreditation_certificate(Body), gloss('Body possesses an accreditation certificate'), source('celex:32024R1689/oj#art_29').
:- pred must_provide(Actor, Object), gloss('Actor is obliged to provide documentary evidence or other items'), source('celex:32024R1689/oj#art_29').
:- pred permitted_use(Object), gloss('Documents or certificates are permitted to be used for designation procedure'), source('celex:32024R1689/oj#art_29').
:- pred designated_under_other_union_harmonisation_legislation(Body), gloss('Notified body is designated under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').
:- pred designation_document_or_certificate(Doc, Body), gloss('Document or certificate linked to other designations of the body'), source('celex:32024R1689/oj#art_29').
:- pred must_update(Actor, Object), gloss('Actor is obliged to update documentation upon relevant changes'), source('celex:32024R1689/oj#art_29').
:- pred relevant_change_occurred(Body), gloss('Relevant changes have occurred for the notified body'), source('celex:32024R1689/oj#art_29').

% Paragraph 1: Conformity assessment bodies shall submit an application for notification
% to the notifying authority of the Member State in which they are established.
must_submit(Body, application_for_notification(Authority)) :-
    conformity_assessment_body(Body),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState),
    notifying_authority(Authority).

% Paragraph 2: Accompanied by description, accreditation certificate if it exists,
% and any valid document related to existing designations under other Union legislation.
required_application_for_notification(App) :-
    application_accompanying_content(App, description_of_competence),
    application_accompanying_content(App, existing_designation_documents).

% Paragraph 3: Where the body cannot provide an accreditation certificate,
% it shall provide the notifying authority with documentary evidence.
must_provide(Body, documentary_evidence_of_compliance(Authority)) :-
    conformity_assessment_body(Body),
    \+ has_accreditation_certificate(Body),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState),
    notifying_authority(Authority).

% Paragraph 4 (first sentence): Documents and certificates linked to designations under
% other Union harmonisation legislation may be used to support designation procedure.
permitted_use(support_designation(Doc)) :-
    designation_document_or_certificate(Doc, Body),
    designated_under_other_union_harmonisation_legislation(Body),
    notified_body(Body).

% Paragraph 4 (second sentence): The notified body shall update the documentation
% whenever relevant changes occur.
must_update(Body, documentation_for_continuous_compliance) :-
    notified_body(Body),
    relevant_change_occurred(Body).

% Provenance
provenance(must_submit/2, 'celex:32024R1689/oj#art_29').
provenance(established_in/2, 'celex:32024R1689/oj#art_29').
provenance(notifying_authority_of/2, 'celex:32024R1689/oj#art_29').
provenance(required_application_for_notification/1, 'celex:32024R1689/oj#art_29').
provenance(application_accompanying_content/2, 'celex:32024R1689/oj#art_29').
provenance(has_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide/2, 'celex:32024R1689/oj#art_29').
provenance(permitted_use/1, 'celex:32024R1689/oj#art_29').
provenance(designated_under_other_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_29').
provenance(designation_document_or_certificate/2, 'celex:32024R1689/oj#art_29').
provenance(must_update/2, 'celex:32024R1689/oj#art_29').
provenance(relevant_change_occurred/1, 'celex:32024R1689/oj#art_29').

% References
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
