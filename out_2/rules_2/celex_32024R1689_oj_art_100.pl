% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 77ddaa731ea1d57cdc2a0e75fff3672c19c125ed383f73d9cfda408c7856de31
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_100').
:- pred union_entity/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_100').
:- pred must_impose_fine/2, gloss('European Data Protection Supervisor may impose administrative fines'), source('celex:32024R1689/oj#art_100').
:- pred must_give_hearing_opportunity/2, gloss('European Data Protection Supervisor shall give the Union entity the opportunity to be heard'), source('celex:32024R1689/oj#art_100').
:- pred must_respect_rights_of_defence/2, gloss('Rights of defence of the parties concerned shall be fully respected'), source('celex:32024R1689/oj#art_100').
:- pred must_provide_access_to_file/2, gloss('Parties shall have access to the European Data Protection Supervisor’s file'), source('celex:32024R1689/oj#art_100').
:- pred must_notify_annually/2, gloss('European Data Protection Supervisor shall annually notify the Commission of the administrative fines imposed'), source('celex:32024R1689/oj#art_100').

european_data_protection_supervisor(edps).

must_impose_fine(EDPS, fine(up_to(eur(1500000)), non_compliance_prohibition_ai_practices)) :-
    european_data_protection_supervisor(EDPS).

must_impose_fine(EDPS, fine(up_to(eur(750000)), non_compliance_requirements)) :-
    european_data_protection_supervisor(EDPS).

must_give_hearing_opportunity(EDPS, hearing(Entity)) :-
    european_data_protection_supervisor(EDPS),
    union_entity(Entity).

must_respect_rights_of_defence(EDPS, parties_concerned) :-
    european_data_protection_supervisor(EDPS).

must_provide_access_to_file(EDPS, parties_concerned) :-
    european_data_protection_supervisor(EDPS).

must_notify_annually(EDPS, notification(commission, fines_imposed)) :-
    european_data_protection_supervisor(EDPS).

provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_100').
provenance(union_entity/1, 'celex:32024R1689/oj#art_100').
provenance(must_impose_fine/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_hearing_opportunity/2, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/2, 'celex:32024R1689/oj#art_100').
provenance(must_provide_access_to_file/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_annually/2, 'celex:32024R1689/oj#art_100').

references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').
