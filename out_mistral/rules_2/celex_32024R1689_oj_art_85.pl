% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 33e79aca38503773e5b49f2fff7a5db9ff73b25969b0ae713d7308194a407901
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred may_lodge_complaint/2, gloss('natural or legal person may lodge complaint with market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred complaint_grounds/2, gloss('person has grounds to consider infringement of provisions of the regulation'), source('celex:32024R1689/oj#art_85').
:- pred complaint_taken_into_account/2, gloss('complaint taken into account for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred complaint_handled_per_procedures/2, gloss('complaint handled in line with dedicated procedures by market surveillance authority'), source('celex:32024R1689/oj#art_85').

may_lodge_complaint(Person, Authority) :-
    market_surveillance_authority(Authority),
    complaint_grounds(Person, infringement).

complaint_grounds(Person, infringement) :-
    person(Person).

person(Person) :-
    natural_person(Person).
person(Person) :-
    legal_person(Person).

complaint_taken_into_account(Complaint, market_surveillance_activities) :-
    may_lodge_complaint(_Person, Authority),
    complaint_submitted_to(Complaint, Authority).

complaint_handled_per_procedures(Complaint, Authority) :-
    market_surveillance_authority(Authority),
    complaint_submitted_to(Complaint, Authority),
    dedicated_procedures_established(Authority).

complaint_submitted_to(Complaint, Authority) :-
    may_lodge_complaint(_Person, Authority),
    complaint(Complaint).

complaint(Complaint) :-
    complaint_grounds(_Person, infringement),
    submitted(Complaint).

submitted(Complaint) :-
    complaint(Complaint).

dedicated_procedures_established(Authority) :-
    market_surveillance_authority(Authority).

natural_person(_).
legal_person(_).

provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_grounds/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_taken_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_per_procedures/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').
