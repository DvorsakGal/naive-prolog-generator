% unit       : celex:32024R1689/oj#art_100
% context    : CHAPTER XII PENALTIES
% slice sha  : 4fab55566e90295fb6885cabbea3df1558b6748fbb45f3740ff2b105773f0357
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 56168ea23a65c2893992f50639b55136b0964e2329ee2186304a0815e35acef9
% cached     : False
% title      : Administrative fines on Union institutions, bodies, offices and agencies
:- pred must_consider_circumstances/2, gloss('European Data Protection Supervisor must consider circumstances when deciding on administrative fines'), source('celex:32024R1689/oj#art_100').
:- pred subject_to_fine/2, gloss('infringement subject to administrative fine of up to amount'), source('celex:32024R1689/oj#art_100').
:- pred must_give_opportunity_to_be_heard/2, gloss('European Data Protection Supervisor must give opportunity to be heard before decision'), source('celex:32024R1689/oj#art_100').
:- pred must_respect_rights_of_defence/1, gloss('rights of defence must be respected in proceedings'), source('celex:32024R1689/oj#art_100').
:- pred must_notify_commission/2, gloss('European Data Protection Supervisor must notify Commission of fines and proceedings'), source('celex:32024R1689/oj#art_100').

must_consider_circumstances(EuropeanDataProtectionSupervisor, fine_decision(UnionInstitution)) :-
    deciding_fine(EuropeanDataProtectionSupervisor, UnionInstitution),
    must_consider(EuropeanDataProtectionSupervisor, nature_gravity_duration(Infringement)),
    must_consider(EuropeanDataProtectionSupervisor, purpose_of_ai_system(System)),
    must_consider(EuropeanDataProtectionSupervisor, affected_persons(Infringement)),
    must_consider(EuropeanDataProtectionSupervisor, damage_suffered(Infringement)),
    must_consider(EuropeanDataProtectionSupervisor, degree_of_responsibility(UnionInstitution)),
    must_consider(EuropeanDataProtectionSupervisor, mitigation_actions(UnionInstitution)),
    must_consider(EuropeanDataProtectionSupervisor, cooperation_with_supervisor(UnionInstitution)),
    must_consider(EuropeanDataProtectionSupervisor, previous_infringements(UnionInstitution)),
    must_consider(EuropeanDataProtectionSupervisor, manner_infringement_became_known(Infringement)),
    must_consider(EuropeanDataProtectionSupervisor, annual_budget(UnionInstitution)).

subject_to_fine(non_compliance(art_5_prohibition), eur(1500000)).
subject_to_fine(non_compliance(other_requirements), eur(750000)).

must_give_opportunity_to_be_heard(EuropeanDataProtectionSupervisor, UnionInstitution) :-
    proceedings_conducted(EuropeanDataProtectionSupervisor, UnionInstitution),
    decision_based_on_commentable_elements(EuropeanDataProtectionSupervisor),
    complainants_associated(EuropeanDataProtectionSupervisor).

must_respect_rights_of_defence(UnionInstitution) :-
    proceedings_conducted(_Supervisor, UnionInstitution),
    access_to_file(UnionInstitution, file_of(EuropeanDataProtectionSupervisor)),
    subject_to_legitimate_interest(UnionInstitution, personal_data),
    subject_to_legitimate_interest(UnionInstitution, business_secrets).

must_notify_commission(EuropeanDataProtectionSupervisor, annual_report) :-
    must_report(EuropeanDataProtectionSupervisor, administrative_fines_imposed),
    must_report(EuropeanDataProtectionSupervisor, litigation_initiated),
    must_report(EuropeanDataProtectionSupervisor, judicial_proceedings_initiated).

provenance(must_consider_circumstances/2, 'celex:32024R1689/oj#art_100').
provenance(subject_to_fine/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/1, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_100').

references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
