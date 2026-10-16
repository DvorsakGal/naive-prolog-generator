% unit       : celex:32024R1689/oj#art_85
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : 11332cba3866a0993b21b78c8d81cd4e1e146487ba9c5e9aa4480cd8b7a012ee
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6a7b9c31943410a4cbfdcd19b89ef15f831a7c57fc8c67cebd9ac0ce11c8903c
% cached     : False
% title      : Right to lodge a complaint with a market surveillance authority
:- pred may_submit_complaint/2, gloss('natural or legal person may submit complaint to market surveillance authority'), source('celex:32024R1689/oj#art_85').
:- pred must_take_complaint_into_account/2, gloss('market surveillance authority must take complaint into account for market surveillance activities'), source('celex:32024R1689/oj#art_85').
:- pred must_handle_complaint/2, gloss('market surveillance authority must handle complaint in line with dedicated procedures'), source('celex:32024R1689/oj#art_85').

may_submit_complaint(Person, Authority) :-
    (   natural_person(Person)
    ;   legal_person(Person)
    ),
    has_grounds_to_consider_infringement(Person),
    market_surveillance_authority(Authority).

must_take_complaint_into_account(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    complaint(Complaint),
    market_surveillance_activities(Activities),
    purpose(Complaint, Activities).

must_handle_complaint(Authority, Complaint) :-
    market_surveillance_authority(Authority),
    complaint(Complaint),
    dedicated_procedures(Procedures),
    established_by(Procedures, Authority),
    in_line_with(Complaint, Procedures).

provenance(may_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(must_take_complaint_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(must_handle_complaint/2, 'celex:32024R1689/oj#art_85').

references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').
