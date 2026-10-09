% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 267bb7e8670c3de0002403e4205f77a26b51e2be75a60e1a34be1d2c17619d47
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred union_institution_body_agency_applies/1, gloss('union institution, body, office or agency'), source('celex:32024R1689/oj#art_100').
:- pred party_concerned_applies/1, gloss('party concerned in the proceedings'), source('celex:32024R1689/oj#art_100').
:- pred funds_collected_by_fines_applies/1, gloss('funds collected by imposition of fines'), source('celex:32024R1689/oj#art_100').
:- pred notification_due_applies/1, gloss('annual notification due to the Commission'), source('celex:32024R1689/oj#art_100').
:- pred required_fine/1, gloss('administrative fine required for non‑compliance'), source('celex:32024R1689/oj#art_100').
:- pred permitted_impose_administrative_fine/1, gloss('permission to impose an administrative fine'), source('celex:32024R1689/oj#art_100').

% Permission to impose administrative fines
permitted_impose_administrative_fine(impose_administrative_fine(european_data_protection_supervisor, Institution)) :-
    union_institution_body_agency_applies(Institution).

% Duty to give the institution the opportunity of being heard
must_give_hearing(european_data_protection_supervisor, Institution) :-
    union_institution_body_agency_applies(Institution).

% Duty to respect the rights of defence of the parties concerned
must_respect_rights_of_defence(european_data_protection_supervisor, Party) :-
    party_concerned_applies(Party).

% Duty to entitle the parties concerned to access the Supervisor’s file
must_entitle_access_to_file(european_data_protection_supervisor, Party) :-
    party_concerned_applies(Party).

% Duty that funds collected by fines contribute to the general budget
must_contribute_funds_to_general_budget(european_data_protection_supervisor, Funds) :-
    funds_collected_by_fines_applies(Funds).

% Duty that the fine shall not affect the effective operation of the institution
must_not_affect_effective_operation(european_data_protection_supervisor, Institution) :-
    union_institution_body_agency_applies(Institution).

% Duty to notify the Commission annually of the administrative fines imposed
must_notify(Supervisor, commission) :-
    notification_due_applies(Supervisor).

% Annual notification due (fact)
notification_due_applies(european_data_protection_supervisor).

% Required fines for specific non‑compliance
required_fine(non_compliance_prohibition_art5(eur(1500000))).
required_fine(non_compliance_requirements_other_than_art5(eur(750000))).

% Provenance
provenance(permitted_impose_administrative_fine/1, 'celex:32024R1689/oj#art_100').
provenance(must_give_hearing/2, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/2, 'celex:32024R1689/oj#art_100').
provenance(must_entitle_access_to_file/2, 'celex:32024R1689/oj#art_100').
provenance(must_contribute_funds_to_general_budget/2, 'celex:32024R1689/oj#art_100').
provenance(must_not_affect_effective_operation/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify/2, 'celex:32024R1689/oj#art_100').
provenance(notification_due_applies/1, 'celex:32024R1689/oj#art_100').
provenance(required_fine/1, 'celex:32024R1689/oj#art_100').

% References
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').
