% unit       : celex:32024R1689/oj#art_63
% title      : Derogations for specific operators
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : d94dfd8865e8ac74711c203a1e3f75f2e8430431377dc8c40bff16418e24d26e
% model      : gpt-oss:120b-cloud
% prompt sha : d57f48c8e9f7930fe475c8de5bfc902ca5315ce254fa856b99e94c9201ddc660
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred microenterprise/1, gloss('microenterprise as defined in the relevant Union recommendation'), source('celex:32024R1689/oj#art_63').
:- pred permitted_simplified_quality_management/1, gloss('permission for microenterprises to comply with elements of the quality management system in a simplified manner'), source('celex:32024R1689/oj#art_63').
:- pred partner_or_linked_enterprise_exists/1, gloss('microenterprise has a partner or linked enterprise'), source('celex:32024R1689/oj#art_63').
:- pred prohibited_exemption_from_other_requirements/1, gloss('prohibition on exempting microenterprises from any other requirements or obligations'), source('celex:32024R1689/oj#art_63').

permitted_simplified_quality_management(M) :-
    microenterprise(M),
    \+ partner_or_linked_enterprise_exists(M).

partner_or_linked_enterprise_exists(M) :-
    has_partner_enterprise(M, _).

partner_or_linked_enterprise_exists(M) :-
    has_linked_enterprise(M, _).

prohibited_exemption_from_other_requirements(M) :-
    microenterprise(M).

provenance(permitted_simplified_quality_management/1, 'celex:32024R1689/oj#art_63').
provenance(partner_or_linked_enterprise_exists/1, 'celex:32024R1689/oj#art_63').
provenance(prohibited_exemption_from_other_requirements/1, 'celex:32024R1689/oj#art_63').

references('celex:32024R1689/oj#art_63', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_63/par_1').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_63', 'celex:32024R1689/oj#art_73').
