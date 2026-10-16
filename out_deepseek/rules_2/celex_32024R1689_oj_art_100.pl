% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : ed88a4ce17ea4a7e5ef9bc540fd22de116c2eda548aeb3eb2835288259cbae88
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred union_institution_body_office_or_agency/1, gloss('Union institution, body, office or agency falling within scope of the Regulation'), source('celex:32024R1689/oj#art_100').
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_100').
:- pred may_impose_fine/2, gloss('EDPS may impose administrative fine on Union institution, body, office or agency'), source('celex:32024R1689/oj#art_100').
:- pred fine_imposed/2, gloss('administrative fine imposed on entity'), source('celex:32024R1689/oj#art_100').
:- pred fine_cap_art_5/2, gloss('maximum fine for non-compliance with Article 5 prohibitions'), source('celex:32024R1689/oj#art_100').
:- pred fine_cap_other/2, gloss('maximum fine for non-compliance with requirements other than Article 5'), source('celex:32024R1689/oj#art_100').
:- pred must_give_opportunity_to_be_heard/2, gloss('EDPS must give entity opportunity to be heard before decision'), source('celex:32024R1689/oj#art_100').
:- pred must_base_decision_on_commentable_elements/1, gloss('EDPS must base decision only on elements parties could comment on'), source('celex:32024R1689/oj#art_100').
:- pred must_associate_complainants/1, gloss('complainants must be closely associated with proceedings'), source('celex:32024R1689/oj#art_100').
:- pred must_respect_rights_of_defence/1, gloss('rights of defence of parties must be fully respected'), source('celex:32024R1689/oj#art_100').
:- pred must_entitle_access_to_file/2, gloss('parties entitled to access EDPS file subject to legitimate interests'), source('celex:32024R1689/oj#art_100').
:- pred fines_contribute_to_union_budget/1, gloss('funds collected from fines contribute to general budget of the Union'), source('celex:32024R1689/oj#art_100').
:- pred fines_not_affect_effective_operation/1, gloss('fines shall not affect effective operation of fined entity'), source('celex:32024R1689/oj#art_100').
:- pred must_notify_commission_annually/2, gloss('EDPS must notify Commission annually of fines and litigation'), source('celex:32024R1689/oj#art_100').

may_impose_fine(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_institution_body_office_or_agency(Entity).

fine_cap_art_5(Entity, eur(1500000)) :-
    union_institution_body_office_or_agency(Entity).

fine_cap_other(Entity, eur(750000)) :-
    union_institution_body_office_or_agency(Entity).

must_give_opportunity_to_be_heard(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_institution_body_office_or_agency(Entity),
    fine_imposed(EDPS, Entity).

must_base_decision_on_commentable_elements(EDPS) :-
    european_data_protection_supervisor(EDPS).

must_associate_complainants(EDPS) :-
    european_data_protection_supervisor(EDPS).

must_respect_rights_of_defence(EDPS) :-
    european_data_protection_supervisor(EDPS).

must_entitle_access_to_file(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_institution_body_office_or_agency(Entity).

fines_contribute_to_union_budget(EDPS) :-
    european_data_protection_supervisor(EDPS).

fines_not_affect_effective_operation(Entity) :-
    union_institution_body_office_or_agency(Entity).

must_notify_commission_annually(EDPS, notification(fines_and_litigation)) :-
    european_data_protection_supervisor(EDPS).

provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_100').
provenance(fine_cap_art_5/2, 'celex:32024R1689/oj#art_100').
provenance(fine_cap_other/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_base_decision_on_commentable_elements/1, 'celex:32024R1689/oj#art_100').
provenance(must_associate_complainants/1, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/1, 'celex:32024R1689/oj#art_100').
provenance(must_entitle_access_to_file/2, 'celex:32024R1689/oj#art_100').
provenance(fines_contribute_to_union_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fines_not_affect_effective_operation/1, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_annually/2, 'celex:32024R1689/oj#art_100').

references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
