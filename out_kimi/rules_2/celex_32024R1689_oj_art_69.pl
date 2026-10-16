% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : ae7c4f830d8da008171bb7de7cf9fbc7198f06deffea5090bf4ab3996ebcfb48
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred may_call_upon_experts/2, gloss('Member States may call upon experts of the scientific panel'), source('celex:32024R1689/oj#art_69').
:- pred fees_required/1, gloss('Member States may be required to pay fees for expert advice'), source('celex:32024R1689/oj#art_69').
:- pred must_facilitate_access/2, gloss('Commission shall facilitate timely access to experts by Member States'), source('celex:32024R1689/oj#art_69').

may_call_upon_experts(MemberState, Expert) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).

fees_required(MemberState) :-
    may_call_upon_experts(MemberState, _Expert).

must_facilitate_access(commission, MemberState) :-
    member_state(MemberState),
    may_call_upon_experts(MemberState, _Expert).

provenance(may_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(fees_required/1, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').

references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_69').
