% unit       : celex:32024R1689/oj#art_97
% title      : Exercise of the delegation
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : gpt-oss:120b-cloud
% prompt sha : 53bcc8c6d6ab275ab1b863f68a5b184f7af5d63bab42877361d62fc8df606e67
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_97').
:- pred european_parliament/1, gloss('European Parliament'), source('celex:32024R1689/oj#art_97').
:- pred council/1, gloss('Council of the European Union'), source('celex:32024R1689/oj#art_97').
:- pred delegated_act/1, gloss('act adopted under delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred delegation_of_power/1, gloss('delegation of power to adopt delegated acts'), source('celex:32024R1689/oj#art_97').
:- pred revocation_decision/1, gloss('decision revoking delegation of power'), source('celex:32024R1689/oj#art_97').

:- pred delegated_act_adoption_power/1, gloss('power to adopt delegated acts'), source('celex:32024R1689/oj#art_97').
:- pred required_confer_power/2, gloss('require conferral of power'), source('celex:32024R1689/oj#art_97').
:- pred must_draw_up_report/3, gloss('obligation to draw up report'), source('celex:32024R1689/oj#art_97').
:- pred permitted_tacit_extension/1, gloss('tacit extension of delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred no_objection_by/2, gloss('no objection expressed by entity'), source('celex:32024R1689/oj#art_97').
:- pred within_three_months_before_end/1, gloss('period within three months before end of delegation'), source('celex:32024R1689/oj#art_97').
:- pred permitted_revocation/2, gloss('revocation of delegation may be performed by entity'), source('celex:32024R1689/oj#art_97').
:- pred revoker_is_european_parliament/1, gloss('entity is the European Parliament'), source('celex:32024R1689/oj#art_97').
:- pred revoker_is_council/1, gloss('entity is the Council'), source('celex:32024R1689/oj#art_97').
:- pred must_end_delegation/2, gloss('obligation to end delegation after revocation'), source('celex:32024R1689/oj#art_97').
:- pred effect_date_of_revocation/2, gloss('effect date of revocation decision'), source('celex:32024R1689/oj#art_97').
:- pred must_consult_experts_before_adopting/2, gloss('obligation to consult experts before adopting delegated act'), source('celex:32024R1689/oj#art_97').
:- pred must_notify/3, gloss('obligation to notify EP and Council of adopted delegated act'), source('celex:32024R1689/oj#art_97').
:- pred required_entry_into_force/1, gloss('conditions for delegated act to enter into force'), source('celex:32024R1689/oj#art_97').
:- pred both_informed_no_objection_before_expiry/3, gloss('both EP and Council inform no objection before expiry'), source('celex:32024R1689/oj#art_97').
:- pred permitted_extension_of_objection_period/1, gloss('extension of objection period may be initiated by entity'), source('celex:32024R1689/oj#art_97').
:- pred initiator_is_european_parliament/1, gloss('entity is the European Parliament'), source('celex:32024R1689/oj#art_97').
:- pred initiator_is_council/1, gloss('entity is the Council'), source('celex:32024R1689/oj#art_97').

% Facts for the principal entities
commission(commission).
european_parliament(european_parliament).
council(council).

% 1. Power to adopt delegated acts is conferred on the Commission
delegated_act_adoption_power(Commission) :-
    commission(Commission).

provenance(delegated_act_adoption_power/1, 'celex:32024R1689/oj#art_97').

% 2. The power shall be conferred for a period of five years from 1 August 2024
required_confer_power(Commission, delegated_act_adoption) :-
    commission(Commission),
    delegated_act_adoption_power(Commission).

provenance(required_confer_power/2, 'celex:32024R1689/oj#art_97').

% 2. The Commission shall draw up a report not later than nine months before the end of the five‑year period
must_draw_up_report(Commission, delegation_of_power, deadline(nine_months_before_end_of_period)) :-
    commission(Commission),
    delegated_act_adoption_power(Commission).

provenance(must_draw_up_report/3, 'celex:32024R1689/oj#art_97').

% 2. Tacit extension unless opposition is expressed not later than three months before the end of each period
permitted_tacit_extension(Delegation) :-
    delegation_of_power(Delegation),
    no_objection_by(european_parliament, Delegation),
    no_objection_by(council, Delegation),
    within_three_months_before_end(Delegation).

provenance(permitted_tacit_extension/1, 'celex:32024R1689/oj#art_97').

% 3. Revocation may be performed by the European Parliament or the Council
permitted_revocation(Delegation, Revoker) :-
    delegation_of_power(Delegation),
    ( revoker_is_european_parliament(Revoker) ; revoker_is_council(Revoker) ).

revoker_is_european_parliament(european_parliament).
revoker_is_council(council).

provenance(permitted_revocation/2, 'celex:32024R1689/oj#art_97').

% 3. A revocation decision puts an end to the delegation of power
must_end_delegation(RevocationDecision, Delegation) :-
    revocation_decision(RevocationDecision),
    delegation_of_power(Delegation).

provenance(must_end_delegation/2, 'celex:32024R1689/oj#art_97').

% 3. Effect date of revocation: day after publication (or later)
effect_date_of_revocation(RevocationDecision, day_after_publication) :-
    revocation_decision(RevocationDecision).

provenance(effect_date_of_revocation/2, 'celex:32024R1689/oj#art_97').

% 4. Before adopting a delegated act, the Commission shall consult experts designated by each Member State
must_consult_experts_before_adopting(Commission, DelegatedAct) :-
    commission(Commission),
    delegated_act(DelegatedAct).

provenance(must_consult_experts_before_adopting/2, 'celex:32024R1689/oj#art_97').

% 5. As soon as it adopts a delegated act, the Commission shall notify it to the EP and the Council
must_notify(Commission, DelegatedAct, [european_parliament, council]) :-
    commission(Commission),
    delegated_act(DelegatedAct).

provenance(must_notify/3, 'celex:32024R1689/oj#art_97').

% 6. Delegated act enters into force only if no objection within three months, or both EP and Council have informed no objection before expiry
required_entry_into_force(DelegatedAct) :-
    delegated_act(DelegatedAct),
    (   no_objection_by(european_parliament, DelegatedAct),
        no_objection_by(council, DelegatedAct)
    ;   both_informed_no_objection_before_expiry(european_parliament, council, DelegatedAct)
    ).

provenance(required_entry_into_force/1, 'celex:32024R1689/oj#art_97').

% 6. Extension of the objection period may be initiated by EP or Council
permitted_extension_of_objection_period(Initiator) :-
    ( initiator_is_european_parliament(Initiator) ; initiator_is_council(Initiator) ).

initiator_is_european_parliament(european_parliament).
initiator_is_council(council).

provenance(permitted_extension_of_objection_period/1, 'celex:32024R1689/oj#art_97').

% References (deduplicated)
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_47/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_51/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_52/par_4').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_6').
