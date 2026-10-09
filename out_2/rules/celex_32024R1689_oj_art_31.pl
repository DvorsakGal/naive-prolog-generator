% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f5362b181d0e932a24229815cc74dfb755fd74c816be870552fb3618ff931c77
% cached     : False
% title      : Requirements relating to notified bodies
:- pred must_establish/2, gloss('notified body must be established under national law'), source('celex:32024R1689/oj#art_31').
:- pred must_have/2, gloss('notified body must have the specified attribute'), source('celex:32024R1689/oj#art_31').
:- pred must_satisfy/2, gloss('notified body must satisfy the given requirements'), source('celex:32024R1689/oj#art_31').
:- pred must_be_independent/2, gloss('notified body must be independent of the specified party'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_involvement_in_design_development_marketing_use/1, gloss('notified body must not be involved in design, development, marketing or use of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_conflict_of_interest/1, gloss('notified body must not engage in activities that could conflict with its independence or integrity'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_consultancy_services/1, gloss('notified body must not provide consultancy services that could affect its independence'), source('celex:32024R1689/oj#art_31').
:- pred must_safeguard/2, gloss('notified body must safeguard the listed quality'), source('celex:32024R1689/oj#art_31').
:- pred must_document/2, gloss('notified body must document and implement the listed procedures'), source('celex:32024R1689/oj#art_31').
:- pred must_maintain/2, gloss('notified body must maintain the listed confidentiality'), source('celex:32024R1689/oj#art_31').
:- pred must_observe/2, gloss('notified body must observe the listed professional secrecy'), source('celex:32024R1689/oj#art_31').
:- pred must_consider/2, gloss('notified body must take due account of the listed provider characteristics'), source('celex:32024R1689/oj#art_31').
:- pred must_take_out/2, gloss('notified body must take out the listed insurance'), source('celex:32024R1689/oj#art_31').
:- pred must_be_capable/2, gloss('notified body must be capable of the listed performance'), source('celex:32024R1689/oj#art_31').
:- pred must_participate/2, gloss('notified body must participate in the listed activities'), source('celex:32024R1689/oj#art_31').
:- pred must_be_represented/2, gloss('notified body must be represented in the listed organisations'), source('celex:32024R1689/oj#art_31').

must_establish(NB, national_law) :-
    notified_body(NB).

must_have(NB, legal_personality) :-
    notified_body(NB).

must_satisfy(NB, organisational_requirements) :-
    notified_body(NB).
must_satisfy(NB, quality_management_requirements) :-
    notified_body(NB).
must_satisfy(NB, resources_requirements) :-
    notified_body(NB).
must_satisfy(NB, process_requirements) :-
    notified_body(NB).
must_satisfy(NB, cybersecurity_requirements) :-
    notified_body(NB).

must_be_independent(NB, Provider) :-
    notified_body(NB),
    provider(Provider).

must_be_independent(NB, Operator) :-
    notified_body(NB),
    operator(Operator).

prohibited_involvement_in_design_development_marketing_use(NB) :-
    notified_body(NB).

prohibited_conflict_of_interest(NB) :-
    notified_body(NB).

prohibited_consultancy_services(NB) :-
    notified_body(NB).

must_safeguard(NB, independence) :-
    notified_body(NB).
must_safeguard(NB, objectivity) :-
    notified_body(NB).
must_safeguard(NB, impartiality) :-
    notified_body(NB).

must_document(NB, impartiality_procedures) :-
    notified_body(NB).

must_maintain(NB, confidentiality) :-
    notified_body(NB).

must_observe(NB, professional_secrecy) :-
    notified_body(NB).

must_consider(NB, provider_characteristics) :-
    notified_body(NB).

must_take_out(NB, liability_insurance) :-
    notified_body(NB).

must_be_capable(NB, integrity_and_competence) :-
    notified_body(NB).

must_have(NB, sufficient_internal_competences) :-
    notified_body(NB).

must_participate(NB, coordination_activities) :-
    notified_body(NB).

must_be_represented(NB, european_standardisation) :-
    notified_body(NB).

provenance(must_establish/2, 'celex:32024R1689/oj#art_31').
provenance(must_have/2, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent/2, 'celex:32024R1689/oj#art_31').
provenance(prohibited_involvement_in_design_development_marketing_use/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_31').
provenance(must_document/2, 'celex:32024R1689/oj#art_31').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_31').
provenance(must_observe/2, 'celex:32024R1689/oj#art_31').
provenance(must_consider/2, 'celex:32024R1689/oj#art_31').
provenance(must_take_out/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_capable/2, 'celex:32024R1689/oj#art_31').
provenance(must_participate/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_represented/2, 'celex:32024R1689/oj#art_31').

references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
