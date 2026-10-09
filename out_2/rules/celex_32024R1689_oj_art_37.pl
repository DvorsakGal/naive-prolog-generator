% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 11f7bda3401cf0c6aad5380a3d9d92b5c3ebf94e06b36661325cdd05aced52b0
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred must_investigate/2, gloss('Commission investigates cases where competence of a notified body is doubted or its continued fulfilment of requirements is in question'), source('celex:32024R1689/oj#art_37').
:- pred must_provide/2, gloss('Notifying authority provides the Commission with relevant information on request'), source('celex:32024R1689/oj#art_37').
:- pred must_treat_confidentially/2, gloss('Commission treats sensitive information obtained from investigations as confidential'), source('celex:32024R1689/oj#art_37').
:- pred must_inform/2, gloss('Commission informs the notifying Member State that a notified body does not meet the requirements'), source('celex:32024R1689/oj#art_37').
:- pred must_request/2, gloss('Commission requests the notifying Member State to take necessary corrective measures'), source('celex:32024R1689/oj#art_37').
:- pred permitted_suspend_designation/1, gloss('Commission may suspend the designation of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred permitted_restrict_designation/1, gloss('Commission may restrict the designation of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred permitted_withdraw_designation/1, gloss('Commission may withdraw the designation of a notified body'), source('celex:32024R1689/oj#art_37').

% auxiliary predicates introduced for conditions
:- pred competence_doubt_applies/1, gloss('There are reasons to doubt the competence of the notified body'), source('celex:32024R1689/oj#art_37').
:- pred requirements_fulfilment_applies/1, gloss('The notified body continues to fulfil the requirements laid down'), source('celex:32024R1689/oj#art_37').
:- pred does_not_meet_requirements_applies/1, gloss('The notified body does not meet or no longer meets the requirements for its notification'), source('celex:32024R1689/oj#art_37').
:- pred member_state_fails_to_take_measures/1, gloss('The notifying Member State fails to take the necessary corrective measures'), source('celex:32024R1689/oj#art_37').
:- pred provision_subject/2, gloss('Subject of the information to be provided: either the notification or the maintenance of competence of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred sensitive_information_obtained/1, gloss('Sensitive information obtained in the course of investigations'), source('celex:32024R1689/oj#art_37').

% 1. Commission investigates cases where competence is doubted or requirements fulfilment is in question
must_investigate(commission, NB) :-
    notified_body(NB),
    ( competence_doubt_applies(NB)
    ; requirements_fulfilment_applies(NB) ).

provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').

% 2. Notifying authority provides the Commission with relevant information on request
must_provide(Authority, info(commission, Subject)) :-
    notifying_authority(Authority),
    provision_subject(Subject, NB),
    notified_body(NB).

provenance(must_provide/2, 'celex:32024R1689/oj#art_37').

% 3. Commission treats sensitive information obtained in investigations confidentially
must_treat_confidentially(commission, Info) :-
    sensitive_information_obtained(Info).

provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_37').

% 4. Commission informs the notifying Member State and requests corrective measures
must_inform(commission, member_state(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB).

provenance(must_inform/2, 'celex:32024R1689/oj#art_37').

must_request(commission, corrective_measures(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB).

provenance(must_request/2, 'celex:32024R1689/oj#art_37').

% 5. Permission for the Commission to suspend, restrict or withdraw the designation
permitted_suspend_designation(commission(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB),
    member_state_fails_to_take_measures(NB).

provenance(permitted_suspend_designation/1, 'celex:32024R1689/oj#art_37').

permitted_restrict_designation(commission(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB),
    member_state_fails_to_take_measures(NB).

provenance(permitted_restrict_designation/1, 'celex:32024R1689/oj#art_37').

permitted_withdraw_designation(commission(NB)) :-
    notified_body(NB),
    does_not_meet_requirements_applies(NB),
    member_state_fails_to_take_measures(NB).

provenance(permitted_withdraw_designation/1, 'celex:32024R1689/oj#art_37').

% References
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
