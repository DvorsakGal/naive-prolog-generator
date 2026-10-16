% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : a81d9a7b26d231ebb93af9e2a6b733da70787dea32a4b75147200741ff2400d1
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred natural_or_legal_person/1, gloss('entity is a natural or legal person'), source('celex:32024R1689/oj#art_85').
:- pred grounds_to_consider_infringement/2, gloss('person has grounds to consider that there has been an infringement of the regulation'), source('celex:32024R1689/oj#art_85').
:- pred permitted_submit_complaint/2, gloss('person is permitted to submit a complaint to a market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred complaint/1, gloss('complaint submitted regarding infringement'), source('celex:32024R1689/oj#art_85').
:- pred must_take_into_account/2, gloss('authority must take into account complaint for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred must_handle/2, gloss('authority must handle complaint according to dedicated procedures'), source('celex:32024R1689/oj#art_85').

% Paragraph 1: Any natural or legal person having grounds to consider that there
% has been an infringement of this Regulation may submit complaints to the relevant
% market surveillance authority.
permitted_submit_complaint(Person, complaint_to(Authority)) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person, 'celex:32024R1689/oj'),
    market_surveillance_authority(Authority).

% Paragraph 2: Such complaints shall be taken into account for the purpose of
% conducting market surveillance activities...
must_take_into_account(Authority, complaint_for_market_surveillance_activities(Complaint)) :-
    market_surveillance_authority(Authority),
    complaint(Complaint).

% Paragraph 2: ...and shall be handled in line with the dedicated procedures established therefor.
must_handle(Authority, complaint_in_line_with_dedicated_procedures(Complaint)) :-
    market_surveillance_authority(Authority),
    complaint(Complaint).

provenance(permitted_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').
