% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 7024d446ed77acd758f7d18519942f784a6199575a3fc576394c0e21233a0a84
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred may_impose_fine_on_union_institution/2, gloss('European Data Protection Supervisor may impose administrative fine on Union institution'), source('celex:32024R1689/oj#art_100').
:- pred fine_amount_euros/2, gloss('administrative fine amount in euros for infringement'), source('celex:32024R1689/oj#art_100').
:- pred fine_consideration/2, gloss('factor to consider when deciding fine amount'), source('celex:32024R1689/oj#art_100').
:- pred must_give_opportunity_to_be_heard/2, gloss('European Data Protection Supervisor must give opportunity to be heard before decision'), source('celex:32024R1689/oj#art_100').
:- pred must_base_decision_on_commented_elements/2, gloss('decision must be based only on elements parties could comment on'), source('celex:32024R1689/oj#art_100').
:- pred complainant_associated_with_proceedings/1, gloss('complainant shall be associated closely with proceedings'), source('celex:32024R1689/oj#art_100').
:- pred rights_of_defence_respected/1, gloss('rights of defence shall be fully respected in proceedings'), source('celex:32024R1689/oj#art_100').
:- pred entitled_to_access_file/2, gloss('party entitled to access file subject to protection of personal data or business secrets'), source('celex:32024R1689/oj#art_100').
:- pred funds_contribute_to_union_budget/1, gloss('fines collected contribute to general budget of the Union'), source('celex:32024R1689/oj#art_100').
:- pred fine_does_not_affect_operation/2, gloss('fine shall not affect effective operation of fined institution'), source('celex:32024R1689/oj#art_100').
:- pred must_notify_commission_of_fines/2, gloss('European Data Protection Supervisor must notify Commission annually of fines imposed'), source('celex:32024R1689/oj#art_100').
:- pred initiated_litigation_or_judicial_proceedings/1, gloss('litigation or judicial proceedings initiated by European Data Protection Supervisor'), source('celex:32024R1689/oj#art_100').

may_impose_fine_on_union_institution(edps, U) :-
    union_institution(U).

fine_amount_euros(non_compliance_art_5(U), 1500000) :-
    union_institution(U),
    non_compliance_art_5(U).

fine_amount_euros(non_compliance_other_requirements(U), 750000) :-
    union_institution(U),
    non_compliance_harmonised_standards(U).

fine_amount_euros(non_compliance_other_requirements(U), 750000) :-
    union_institution(U),
    \+ non_compliance_art_5(U),
    non_compliance_art_50(U).

fine_consideration(U, nature_of_infringement(U)).
fine_consideration(U, gravity_of_infringement(U)).
fine_consideration(U, duration_of_infringement(U)).
fine_consideration(U, consequences_of_infringement(U)).
fine_consideration(U, purpose_of_ai_system(S)) :-
    union_institution(U),
    ai_system(S),
    concerned(S, U).
fine_consideration(U, number_of_affected_persons(U)).
fine_consideration(U, level_of_damage_suffered(U)).
fine_consideration(U, degree_of_responsibility(U)).
fine_consideration(U, technical_and_organisational_measures(U)).
fine_consideration(U, action_taken(U, mitigate_damage)).
fine_consideration(U, degree_of_cooperation_with_edps(U)).
fine_consideration(U, compliance_with_previous_measures(U)).
fine_consideration(U, similar_previous_infringements(U)).
fine_consideration(U, manner_infringement_became_known(U)).
fine_consideration(U, notification_of_infringement(U)).
fine_consideration(U, annual_budget(U)).

must_give_opportunity_to_be_heard(edps, U) :-
    union_institution(U),
    proceedings_conducted_by(edps, U).

must_base_decision_on_commented_elements(edps, U) :-
    union_institution(U),
    proceedings_conducted_by(edps, U).

complainant_associated_with_proceedings(C) :-
    complainant(C).

rights_of_defence_respected(U) :-
    union_institution(U),
    party_concerned(U).

entitled_to_access_file(U, edps_file) :-
    union_institution(U),
    party_concerned(U),
    \+ legitimate_interest_individuals_or_undertakings_prevents_access.

funds_contribute_to_union_budget(funds(art_100)).

fine_does_not_affect_operation(Fine, U) :-
    union_institution(U),
    fine_imposed_under(Fine, art_100).

must_notify_commission_of_fines(edps, fines(art_100)) :-
    annually.

must_notify_commission_of_fines(edps, litigation_or_proceedings(art_100)) :-
    annually,
    initiated_litigation_or_judicial_proceedings(edps).

provenance(may_impose_fine_on_union_institution/2, 'celex:32024R1689/oj#art_100').
provenance(fine_amount_euros/2, 'celex:32024R1689/oj#art_100').
provenance(fine_consideration/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_base_decision_on_commented_elements/2, 'celex:32024R1689/oj#art_100').
provenance(complainant_associated_with_proceedings/1, 'celex:32024R1689/oj#art_100').
provenance(rights_of_defence_respected/1, 'celex:32024R1689/oj#art_100').
provenance(entitled_to_access_file/2, 'celex:32024R1689/oj#art_100').
provenance(funds_contribute_to_union_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fine_does_not_affect_operation/2, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_of_fines/2, 'celex:32024R1689/oj#art_100').
provenance(initiated_litigation_or_judicial_proceedings/1, 'celex:32024R1689/oj#art_100').

references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').
