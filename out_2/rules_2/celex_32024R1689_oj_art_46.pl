% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 884efeb6c5edfb4df4cc27dccdebafcc9c166334f88254f040d39f2b8605149d
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred specific_high_risk_ai_system/1, gloss('specific high‑risk AI system'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason/1, gloss('exceptional reason for derogation'), source('celex:32024R1689/oj#art_46').
:- pred urgent_situation/1, gloss('urgently justified situation'), source('celex:32024R1689/oj#art_46').
:- pred civil_protection_authority/1, gloss('civil protection authority'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_issued_by/2, gloss('authorisation issued by authority for system'), source('celex:32024R1689/oj#art_46').
:- pred receipt_of_information/2, gloss('receipt of information by authority'), source('celex:32024R1689/oj#art_46').
:- pred objection_raised/2, gloss('objection raised by member state or commission'), source('celex:32024R1689/oj#art_46').
:- pred within_15_days/1, gloss('within 15 calendar days'), source('celex:32024R1689/oj#art_46').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_46').
:- pred product_covered_by_union_harmonisation_legislation/1, gloss('product covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_46').

authorise_placing_on_market(Authority, System) :-
    market_surveillance_authority(Authority),
    specific_high_risk_ai_system(System),
    exceptional_reason(_Reason).

authorise_putting_into_service(Authority, System) :-
    market_surveillance_authority(Authority),
    specific_high_risk_ai_system(System),
    exceptional_reason(_Reason).

put_into_service(Authority, System) :-
    (law_enforcement_authority(Authority) ; civil_protection_authority(Authority)),
    specific_high_risk_ai_system(System),
    urgent_situation(_Situation).

must_inform(Authority, authorisation_issued(System)) :-
    market_surveillance_authority(Authority),
    authorisation_issued_by(Authority, System),
    \+ sensitive_operational_data(_).

justified_authorisation(System) :-
    authorisation_issued_by(Authority, System),
    receipt_of_information(Authority, Info),
    within_15_days(Info),
    \+ objection_raised(_, Info).

must_consult(Commission, Authority) :-
    commission(Commission),
    objection_raised(Authority, _).

must_decide_justification(Commission, System) :-
    commission(Commission),
    objection_raised(_, System).

must_withdraw(Authority, System) :-
    market_surveillance_authority(Authority),
    commission_considers_unjustified(System).

prohibited_authorisation_outside_union_harmonisation(System) :-
    high_risk_ai_system(System),
    product_covered_by_union_harmonisation_legislation(System),
    \+ authorisation_issued_by(_, System).

provenance(authorise_placing_on_market/2, 'celex:32024R1689/oj#art_46').
provenance(authorise_putting_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(put_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform/2, 'celex:32024R1689/oj#art_46').
provenance(justified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(must_consult/2, 'celex:32024R1689/oj#art_46').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_46').
provenance(prohibited_authorisation_outside_union_harmonisation/1, 'celex:32024R1689/oj#art_46').

references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_4').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_5').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_6').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').
