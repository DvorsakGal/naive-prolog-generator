% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 840028e616d7175baf8598e57330922f94f7dbd6d64463d40b8f6676e6b0e50e
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred union_institution_body_office_agency/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_100').
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor (EDPS)'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_prohibited_ai_practices/1, gloss('non-compliance with the prohibition of AI practices referred to in Article 5'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_other_obligations/1, gloss('non-compliance with requirements or obligations other than Article 5'), source('celex:32024R1689/oj#art_100').
:- pred permitted_administrative_fine/2, gloss('EDPS is permitted to impose an administrative fine on an entity for an infringement'), source('celex:32024R1689/oj#art_100').
:- pred maximum_fine/2, gloss('maximum amount of the administrative fine for an infringement'), source('celex:32024R1689/oj#art_100').
:- pred heard_on_possible_infringement/1, gloss('entity has been given the opportunity of being heard regarding the infringement'), source('celex:32024R1689/oj#art_100').
:- pred must_hear(Supervisor, Entity), gloss('Supervisor must give the entity the opportunity of being heard'), source('celex:32024R1689/oj#art_100').
:- pred must_notify(Supervisor, Object), gloss('Supervisor must notify the Commission on an annual basis of fines and litigation'), source('celex:32024R1689/oj#art_100').
:- pred entitled_access_to_file(Entity, File), gloss('entity is entitled to have access to the file of the proceedings'), source('celex:32024R1689/oj#art_100').

% Paragraph 1: EDPS may impose administrative fines on Union institutions, bodies,
% offices and agencies falling within scope.
permitted_administrative_fine(Supervisor, fine(Entity, Infringement)) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity),
    heard_on_possible_infringement(Entity),
    ( non_compliance_prohibited_ai_practices(Infringement)
    ; non_compliance_other_obligations(Infringement)
    ).

% Paragraph 2: Maximum fine for Article 5 prohibitions is up to EUR 1,500,000.
maximum_fine(Infringement, eur(1500000)) :-
    non_compliance_prohibited_ai_practices(Infringement).

% Paragraph 3: Maximum fine for other obligations is up to EUR 750,000.
maximum_fine(Infringement, eur(750000)) :-
    non_compliance_other_obligations(Infringement).

% Paragraph 4: EDPS must give opportunity of being heard.
must_hear(Supervisor, Entity) :-
    european_data_protection_supervisor(Supervisor),
    union_institution_body_office_agency(Entity).

% Paragraph 5: Rights of defence: access to file.
entitled_access_to_file(Entity, file(Supervisor)) :-
    union_institution_body_office_agency(Entity),
    european_data_protection_supervisor(Supervisor).

% Paragraph 7: EDPS must notify the Commission annually of fines and litigation.
must_notify(Supervisor, commission(annual_report(fines_and_litigation))) :-
    european_data_protection_supervisor(Supervisor).

% Provenance facts
provenance(permitted_administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(maximum_fine/2, 'celex:32024R1689/oj#art_100').
provenance(must_hear/2, 'celex:32024R1689/oj#art_100').
provenance(entitled_access_to_file/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify/2, 'celex:32024R1689/oj#art_100').

% References
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').
