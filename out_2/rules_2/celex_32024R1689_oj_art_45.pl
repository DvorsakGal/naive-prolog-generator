% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 02978e9933c7bafaac348fd86faf686ef2d1149aae24647f6873a268a05cb80e
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform/2, gloss('obligation of a notified body to inform a party about specific information'), source('celex:32024R1689/oj#art_45').
:- pred must_provide/2, gloss('obligation of a notified body to provide information to other notified bodies'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard/2, gloss('obligation of a notified body to safeguard confidentiality'), source('celex:32024R1689/oj#art_45').

must_inform(NB, inform(notifying_authority, info_a)) :-
    notified_body(NB).

must_inform(NB, inform(notifying_authority, info_b)) :-
    notified_body(NB).

must_inform(NB, inform(notifying_authority, info_c)) :-
    notified_body(NB).

must_inform(NB, inform(notifying_authority, info_d)) :-
    notified_body(NB).

must_inform(NB, inform(notifying_authority, info_e)) :-
    notified_body(NB).

must_inform(NB, inform(other_notified_bodies, info_2a)) :-
    notified_body(NB).

must_inform(NB, inform(other_notified_bodies, info_2b)) :-
    notified_body(NB).

must_provide(NB, provide(other_notified_bodies, conformity_assessment_results(negative, positive_on_request))) :-
    notified_body(NB).

must_safeguard(NB, confidentiality_of(information_obtained)) :-
    notified_body(NB).

provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_45').

references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
