% unit       : celex:32024R1689/oj#art_66
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 3fc1c45f04cf4bd437ce8dcffdc0069d2735c7e81bf78d27607ef934b72b4809
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 387614076498e204b74147533fe995387ea6064170059982e4f85c917812b21b
% cached     : False
% title      : Tasks of the Board
:- pred european_artificial_intelligence_board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_66').
:- pred permitted_task/2, gloss('An entity is permitted to perform a specific task'), source('celex:32024R1689/oj#art_66').

% The Board shall advise and assist the Commission and the Member States
must_advise(Board, commission) :-
    european_artificial_intelligence_board(Board).

must_advise(Board, member_states) :-
    european_artificial_intelligence_board(Board).

must_assist(Board, commission) :-
    european_artificial_intelligence_board(Board).

must_assist(Board, member_states) :-
    european_artificial_intelligence_board(Board).

% (a) coordination and joint activities
permitted_task(Board, coordinate_national_competent_authorities) :-
    european_artificial_intelligence_board(Board).

permitted_task(Board, support_joint_activities(market_surveillance_authorities)) :-
    european_artificial_intelligence_board(Board).

% (b) expertise and best practices
permitted_task(Board, share_expertise_and_best_practices) :-
    european_artificial_intelligence_board(Board).

% (c) advice on implementation and enforcement
permitted_task(Board, advise_implementation(enforcement_general_purpose_ai_models)) :-
    european_artificial_intelligence_board(Board).

% (d) harmonisation of administrative practices
permitted_task(Board, harmonise_administrative_practices) :-
    european_artificial_intelligence_board(Board).

% (e) issue recommendations and opinions
permitted_task(Board, issue_recommendations_and_opinions) :-
    european_artificial_intelligence_board(Board).

% (f) promote AI literacy and awareness
permitted_task(Board, support_promoting_ai_literacy) :-
    european_artificial_intelligence_board(Board).

% (g) facilitate shared understanding and benchmarks
permitted_task(Board, develop_common_criteria_and_benchmarks) :-
    european_artificial_intelligence_board(Board).

% (h) cooperate with Union bodies and networks
permitted_task(Board, cooperate_with_union_bodies) :-
    european_artificial_intelligence_board(Board).

% (i) cooperate with third countries and international organisations
permitted_task(Board, cooperate_internationally) :-
    european_artificial_intelligence_board(Board).

% (j) assist in developing expertise and training
permitted_task(Board, assist_developing_expertise_and_training) :-
    european_artificial_intelligence_board(Board).

% (k) assist AI Office on sandboxes
permitted_task(Board, assist_ai_office_sandboxes) :-
    european_artificial_intelligence_board(Board).

% (l) guidance documents
permitted_task(Board, advise_on_guidance_documents) :-
    european_artificial_intelligence_board(Board).

% (m) international matters
permitted_task(Board, advise_commission_international_matters) :-
    european_artificial_intelligence_board(Board).

% (n) opinions on qualified alerts
permitted_task(Board, provide_opinions_on_qualified_alerts(commission)) :-
    european_artificial_intelligence_board(Board).

% (o) receive opinions on qualified alerts and national experiences
permitted_task(Board, receive_opinions_from_member_states) :-
    european_artificial_intelligence_board(Board).

% Provenance
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_66').
provenance(must_advise/2, 'celex:32024R1689/oj#art_66').
provenance(must_assist/2, 'celex:32024R1689/oj#art_66').
provenance(permitted_task/2, 'celex:32024R1689/oj#art_66').

% References
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_66', 'celex:32024R1689/oj#art_5').
