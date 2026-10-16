% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 505f09e485509a21ed40cc1c3dcaf432dc5c33e74393031c2d744fcd1d26b6a6
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred may_impose_administrative_fine/2, gloss('authority may impose fine on entity'), source('celex:32024R1689/oj#art_100').
:- pred union_institution_body_office_agency/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_100').
:- pred falls_within_scope/1, gloss('entity falls within scope of regulation'), source('celex:32024R1689/oj#art_100').
:- pred administrative_fine_up_to/2, gloss('administrative fine up to specified amount'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_prohibited_practices/1, gloss('non-compliance with prohibited AI practices'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_other_requirements/1, gloss('non-compliance with requirements other than prohibited practices'), source('celex:32024R1689/oj#art_100').
:- pred must_give_opportunity_to_be_heard/2, gloss('authority must give entity opportunity to be heard'), source('celex:32024R1689/oj#art_100').
:- pred subject_of_proceedings/2, gloss('entity is subject of proceedings by authority'), source('celex:32024R1689/oj#art_100').
:- pred must_base_decision_on_commentable_elements/1, gloss('authority must base decisions only on elements parties could comment on'), source('celex:32024R1689/oj#art_100').
:- pred complainant_associated_with_proceedings/1, gloss('complainant is associated with proceedings'), source('celex:32024R1689/oj#art_100').
:- pred rights_of_defence_respected/1, gloss('rights of defence are respected in proceedings'), source('celex:32024R1689/oj#art_100').
:- pred entitled_to_file_access/2, gloss('party entitled to access authority file'), source('celex:32024R1689/oj#art_100').
:- pred subject_to_legitimate_interest_protection/1, gloss('access subject to protection of legitimate interests'), source('celex:32024R1689/oj#art_100').
:- pred funds_contribute_to_general_budget/1, gloss('fine funds contribute to Union general budget'), source('celex:32024R1689/oj#art_100').
:- pred fine_not_affect_effective_operation/2, gloss('fine does not affect effective operation of fined entity'), source('celex:32024R1689/oj#art_100').
:- pred must_notify_annually/2, gloss('authority must notify Commission annually of specified matters'), source('celex:32024R1689/oj#art_100').

may_impose_administrative_fine(european_data_protection_supervisor, Entity) :-
    union_institution_body_office_agency(Entity),
    falls_within_scope(Entity).

administrative_fine_up_to(non_compliance_prohibited_practices(_), eur(1500000)).

administrative_fine_up_to(non_compliance_other_requirements(_), eur(750000)).

non_compliance_prohibited_practices(Entity) :-
    union_institution_body_office_agency(Entity),
    falls_within_scope(Entity).

non_compliance_other_requirements(Entity) :-
    union_institution_body_office_agency(Entity),
    falls_within_scope(Entity).

must_give_opportunity_to_be_heard(european_data_protection_supervisor, Entity) :-
    subject_of_proceedings(european_data_protection_supervisor, Entity).

must_base_decision_on_commentable_elements(european_data_protection_supervisor).

complainant_associated_with_proceedings(Complainant) :-
    subject_of_proceedings(european_data_protection_supervisor, _),
    Complainaint \= none.

rights_of_defence_respected(proceedings(european_data_protection_supervisor, _)).

entitled_to_file_access(Party, european_data_protection_supervisor) :-
    rights_of_defence_respected(proceedings(european_data_protection_supervisor, _)),
    subject_of_proceedings(european_data_protection_supervisor, Party).

subject_to_legitimate_interest_protection(access_to_file).

funds_contribute_to_general_budget(fine_imposed(european_data_protection_supervisor, _, _)).

fine_not_affect_effective_operation(fine_imposed(european_data_protection_supervisor, _, Entity), Entity) :-
    union_institution_body_office_agency(Entity).

must_notify_annually(european_data_protection_supervisor, commission) :-
    imposed_fines(european_data_protection_supervisor, _);
    initiated_litigation(european_data_protection_supervisor, _);
    initiated_judicial_proceedings(european_data_protection_supervisor, _).

provenance(may_impose_administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(administrative_fine_up_to/2, 'celex:32024R1689/oj#art_100').
provenance(non_compliance_prohibited_practices/1, 'celex:32024R1689/oj#art_100').
provenance(non_compliance_other_requirements/1, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_base_decision_on_commentable_elements/1, 'celex:32024R1689/oj#art_100').
provenance(complainant_associated_with_proceedings/1, 'celex:32024R1689/oj#art_100').
provenance(rights_of_defence_respected/1, 'celex:32024R1689/oj#art_100').
provenance(entitled_to_file_access/2, 'celex:32024R1689/oj#art_100').
provenance(subject_to_legitimate_interest_protection/1, 'celex:32024R1689/oj#art_100').
provenance(funds_contribute_to_general_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fine_not_affect_effective_operation/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_annually/2, 'celex:32024R1689/oj#art_100').

references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').
