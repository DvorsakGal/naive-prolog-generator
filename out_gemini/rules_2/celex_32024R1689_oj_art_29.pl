% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 0a9e6901729df286cc340bdf473cd4aac753fc6d2ac2453c41baddc174b36555
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred established_in_member_state/2, gloss('conformity assessment body is established in a Member State'), source('celex:32024R1689/oj#art_29').
:- pred notifying_authority_of/2, gloss('notifying authority of a Member State'), source('celex:32024R1689/oj#art_29').
:- pred has_accreditation_certificate/2, gloss('conformity assessment body has an accreditation certificate attesting compliance with Article 31'), source('celex:32024R1689/oj#art_29').
:- pred must_submit/2, gloss('actor must submit an application or document'), source('celex:32024R1689/oj#art_29').
:- pred must_provide/2, gloss('actor must provide documentary evidence or information'), source('celex:32024R1689/oj#art_29').
:- pred must_update/2, gloss('actor must update documentation upon relevant changes'), source('celex:32024R1689/oj#art_29').
:- pred permitted_use/2, gloss('actor or procedure is permitted to use specified documents'), source('celex:32024R1689/oj#art_29').
:- pred relevant_changes_occurred/1, gloss('relevant changes have occurred to the notified body or its activities'), source('celex:32024R1689/oj#art_29').

% Paragraph 1:
% Conformity assessment bodies shall submit an application for notification to the
% notifying authority of the Member State in which they are established.
must_submit(CAB, application_for_notification(Auth)) :-
    conformity_assessment_body(CAB),
    established_in_member_state(CAB, MS),
    notifying_authority(Auth),
    notifying_authority_of(Auth, MS).

% Paragraph 2:
% The application for notification shall be accompanied by a description of the conformity
% assessment activities, the conformity assessment module or modules and the types of AI systems,
% as well as by an accreditation certificate, where one exists.
must_submit(CAB, application_content(CAB, [activities, modules, ai_system_types, Cert])) :-
    conformity_assessment_body(CAB),
    has_accreditation_certificate(CAB, Cert).

% Any valid document related to existing designations under other Union harmonisation legislation
% shall be added.
must_submit(CAB, existing_designation_documents(Docs)) :-
    conformity_assessment_body(CAB),
    permitted_use(CAB, existing_designation_documents(Docs)).

% Paragraph 3:
% Where the conformity assessment body concerned cannot provide an accreditation certificate,
% it shall provide the notifying authority with all the documentary evidence necessary for verification.
must_provide(CAB, documentary_evidence_for_verification(Auth)) :-
    conformity_assessment_body(CAB),
    established_in_member_state(CAB, MS),
    notifying_authority(Auth),
    notifying_authority_of(Auth, MS),
    \+ has_accreditation_certificate(CAB, _).

% Paragraph 4:
% For notified bodies which are designated under any other Union harmonisation legislation,
% all documents and certificates linked to those designations may be used to support their
% designation procedure under this Regulation.
permitted_use(CAB, designation_support_documents(CAB)) :-
    notified_body(CAB).

% The notified body shall update the documentation referred to in paragraphs 2 and 3
% whenever relevant changes occur.
must_update(CAB, notification_documentation(CAB)) :-
    notified_body(CAB),
    relevant_changes_occurred(CAB).

provenance(must_submit/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide/2, 'celex:32024R1689/oj#art_29').
provenance(permitted_use/2, 'celex:32024R1689/oj#art_29').
provenance(must_update/2, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
