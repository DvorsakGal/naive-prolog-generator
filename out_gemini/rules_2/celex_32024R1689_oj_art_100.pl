% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : c7698c939920a37788c7e649cf57870ef109456833609f63a0a27f9c4a62ea7d
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor (EDPS)'), source('celex:32024R1689/oj#art_100').
:- pred within_scope/1, gloss('entity falls within the scope of Regulation (EU) 2024/1689'), source('celex:32024R1689/oj#art_100').
:- pred prohibited_ai_practice_infringement/2, gloss('infringement of prohibition of AI practices referred to in Article 5 by an entity'), source('celex:32024R1689/oj#art_100').
:- pred other_non_compliance_infringement/2, gloss('non-compliance with requirements or obligations other than Article 5 by an entity'), source('celex:32024R1689/oj#art_100').
:- pred permitted_impose_fine/3, gloss('authority is permitted to impose an administrative fine on an entity for an infringement'), source('celex:32024R1689/oj#art_100').
:- pred maximum_fine_amount/2, gloss('maximum fine amount applicable to a specific category of infringement'), source('celex:32024R1689/oj#art_100').
:- pred must_give_opportunity_to_be_heard/2, gloss('authority must give the subject entity opportunity of being heard before decision'), source('celex:32024R1689/oj#art_100').
:- pred permitted_base_decision_only_on/2, gloss('authority may base decision only on elements and circumstances commented on'), source('celex:32024R1689/oj#art_100').
:- pred must_associate_complainant/2, gloss('authority must associate complainants closely with the proceedings'), source('celex:32024R1689/oj#art_100').
:- pred entitled_access_to_file/1, gloss('party concerned is entitled to access the file of the supervisory authority'), source('celex:32024R1689/oj#art_100').
:- pred subject_of_proceedings/2, gloss('entity is the subject of proceedings conducted by an authority'), source('celex:32024R1689/oj#art_100').
:- pred must_notify/2, gloss('actor must notify recipient of specified matters'), source('celex:32024R1689/oj#art_100').

% Paragraph 1: EDPS may impose administrative fines on Union institutions, bodies, offices and agencies falling within scope
permitted_impose_fine(Supervisor, Entity, Infringement) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity),
    within_scope(Entity),
    prohibited_ai_practice_infringement(Entity, Infringement).

permitted_impose_fine(Supervisor, Entity, Infringement) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity),
    within_scope(Entity),
    other_non_compliance_infringement(Entity, Infringement).

% Paragraph 2: Maximum fine for non-compliance with Article 5 prohibitions is EUR 1500000
maximum_fine_amount(Infringement, eur(1500000)) :-
    prohibited_ai_practice_infringement(_Entity, Infringement).

% Paragraph 3: Maximum fine for other non-compliance is EUR 750000
maximum_fine_amount(Infringement, eur(750000)) :-
    other_non_compliance_infringement(_Entity, Infringement).

% Paragraph 4: Procedural requirements for EDPS before taking decisions
must_give_opportunity_to_be_heard(Supervisor, Entity) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity),
    subject_of_proceedings(Entity, Supervisor).

permitted_base_decision_only_on(Supervisor, elements_commented_by_parties) :-
    european_data_protection_supervisor(Supervisor).

must_associate_complainant(Supervisor, proceedings) :-
    european_data_protection_supervisor(Supervisor).

% Paragraph 5: Rights of defence and access to file
entitled_access_to_file(Entity) :-
    union_institution_body_office_agency(Entity),
    subject_of_proceedings(Entity, _Supervisor).

% Paragraph 7: EDPS shall annually notify the Commission of administrative fines and litigation/judicial proceedings
must_notify(Supervisor, commission(annual_fines_and_litigation)) :-
    european_data_protection_supervisor(Supervisor).

% Provenance facts
provenance(permitted_impose_fine/3, 'celex:32024R1689/oj#art_100').
provenance(maximum_fine_amount/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(permitted_base_decision_only_on/2, 'celex:32024R1689/oj#art_100').
provenance(must_associate_complainant/2, 'celex:32024R1689/oj#art_100').
provenance(entitled_access_to_file/1, 'celex:32024R1689/oj#art_100').
provenance(must_notify/2, 'celex:32024R1689/oj#art_100').

% References
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').
