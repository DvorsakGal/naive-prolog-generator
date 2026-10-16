% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 3cc5c665a538a0912e3465f35184142c500d7b740c65acbab515fb75172a759b
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_100').
:- pred union_institution_body_office_or_agency/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_100').
:- pred administrative_fine/2, gloss('administrative fine of a given amount imposed on an entity'), source('celex:32024R1689/oj#art_100').
:- pred may_impose_administrative_fine/2, gloss('EDPS may impose administrative fine on entity'), source('celex:32024R1689/oj#art_100').
:- pred relevant_circumstance_for_fine/1, gloss('circumstance to be taken into account when deciding on administrative fine'), source('celex:32024R1689/oj#art_100').
:- pred nature_gravity_duration_of_infringement/1, gloss('nature, gravity and duration of the infringement and its consequences'), source('celex:32024R1689/oj#art_100').
:- pred degree_of_responsibility/1, gloss('degree of responsibility taking into account technical and organisational measures'), source('celex:32024R1689/oj#art_100').
:- pred action_to_mitigate_damage/1, gloss('action taken to mitigate damage suffered by affected persons'), source('celex:32024R1689/oj#art_100').
:- pred degree_of_cooperation_with_edps/1, gloss('degree of cooperation with EDPS to remedy infringement and mitigate adverse effects'), source('celex:32024R1689/oj#art_100').
:- pred similar_previous_infringements/1, gloss('similar previous infringements by the entity'), source('celex:32024R1689/oj#art_100').
:- pred manner_infringement_became_known/1, gloss('manner in which infringement became known to EDPS, including whether and to what extent entity notified'), source('celex:32024R1689/oj#art_100').
:- pred annual_budget/1, gloss('annual budget of the entity'), source('celex:32024R1689/oj#art_100').
:- pred fine_amount_limit/2, gloss('maximum administrative fine amount for a category of infringement'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_with_prohibition_fine_limit/1, gloss('fine limit for non-compliance with Article 5 prohibition'), source('celex:32024R1689/oj#art_100').
:- pred non_compliance_with_other_requirements_fine_limit/1, gloss('fine limit for non-compliance with other requirements or obligations'), source('celex:32024R1689/oj#art_100').
:- pred opportunity_to_be_heard/2, gloss('EDPS gives entity opportunity to be heard before taking decision'), source('celex:32024R1689/oj#art_100').
:- pred decisions_based_only_on_commented_elements/1, gloss('EDPS bases decisions only on elements and circumstances on which parties have been able to comment'), source('celex:32024R1689/oj#art_100').
:- pred complainants_associated_with_proceedings/1, gloss('complainants are associated closely with the proceedings'), source('celex:32024R1689/oj#art_100').
:- pred rights_of_defence_respected/1, gloss('rights of defence of parties concerned are fully respected'), source('celex:32024R1689/oj#art_100').
:- pred access_to_file/1, gloss('parties entitled to access EDPS file subject to legitimate interests'), source('celex:32024R1689/oj#art_100').
:- pred fines_contribute_to_union_budget/1, gloss('funds collected by fines contribute to general budget of the Union'), source('celex:32024R1689/oj#art_100').
:- pred fines_do_not_affect_effective_operation/1, gloss('fines do not affect effective operation of the fined entity'), source('celex:32024R1689/oj#art_100').
:- pred must_notify_commission_annually/2, gloss('EDPS must notify Commission annually of fines imposed and litigation initiated'), source('celex:32024R1689/oj#art_100').

european_data_protection_supervisor(edps).

union_institution_body_office_or_agency(E) :-
    union_institution(E).
union_institution_body_office_or_agency(E) :-
    union_body(E).
union_institution_body_office_or_agency(E) :-
    union_office(E).
union_institution_body_office_or_agency(E) :-
    union_agency(E).

may_impose_administrative_fine(edps, E) :-
    union_institution_body_office_or_agency(E),
    in_scope_of_regulation(E).

relevant_circumstance_for_fine(nature_gravity_duration_of_infringement(C)) :-
    nature_gravity_duration(C).
relevant_circumstance_for_fine(degree_of_responsibility(C)) :-
    degree_of_responsibility(C).
relevant_circumstance_for_fine(action_to_mitigate_damage(C)) :-
    action_to_mitigate_damage(C).
relevant_circumstance_for_fine(degree_of_cooperation_with_edps(C)) :-
    degree_of_cooperation_with_edps(C).
relevant_circumstance_for_fine(similar_previous_infringements(C)) :-
    similar_previous_infringements(C).
relevant_circumstance_for_fine(manner_infringement_became_known(C)) :-
    manner_infringement_became_known(C).
relevant_circumstance_for_fine(annual_budget(C)) :-
    annual_budget(C).

fine_amount_limit(non_compliance_with_prohibition, eur(1500000)).
fine_amount_limit(non_compliance_with_other_requirements, eur(750000)).

non_compliance_with_prohibition_fine_limit(eur(1500000)).

non_compliance_with_other_requirements_fine_limit(eur(750000)).

administrative_fine(E, Amount) :-
    non_compliance_with_prohibition(E),
    Amount =< eur(1500000).

administrative_fine(E, Amount) :-
    non_compliance_with_other_requirements(E),
    Amount =< eur(750000).

opportunity_to_be_heard(edps, E) :-
    subject_of_proceedings(E, edps),
    before_decision(edps, E).

decisions_based_only_on_commented_elements(edps).

complainants_associated_with_proceedings(P) :-
    complainant(C),
    associated_with_proceedings(C, P).

rights_of_defence_respected(P) :-
    party_concerned(P).

access_to_file(P) :-
    party_concerned(P),
    \+ legitimate_interest_excludes_access(P).

fines_contribute_to_union_budget(F) :-
    administrative_fine(_E, F).

fines_do_not_affect_effective_operation(E) :-
    administrative_fine(E, _Amount).

must_notify_commission_annually(edps, notification(fines_imposed, litigation_initiated)).

provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_100').
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_100').
provenance(administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(may_impose_administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(relevant_circumstance_for_fine/1, 'celex:32024R1689/oj#art_100').
provenance(nature_gravity_duration_of_infringement/1, 'celex:32024R1689/oj#art_100').
provenance(degree_of_responsibility/1, 'celex:32024R1689/oj#art_100').
provenance(action_to_mitigate_damage/1, 'celex:32024R1689/oj#art_100').
provenance(degree_of_cooperation_with_edps/1, 'celex:32024R1689/oj#art_100').
provenance(similar_previous_infringements/1, 'celex:32024R1689/oj#art_100').
provenance(manner_infringement_became_known/1, 'celex:32024R1689/oj#art_100').
provenance(annual_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fine_amount_limit/2, 'celex:32024R1689/oj#art_100').
provenance(non_compliance_with_prohibition_fine_limit/1, 'celex:32024R1689/oj#art_100').
provenance(non_compliance_with_other_requirements_fine_limit/1, 'celex:32024R1689/oj#art_100').
provenance(opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(decisions_based_only_on_commented_elements/1, 'celex:32024R1689/oj#art_100').
provenance(complainants_associated_with_proceedings/1, 'celex:32024R1689/oj#art_100').
provenance(rights_of_defence_respected/1, 'celex:32024R1689/oj#art_100').
provenance(access_to_file/1, 'celex:32024R1689/oj#art_100').
provenance(fines_contribute_to_union_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fines_do_not_affect_effective_operation/1, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_annually/2, 'celex:32024R1689/oj#art_100').

references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').
