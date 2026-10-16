% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : e5de4b0ee394430b217dc689023a3be0b565da4b6ea288d5e3f56f9f5bb762a9
% cached     : False
% title      : Notifying authorities
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_28').
:- pred national_accreditation_body/1, gloss('national accreditation body within the meaning of Regulation (EC) No 765/2008'), source('celex:32024R1689/oj#art_28').
:- pred must_designate/2, gloss('Member State must designate or establish a notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred permitted_assign_assessment_and_monitoring/2, gloss('Member State may decide that assessment and monitoring be carried out by a national accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred required_safeguard_objectivity_and_impartiality/1, gloss('notifying authority must be established, organised and operated without conflict of interest'), source('celex:32024R1689/oj#art_28').
:- pred required_separation_of_assessment_and_notification/1, gloss('notification decisions must be taken by competent persons different from those who carried out the assessment'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_conformity_assessment_activities/1, gloss('notifying authority prohibited from performing conformity assessment body activities'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_consultancy_services/1, gloss('notifying authority prohibited from offering commercial or competitive consultancy services'), source('celex:32024R1689/oj#art_28').
:- pred required_confidentiality_safeguard/1, gloss('notifying authority must safeguard confidentiality in accordance with Article 78'), source('celex:32024R1689/oj#art_28').
:- pred required_adequate_competent_personnel/1, gloss('notifying authority must have adequate competent personnel with necessary expertise'), source('celex:32024R1689/oj#art_28').

% Paragraph 1: Each Member State shall designate or establish at least one notifying authority
must_designate(MS, notifying_authority) :-
    member_state(MS).

% Paragraph 2: Member States may decide that assessment and monitoring be carried out by a national accreditation body
permitted_assign_assessment_and_monitoring(MS, NAB) :-
    member_state(MS),
    national_accreditation_body(NAB).

% Paragraph 3: Notifying authorities shall be established, organised and operated without conflict of interest and safeguard objectivity/impartiality
required_safeguard_objectivity_and_impartiality(Authority) :-
    notifying_authority(Authority).

% Paragraph 4: Decisions relating to notification taken by competent persons different from those who assessed
required_separation_of_assessment_and_notification(Authority) :-
    notifying_authority(Authority).

% Paragraph 5: Notifying authorities shall offer or provide neither CAB activities nor commercial/competitive consultancy
prohibited_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority).

prohibited_consultancy_services(Authority) :-
    notifying_authority(Authority).

% Paragraph 6: Safeguard confidentiality of information in accordance with Article 78
required_confidentiality_safeguard(Authority) :-
    notifying_authority(Authority).

% Paragraph 7: Adequate number of competent personnel with necessary expertise
required_adequate_competent_personnel(Authority) :-
    notifying_authority(Authority).

% Provenance
provenance(must_designate/2, 'celex:32024R1689/oj#art_28').
provenance(permitted_assign_assessment_and_monitoring/2, 'celex:32024R1689/oj#art_28').
provenance(required_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28').
provenance(required_separation_of_assessment_and_notification/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(required_confidentiality_safeguard/1, 'celex:32024R1689/oj#art_28').
provenance(required_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').

% References
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').
