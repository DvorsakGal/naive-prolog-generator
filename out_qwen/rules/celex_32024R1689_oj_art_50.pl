% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ef46d64a5b31a58440038019b7314abf608a5593808138f87180eaa0681d5436
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred must_inform_interaction(Provider, System), gloss('provider must ensure natural persons are informed they interact with AI'), source('celex:32024R1689/oj#art_50').
:- pred must_mark_synthetic_content(Provider, System), gloss('provider must mark synthetic outputs in machine-readable format'), source('celex:32024R1689/oj#art_50').
:- pred must_inform_exposure(Deployer, System), gloss('deployer must inform exposed persons of system operation'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose_deep_fake(Deployer, Content), gloss('deployer must disclose content is artificially generated or manipulated'), source('celex:32024R1689/oj#art_50').
:- pred must_disclose_ai_text(Deployer, Content), gloss('deployer must disclose text is artificially generated when informing public'), source('celex:32024R1689/oj#art_50').
:- pred interaction_obvious(System), gloss('interaction with AI is obvious to a reasonably well-informed person'), source('celex:32024R1689/oj#art_50').
:- pred authorised_for_criminal_offences(System), gloss('system authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred available_to_report_criminal_offence(System), gloss('system available for public to report a criminal offence'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content(System), gloss('system generates synthetic audio, image, video or text'), source('celex:32024R1689/oj#art_50').
:- pred assistive_editing_function(System), gloss('system performs assistive function for standard editing'), source('celex:32024R1689/oj#art_50').
:- pred substantially_alters_input(System), gloss('system substantially alters input data or semantics'), source('celex:32024R1689/oj#art_50').
:- pred deep_fake_content(Content), gloss('content constitutes a deep fake'), source('celex:32024R1689/oj#art_50').
:- pred artistic_or_analogous_work(Content), gloss('content forms part of artistic, creative, satirical, fictional or analogous work'), source('celex:32024R1689/oj#art_50').
:- pred informs_public_on_matters_of_public_interest(Content), gloss('text published to inform public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred human_reviewed_content(Content), gloss('content has undergone human review or editorial control'), source('celex:32024R1689/oj#art_50').
:- pred editorial_responsibility_held(Content), gloss('natural or legal person holds editorial responsibility for publication'), source('celex:32024R1689/oj#art_50').

must_inform_interaction(P, S) :-
    provider(P),
    ai_system(S),
    intended_purpose(S),
    \+ interaction_obvious(S),
    \+ exempt_interaction(S).

exempt_interaction(S) :-
    authorised_for_criminal_offences(S),
    \+ available_to_report_criminal_offence(S).

must_mark_synthetic_content(P, S) :-
    provider(P),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_synthetic_marking(S).

exempt_synthetic_marking(S) :-
    assistive_editing_function(S).
exempt_synthetic_marking(S) :-
    \+ substantially_alters_input(S).
exempt_synthetic_marking(S) :-
    authorised_for_criminal_offences(S).

must_inform_exposure(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    \+ exempt_emotion_or_categorisation(S).
must_inform_exposure(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    \+ exempt_emotion_or_categorisation(S).

exempt_emotion_or_categorisation(S) :-
    authorised_for_criminal_offences(S).

must_disclose_deep_fake(D, C) :-
    deployer(D),
    ai_system(S),
    deep_fake_content(C),
    \+ authorised_for_criminal_offences(S).

must_disclose_ai_text(D, C) :-
    deployer(D),
    ai_system(S),
    informs_public_on_matters_of_public_interest(C),
    \+ authorised_for_criminal_offences(S),
    \+ exempt_editorial_content(C).

exempt_editorial_content(C) :-
    human_reviewed_content(C),
    editorial_responsibility_held(C).

provenance(must_inform_interaction/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark_synthetic_content/2, 'celex:32024R1689/oj#art_50').
provenance(must_inform_exposure/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_ai_text/2, 'celex:32024R1689/oj#art_50').
provenance(interaction_obvious/1, 'celex:32024R1689/oj#art_50').
provenance(authorised_for_criminal_offences/1, 'celex:32024R1689/oj#art_50').
provenance(available_to_report_criminal_offence/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_editing_function/1, 'celex:32024R1689/oj#art_50').
provenance(substantially_alters_input/1, 'celex:32024R1689/oj#art_50').
provenance(deep_fake_content/1, 'celex:32024R1689/oj#art_50').
provenance(artistic_or_analogous_work/1, 'celex:32024R1689/oj#art_50').
provenance(informs_public_on_matters_of_public_interest/1, 'celex:32024R1689/oj#art_50').
provenance(human_reviewed_content/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility_held/1, 'celex:32024R1689/oj#art_50').

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
