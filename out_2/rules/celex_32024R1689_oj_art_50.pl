% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 721b5fa93fb448dcb9c8afa69a1dfd1888bde5c59ac454425dd52b3c5276dee9
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred direct_interaction_with_natural_persons_applies/1, gloss('AI system intended to interact directly with natural persons'), source('celex:32024R1689/oj#art_50').
:- pred obvious_interaction/1, gloss('Interaction is obvious to a reasonably well‑informed, observant and circumspect natural person'), source('celex:32024R1689/oj#art_50').
:- pred authorised_by_law/1, gloss('AI system authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content/1, gloss('AI system generates synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred assistive_editing_function_applies/1, gloss('AI system performs an assistive function for standard editing and does not substantially alter the input data'), source('celex:32024R1689/oj#art_50').
:- pred generated_text_for_public_interest/1, gloss('AI‑generated text published with the purpose of informing the public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred human_review/1, gloss('AI‑generated content has undergone a process of human review or editorial control'), source('celex:32024R1689/oj#art_50').
:- pred first_interaction_time/1, gloss('Time of the first interaction or exposure of the natural person with the AI system'), source('celex:32024R1689/oj#art_50').
:- pred codes_of_practice/1, gloss('Codes of practice at Union level for transparency obligations'), source('celex:32024R1689/oj#art_50').

:- pred must_ensure/2, gloss('Actor must ensure the specified object'), source('celex:32024R1689/oj#art_50').
:- pred must_inform/2, gloss('Actor must inform the natural persons about the specified object'), source('celex:32024R1689/oj#art_50').
:- pred must_process/2, gloss('Actor must process personal data in accordance with applicable law'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose/2, gloss('Actor must disclose the specified artificial generation or manipulation'), source('celex:32024R1689/oj#art_50').
:- pred must_provide/2, gloss('Actor must provide the specified transparency information'), source('celex:32024R1689/oj#art_50').
:- pred must_encourage/2, gloss('Actor must encourage the specified activity'), source('celex:32024R1689/oj#art_50').
:- pred must_facilitate/2, gloss('Actor must facilitate the specified activity'), source('celex:32024R1689/oj#art_50').
:- pred must_adopt/2, gloss('Actor must adopt the specified implementing act'), source('celex:32024R1689/oj#art_50').

must_ensure(P, inform_natural_persons(S)) :-
    provider(P),
    ai_system(S),
    direct_interaction_with_natural_persons_applies(S),
    \+ obvious_interaction(S),
    \+ authorised_by_law(S).

must_ensure(P, mark_outputs(S)) :-
    provider(P),
    ai_system(S),
    generates_synthetic_content(S),
    \+ assistive_editing_function_applies(S),
    \+ authorised_by_law(S).

must_ensure(P, effective_technical_solution(S)) :-
    provider(P),
    ai_system(S),
    generates_synthetic_content(S),
    \+ assistive_editing_function_applies(S),
    \+ authorised_by_law(S).

must_inform(D, operation_of_system(S)) :-
    deployer(D),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ authorised_by_law(S).

must_process(D, personal_data_compliance(S)) :-
    deployer(D),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ authorised_by_law(S).

must_disclose(D, deep_fake_content(S)) :-
    deployer(D),
    ai_system(S),
    deep_fake(S),
    \+ authorised_by_law(S).

must_disclose(D, generated_text(S)) :-
    deployer(D),
    ai_system(S),
    generated_text_for_public_interest(S),
    \+ authorised_by_law(S),
    \+ human_review(S).

must_provide(A, transparency_information(S)) :-
    (provider(A) ; deployer(A)),
    ai_system(S),
    ( direct_interaction_with_natural_persons_applies(S)
    ; generates_synthetic_content(S)
    ; emotion_recognition_system(S)
    ; biometric_categorisation_system(S)
    ; deep_fake(S)
    ; generated_text_for_public_interest(S)
    ),
    first_interaction_time(S).

must_encourage(ai_office, codes_of_practice).
must_facilitate(ai_office, codes_of_practice).

must_adopt(commission, implementing_act(codes_of_practice)).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_process/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_provide/2, 'celex:32024R1689/oj#art_50').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_50').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_50').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_50').

references('celex:32024R1689/oj#art_50', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_98/par_2').
