% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e1e825114d7562548a6f8a924ac5db7a666b785d42514eedb8c583437ddd4297
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred permitted_lodge_complaint/1, gloss('Person permitted to lodge a complaint to the relevant market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred natural_or_legal_person/1, gloss('Entity is a natural or legal person'), source('celex:32024R1689/oj#art_85').
:- pred grounds_to_consider_infringement/1, gloss('Person has grounds to consider that there has been an infringement of the AI Regulation'), source('celex:32024R1689/oj#art_85').
:- pred complaint_to_market_surveillance_authority/2, gloss('Complaint lodged by a person to a market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred must_take_into_account/2, gloss('Authority must take into account an object for a specific purpose'), source('celex:32024R1689/oj#art_85').
:- pred must_handle/2, gloss('Authority must handle an object in accordance with dedicated procedures'), source('celex:32024R1689/oj#art_85').

% Natural or legal person having grounds to consider infringement may submit complaints
permitted_lodge_complaint(Person) :-
    natural_or_legal_person(Person),
    grounds_to_consider_infringement(Person).

% Complaints shall be taken into account for conducting market surveillance activities
must_take_into_account(Authority, market_surveillance_activities(Complaint)) :-
    market_surveillance_authority(Authority),
    complaint_to_market_surveillance_authority(Complaint, Authority).

% Complaints shall be handled in line with dedicated procedures
must_handle(Authority, dedicated_procedures(Complaint)) :-
    market_surveillance_authority(Authority),
    complaint_to_market_surveillance_authority(Complaint, Authority).

provenance(permitted_lodge_complaint/1, 'celex:32024R1689/oj#art_85').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').
