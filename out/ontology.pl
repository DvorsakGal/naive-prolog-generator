% Naive Prolog ontology of Regulation (EU) 2024/1689 (the AI Act).
% Generated from 285 annotated units.
% One LLM call per unit, no cross-unit reconciliation. See DECISIONS.md.

:- discontiguous applies_to/2.
:- discontiguous condition/2.
:- discontiguous condition/3.
:- discontiguous deadline/2.
:- discontiguous deadline/3.
:- discontiguous definition/2.
:- discontiguous empowered/3.
:- discontiguous exempt/3.
:- discontiguous exemption/3.
:- discontiguous obligation/3.
:- discontiguous penalty/3.
:- discontiguous permission/3.
:- discontiguous power/3.
:- discontiguous prohibition/3.
:- discontiguous references/2.
:- discontiguous requirement/3.
:- discontiguous title/2.
:- discontiguous unit/3.

% ==== celex:32024R1689/oj#art_2/par_1 ====
unit(art_2_par_1, 'celex:32024R1689/oj#art_2/par_1', paragraph).
references(art_2_par_1, 'celex:32024R1689/oj').
applies_to(art_2_par_1, provider).
applies_to(art_2_par_1, deployer).
applies_to(art_2_par_1, importer).
applies_to(art_2_par_1, distributor).
applies_to(art_2_par_1, product_manufacturer).
applies_to(art_2_par_1, authorised_representative).
applies_to(art_2_par_1, affected_person).

% ==== celex:32024R1689/oj#art_3/unp_1/pnt_1 ====
unit(art_3_unp_1_pnt_1, 'celex:32024R1689/oj#art_3/unp_1/pnt_1', point).
definition(ai_system, 'a machine-based system that is designed to operate with varying levels of autonomy and that may exhibit adaptiveness after deployment, and that, for explicit or implicit objectives, infers, from the input it receives, how to generate outputs such as predictions, content, recommendations, or decisions that can influence physical or virtual environments').

% ==== celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b ====
unit(art_3_unp_1_pnt_49_pnt_b, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b', point).
definition(art_3_unp_1_pnt_49_pnt_b, 'a serious and irreversible disruption of the management or operation of critical infrastructure').

% ==== celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c ====
unit(art_3_unp_1_pnt_49_pnt_c, 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c', point).
condition(art_3_unp_1_pnt_49_pnt_c, 'infringement of obligations under Union law intended to protect fundamental rights').

% ==== celex:32024R1689/oj#art_5/par_1/unp_1/pnt_d ====
unit(art_5_par_1_unp_1_pnt_d, 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_d', point).
prohibition(art_5_par_1_unp_1_pnt_d, any, 'the placing on the market, the putting into service for this specific purpose, or the use of an AI system for making risk assessments of natural persons in order to assess or predict the risk of a natural person committing a criminal offence, based solely on the profiling of a natural person or on assessing their personality traits and characteristics').
exemption(art_5_par_1_unp_1_pnt_d, any, 'AI systems used to support the human assessment of the involvement of a person in a criminal activity, which is already based on objective and verifiable facts directly linked to a criminal activity').

% ==== celex:32024R1689/oj#art_5/par_1/unp_1/pnt_g ====
unit(art_5_par_1_unp_1_pnt_g, 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_g', point).
prohibition(art_5_par_1_unp_1_pnt_g, any, 'placing on the market, putting into service for this specific purpose, or use of biometric categorisation systems that categorise individually natural persons based on their biometric data to deduce or infer their race, political opinions, trade union membership, religious or philosophical beliefs, sex life or sexual orientation').
exempt(art_5_par_1_unp_1_pnt_g, any, 'labelling or filtering of lawfully acquired biometric datasets, such as images, based on biometric data or categorising of biometric data in the area of law enforcement').

% ==== celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii ====
unit(art_5_par_1_unp_1_pnt_h_pnt_iii, 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii', point).
references(art_5_par_1_unp_1_pnt_h_pnt_iii, anx_2).
definition(localisation_or_identification, 'the localisation or identification of a person suspected of having committed a criminal offence, for the purpose of conducting a criminal investigation or prosecution or executing a criminal penalty for offences referred to in anx_2 and punishable in the Member State concerned by a custodial sentence or a detention order for a maximum period of at least four years').

% ==== celex:32024R1689/oj#art_5/par_2 ====
unit(art_5_par_2, 'celex:32024R1689/oj#art_5/par_2', paragraph).
references(art_5_par_2, art_5_par_1_unp_1_pnt_h).
references(art_5_par_2, art_27).
references(art_5_par_2, art_49).
obligation(art_5_par_2, law_enforcement_authority, 'deploy real-time remote biometric identification system only to confirm the identity of the specifically targeted individual').
obligation(art_5_par_2, law_enforcement_authority, 'take into account the nature of the situation and the consequences for the rights and freedoms of all persons concerned').
obligation(art_5_par_2, law_enforcement_authority, 'comply with necessary and proportionate safeguards and conditions in accordance with national law authorising the use').
condition(art_5_par_2, 'authorisation only if the law enforcement authority has completed a fundamental rights impact assessment and has registered the system in the EU database').
requirement(art_5_par_2, fundamental_rights_impact_assessment, 'as provided for in art_27').
requirement(art_5_par_2, system_registration, 'in the EU database according to art_49').
exemption(art_5_par_2, law_enforcement_authority, 'in duly justified cases of urgency, the use may be commenced without registration provided that registration is completed without undue delay').

% ==== celex:32024R1689/oj#art_5/par_3 ====
unit(art_5_par_3, 'celex:32024R1689/oj#art_5/par_3', paragraph).
references(art_5_par_3, art_5_par_1_unp_1_pnt_h).
references(art_5_par_3, art_5_par_2).
references(art_5_par_3, art_5_par_5).
obligation(art_5_par_3, law_enforcement, 'obtain prior authorisation from a judicial authority or an independent administrative authority before using a real-time remote biometric identification system in publicly accessible spaces for law enforcement purposes').
obligation(art_5_par_3, judicial_authority, 'grant authorisation only when satisfied on the basis of objective evidence or clear indications that the use is necessary and proportionate to achieve one of the objectives specified in art_5_par_1_unp_1_pnt_h and limited to the strictly necessary period, geographic and personal scope').
obligation(art_5_par_3, judicial_authority, 'take into account the elements referred to in art_5_par_2 when deciding on the authorisation request').
obligation(art_5_par_3, authority, 'stop the use immediately and discard and delete all data, results and outputs if the authorisation is rejected').
prohibition(art_5_par_3, authority, 'take a decision producing an adverse legal effect on a person solely on the output of the real-time remote biometric identification system').
condition(art_5_par_3, 'in a duly justified situation of urgency, the use may be commenced without prior authorisation provided that a request for authorisation is made without undue delay, at the latest within 24 hours').
deadline(art_5_par_3, 'authorisation request must be made within 24 hours in urgent situations').

% ==== celex:32024R1689/oj#art_5/par_4 ====
unit(art_5_par_4, 'celex:32024R1689/oj#art_5/par_4', paragraph).
references(art_5_par_4, art_5_par_3).
references(art_5_par_4, art_5_par_5).
references(art_5_par_4, art_5_par_6).

% ==== celex:32024R1689/oj#art_5/par_5 ====
unit(art_5_par_5, 'celex:32024R1689/oj#art_5/par_5', paragraph).
references(art_5_par_5, art_5_par_1_unp_1_pnt_h).
references(art_5_par_5, art_5_par_2).
references(art_5_par_5, art_5_par_3).
obligation(art_5_par_5, member_state, 'lay down in national law the necessary detailed rules for the request, issuance, exercise, supervision and reporting relating to the authorisations referred to in art_5_par_3').
obligation(art_5_par_5, member_state, 'specify in the rules which objectives listed in art_5_par_1_unp_1_pnt_h and which criminal offences referred to in point (h)(iii) thereof the competent authorities may be authorised to use those systems for law enforcement purposes').
obligation(art_5_par_5, member_state, 'notify those rules to the Commission at the latest 30 days following the adoption thereof').

% ==== celex:32024R1689/oj#art_5/par_6 ====
unit(art_5_par_6, 'celex:32024R1689/oj#art_5/par_6', paragraph).
references(art_5_par_6, art_5_par_4).
references(art_5_par_6, art_5_par_3).
obligation(art_5_par_6, national_market_surveillance_authorities, 'shall submit annual reports to the Commission on such use').
obligation(art_5_par_6, national_data_protection_authorities, 'shall submit annual reports to the Commission on such use').
obligation(art_5_par_6, commission, 'shall provide Member States and national market surveillance and data protection authorities with a template including information on the number of decisions taken by competent judicial authorities or an independent administrative authority whose decision is binding upon requests for authorisations and their result').

% ==== celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a ====
unit(art_6_par_1_unp_1_pnt_a, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a', point).
references(art_6_par_1_unp_1_pnt_a, anx_1).
condition(art_6_par_1_unp_1_pnt_a, 'the AI system is intended to be used as a safety component of a product, or the AI system is itself a product, covered by the Union harmonisation legislation listed in anx_1').

% ==== celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b ====
unit(art_6_par_1_unp_1_pnt_b, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b', point).
references(art_6_par_1_unp_1_pnt_b, art_6_par_1_unp_1_pnt_a).
references(art_6_par_1_unp_1_pnt_b, anx_1).
obligation(art_6_par_1_unp_1_pnt_b, product, 'undergo a third‑party conformity assessment').
condition(art_6_par_1_unp_1_pnt_b, 'with a view to the placing on the market or the putting into service of that product pursuant to the Union harmonisation legislation listed in anx_1').

% ==== celex:32024R1689/oj#art_6/par_2 ====
unit(art_6_par_2, 'celex:32024R1689/oj#art_6/par_2', paragraph).
references(art_6_par_2, art_6_par_1).
references(art_6_par_2, anx_3).
condition(art_6_par_2, 'in addition to the high-risk AI systems referred to in art_6_par_1').
requirement(art_6_par_2, high_risk_ai_system, 'shall be considered to be high-risk').

% ==== celex:32024R1689/oj#art_6/par_3/unp_1 ====
unit(art_6_par_3_unp_1, 'celex:32024R1689/oj#art_6/par_3/unp_1', paragraph).
references(art_6_par_3_unp_1, art_6_par_2).
references(art_6_par_3_unp_1, anx_3).
condition(art_6_par_3_unp_1, 'derogation from art_6_par_2').
condition(art_6_par_3_unp_1, 'does not pose a significant risk of harm to the health, safety or fundamental rights of natural persons, including by not materially influencing the outcome of decision making').
prohibition(art_6_par_3_unp_1, ai_system, 'be considered high-risk').

% ==== celex:32024R1689/oj#art_6/par_3/unp_2 ====
unit(art_6_par_3_unp_2, 'celex:32024R1689/oj#art_6/par_3/unp_2', paragraph).
references(art_6_par_3_unp_2, art_6_par_3_unp_1).
references(art_6_par_3_unp_2, anx_3).
condition(art_6_par_3_unp_2, 'any of the following conditions is fulfilled').

% ==== celex:32024R1689/oj#art_6/par_4 ====
unit(art_6_par_4, 'celex:32024R1689/oj#art_6/par_4', paragraph).
references(art_6_par_4, anx_3).
references(art_6_par_4, art_49_par_2).
obligation(art_6_par_4, provider, 'document its assessment before the system is placed on the market or put into service').
obligation(art_6_par_4, provider, 'be subject to the registration obligation set out in art_49_par_2').
obligation(art_6_par_4, provider, 'provide the documentation of the assessment upon request of national competent authorities').

% ==== celex:32024R1689/oj#art_6/par_6 ====
unit(art_6_par_6, 'celex:32024R1689/oj#art_6/par_6', paragraph).
references(art_6_par_6, art_97).
references(art_6_par_6, art_6_par_3_unp_2).
references(art_6_par_6, anx_3).
obligation(art_6_par_6, commission, 'adopt delegated acts in accordance with art_97 to amend art_6_par_3_unp_2 by adding new conditions or modifying them').
condition(art_6_par_6, 'where there is concrete and reliable evidence of the existence of AI systems that fall under the scope of anx_3 but do not pose a significant risk of harm to the health, safety or fundamental rights of natural persons').

% ==== celex:32024R1689/oj#art_6/par_7 ====
unit(art_6_par_7, 'celex:32024R1689/oj#art_6/par_7', paragraph).
references(art_6_par_7, art_97).
references(art_6_par_7, art_6_par_3_unp_2).
references(art_6_par_7, 'celex:32024R1689/oj').
obligation(art_6_par_7, commission, 'adopt delegated acts in accordance with art_97 to amend art_6_par_3_unp_2 by deleting any of the conditions where there is concrete and reliable evidence that this is necessary to maintain the level of protection of health, safety and fundamental rights provided for by the act').

% ==== celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b ====
unit(art_7_par_1_unp_1_pnt_b, 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b', point).
references(art_7_par_1_unp_1_pnt_b, anx_3).
condition(art_7_par_1_unp_1_pnt_b, 'the AI systems pose a risk of harm to health and safety, or an adverse impact on fundamental rights, and that risk is equivalent to, or greater than, the risk of harm or of adverse impact posed by the high‑risk AI systems referred to in annex 3').

% ==== celex:32024R1689/oj#art_7/par_2 ====
unit(art_7_par_2, 'celex:32024R1689/oj#art_7/par_2', paragraph).
references(art_7_par_2, art_7_par_1_unp_1_pnt_b).

% ==== celex:32024R1689/oj#art_7/par_3 ====
unit(art_7_par_3, 'celex:32024R1689/oj#art_7/par_3', paragraph).
references(art_7_par_3, art_97).
references(art_7_par_3, anx_3).
references(art_7_par_3, art_7_par_2).
obligation(art_7_par_3, commission, 'adopt delegated acts to amend the list in anx_3 by removing high‑risk AI systems when the conditions are fulfilled').
condition(art_7_par_3, 'the high‑risk AI system concerned no longer poses any significant risks to fundamental rights, health or safety, taking into account the criteria listed in art_7_par_2').
condition(art_7_par_3, 'the deletion does not decrease the overall level of protection of health, safety and fundamental rights under Union law').

% ==== celex:32024R1689/oj#art_8/par_1 ====
unit(art_8_par_1, 'celex:32024R1689/oj#art_8/par_1', paragraph).
references(art_8_par_1, chp_3_sec_2).
references(art_8_par_1, art_9).
obligation(art_8_par_1, high_risk_ai_system, 'comply with the requirements laid down in chp_3_sec_2, taking into account their intended purpose as well as the generally acknowledged state of the art on AI and AI-related technologies').
obligation(art_8_par_1, high_risk_ai_system, 'take into account the risk management system referred to in art_9 when ensuring compliance with those requirements').

% ==== celex:32024R1689/oj#art_9/par_1 ====
unit(art_9_par_1, 'celex:32024R1689/oj#art_9/par_1', paragraph).
definition(high_risk_ai_system, 'high-risk AI systems').
definition(risk_management_system, 'a system that shall be established, implemented, documented and maintained in relation to high-risk AI systems').
requirement(art_9_par_1, risk_management_system, 'shall be established, implemented, documented and maintained in relation to high-risk AI systems').

% ==== celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a ====
unit(art_9_par_2_unp_1_pnt_a, 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_a', point).
requirement(art_9_par_2_unp_1_pnt_a, high_risk_ai_system, 'identification and analysis of the known and reasonably foreseeable risks that the high-risk AI system can pose to health, safety or fundamental rights when the high-risk AI system is used in accordance with its intended purpose').

% ==== celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d ====
unit(art_9_par_2_unp_1_pnt_d, 'celex:32024R1689/oj#art_9/par_2/unp_1/pnt_d', point).
references(art_9_par_2_unp_1_pnt_d, art_9_par_2_unp_1_pnt_a).
requirement(art_9_par_2_unp_1_pnt_d, risk_management_measures, 'appropriate and targeted risk management measures designed to address the risks identified pursuant to art_9_par_2_unp_1_pnt_a').

% ==== celex:32024R1689/oj#art_9/par_3 ====
unit(art_9_par_3, 'celex:32024R1689/oj#art_9/par_3', paragraph).
references(art_9_par_3, art_9).
requirement(art_9_par_3, high_risk_ai_system, 'risks shall concern only those which may be reasonably mitigated or eliminated through development or design of the high-risk AI system, or the provision of adequate technical information').

% ==== celex:32024R1689/oj#art_9/par_4 ====
unit(art_9_par_4, 'celex:32024R1689/oj#art_9/par_4', paragraph).
references(art_9_par_4, art_9_par_2_unp_1_pnt_d).
references(art_9_par_4, chp_3_sec_2).

% ==== celex:32024R1689/oj#art_9/par_5 ====
unit(art_9_par_5, 'celex:32024R1689/oj#art_9/par_5', paragraph).
references(art_9_par_5, art_9_par_2_unp_1_pnt_d).
references(art_9_par_5, art_9_par_2).
references(art_9_par_5, art_13).
obligation(art_9_par_5, provider, 'risk management measures shall ensure that the relevant residual risk associated with each hazard and the overall residual risk of the high‑risk AI system is judged to be acceptable').
obligation(art_9_par_5, provider, 'eliminate or reduce risks identified and evaluated pursuant to art_9_par_2 as far as technically feasible through adequate design and development of the high‑risk AI system').
obligation(art_9_par_5, provider, 'implement adequate mitigation and control measures addressing risks that cannot be eliminated').
obligation(art_9_par_5, provider, 'provide information required pursuant to art_13 and, where appropriate, training to deployers').
condition(art_9_par_5, 'due consideration shall be given to the technical knowledge, experience, education, the training to be expected by the deployer, and the presumable context in which the system is intended to be used').

% ==== celex:32024R1689/oj#art_9/par_6 ====
unit(art_9_par_6, 'celex:32024R1689/oj#art_9/par_6', paragraph).
references(art_9_par_6, chp_3_sec_2).
obligation(art_9_par_6, high_risk_ai_system, 'be tested for the purpose of identifying the most appropriate and targeted risk management measures').
obligation(art_9_par_6, testing, 'ensure that high-risk AI systems perform consistently for their intended purpose and are in compliance with the requirements set out in chp_3_sec_2').

% ==== celex:32024R1689/oj#art_9/par_7 ====
unit(art_9_par_7, 'celex:32024R1689/oj#art_9/par_7', paragraph).
references(art_9_par_7, art_60).

% ==== celex:32024R1689/oj#art_9/par_8 ====
unit(art_9_par_8, 'celex:32024R1689/oj#art_9/par_8', paragraph).
obligation(art_9_par_8, any, 'testing of high-risk AI systems shall be performed throughout the development process and prior to being placed on the market or put into service').
requirement(art_9_par_8, testing, 'testing shall be carried out against prior defined metrics and probabilistic thresholds appropriate to the intended purpose of the high-risk AI system').

% ==== celex:32024R1689/oj#art_9/par_9 ====
unit(art_9_par_9, 'celex:32024R1689/oj#art_9/par_9', paragraph).
references(art_9_par_9, art_9_par_1).
references(art_9_par_9, art_9_par_2).
references(art_9_par_9, art_9_par_3).
references(art_9_par_9, art_9_par_4).
references(art_9_par_9, art_9_par_5).
references(art_9_par_9, art_9_par_6).
references(art_9_par_9, art_9_par_7).
obligation(art_9_par_9, provider, 'give consideration to whether the high-risk AI system is likely to have an adverse impact on persons under the age of 18 and, as appropriate, other vulnerable groups').

% ==== celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f ====
unit(art_10_par_2_unp_1_pnt_f, 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_f', point).

% ==== celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g ====
unit(art_10_par_2_unp_1_pnt_g, 'celex:32024R1689/oj#art_10/par_2/unp_1/pnt_g', point).
references(art_10_par_2_unp_1_pnt_g, art_10_par_2_unp_1_pnt_f).

% ==== celex:32024R1689/oj#art_10/par_3 ====
unit(art_10_par_3, 'celex:32024R1689/oj#art_10/par_3', paragraph).
obligation(art_10_par_3, data_set, 'shall be relevant, sufficiently representative, and to the best extent possible, free of errors and complete in view of the intended purpose').
obligation(art_10_par_3, data_set, 'shall have the appropriate statistical properties, including, where applicable, as regards the persons or groups of persons in relation to whom the high-risk AI system is intended to be used').

% ==== celex:32024R1689/oj#art_10/par_4 ====
unit(art_10_par_4, 'celex:32024R1689/oj#art_10/par_4', paragraph).
obligation(art_10_par_4, data_set, 'take into account the characteristics or elements particular to the specific geographical, contextual, behavioural or functional setting within which the high‑risk AI system is intended to be used, to the extent required by the intended purpose').
condition(art_10_par_4, 'to the extent required by the intended purpose').

% ==== celex:32024R1689/oj#art_10/par_5 ====
unit(art_10_par_5, 'celex:32024R1689/oj#art_10/par_5', paragraph).
references(art_10_par_5, art_10_par_2_unp_1_pnt_f).
references(art_10_par_5, art_10_par_2_unp_1_pnt_g).
references(art_10_par_5, 'celex:32016R0679/oj').
references(art_10_par_5, 'celex:32018R1725/oj').
references(art_10_par_5, 'celex:32016L0680/oj').
permission(art_10_par_5, provider, 'exceptionally process special categories of personal data, subject to appropriate safeguards for the fundamental rights and freedoms of natural persons').
condition(art_10_par_5, 'bias detection and correction cannot be effectively fulfilled by processing other data, including synthetic or anonymised data').
condition(art_10_par_5, 'special categories of personal data are subject to technical limitations on re-use and state-of-the-art security and privacy-preserving measures, including pseudonymisation').
condition(art_10_par_5, 'special categories of personal data are subject to measures to ensure they are secured, protected, with suitable safeguards, strict controls and documentation of access, to avoid misuse and ensure only authorised persons have access with appropriate confidentiality obligations').
condition(art_10_par_5, 'special categories of personal data are not to be transmitted, transferred or otherwise accessed by other parties').
condition(art_10_par_5, 'special categories of personal data are deleted once the bias has been corrected or the personal data has reached the end of its retention period, whichever comes first').
condition(art_10_par_5, 'records of processing activities include the reasons why processing of special categories of personal data was strictly necessary to detect and correct biases, and why that objective could not be achieved by processing other data').
obligation(art_10_par_5, provider, 'ensure records of processing activities include reasons why processing was strictly necessary and why it could not be achieved by other data').

% ==== celex:32024R1689/oj#art_11/par_1 ====
unit(art_11_par_1, 'celex:32024R1689/oj#art_11/par_1', paragraph).
references(art_11_par_1, chp_3_sec_2).
references(art_11_par_1, anx_4).
references(art_11_par_1, art_11_par_1).
obligation(art_11_par_1, provider, 'draw up technical documentation before the system is placed on the market or put into service and keep it up to date').
obligation(art_11_par_1, provider, 'draw up technical documentation in a way that demonstrates compliance with the requirements set out in chp_3_sec_2 and provides the necessary information to national competent authorities and notified bodies').
requirement(art_11_par_1, technical_documentation, 'contain at a minimum the elements set out in anx_4').
permission(art_11_par_1, sme, 'provide the elements of the technical documentation specified in anx_4 in a simplified manner').
obligation(art_11_par_1, commission, 'establish a simplified technical documentation form targeted at the needs of small and microenterprises').
obligation(art_11_par_1, sme, 'use the form referred to in art_11_par_1 when providing the information required in anx_4 in a simplified manner').
obligation(art_11_par_1, notified_body, 'accept the form for the purposes of the conformity assessment').

% ==== celex:32024R1689/oj#art_11/par_3 ====
unit(art_11_par_3, 'celex:32024R1689/oj#art_11/par_3', paragraph).
references(art_11_par_3, art_97).
references(art_11_par_3, anx_4).
references(art_11_par_3, chp_3_sec_2).

% ==== celex:32024R1689/oj#art_12/par_1 ====
unit(art_12_par_1, 'celex:32024R1689/oj#art_12/par_1', paragraph).
obligation(art_12_par_1, high_risk_ai_system, 'technically allow for the automatic recording of events (logs) over the lifetime of the system').

% ==== celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d ====
unit(art_13_par_3_unp_1_pnt_d, 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d', point).
references(art_13_par_3_unp_1_pnt_d, art_14).
definition(human_oversight_measures, 'the measures referred to in art_14, including technical measures to facilitate interpretation of the outputs of high-risk AI systems by the deployers').

% ==== celex:32024R1689/oj#art_14/par_1 ====
unit(art_14_par_1, 'celex:32024R1689/oj#art_14/par_1', paragraph).
obligation(art_14_par_1, high_risk_ai_system, 'be designed and developed in such a way, including with appropriate human-machine interface tools, that they can be effectively overseen by natural persons during the period in which they are in use').

% ==== celex:32024R1689/oj#art_14/par_2 ====
unit(art_14_par_2, 'celex:32024R1689/oj#art_14/par_2', paragraph).
references(art_14_par_2, chp_3_sec_2).
obligation(art_14_par_2, human_oversight, 'aim to prevent or minimise the risks to health, safety or fundamental rights').
condition(art_14_par_2, 'when a high-risk AI system is used in accordance with its intended purpose or under conditions of reasonably foreseeable misuse').

% ==== celex:32024R1689/oj#art_14/par_3 ====
unit(art_14_par_3, 'celex:32024R1689/oj#art_14/par_3', paragraph).
obligation(art_14_par_3, provider, 'identify and build measures into the high-risk AI system when technically feasible before it is placed on the market or put into service').
obligation(art_14_par_3, provider, 'identify measures before placing the high-risk AI system on the market or putting it into service that are appropriate to be implemented by the deployer').
requirement(art_14_par_3, high_risk_ai_system, 'oversight measures shall be commensurate with the risks, level of autonomy and context of use').
requirement(art_14_par_3, deployer, 'implement appropriate measures identified by the provider').
condition(art_14_par_3, 'when technically feasible').

% ==== celex:32024R1689/oj#art_14/par_5 ====
unit(art_14_par_5, 'celex:32024R1689/oj#art_14/par_5', paragraph).
references(art_14_par_5, anx_3_pnt_1_pnt_a).
references(art_14_par_5, art_14_par_3).
applies_to(art_14_par_5, high_risk_ai_system).
obligation(art_14_par_5, deployer, 'no action or decision shall be taken on the basis of the identification resulting from the system unless that identification has been separately verified and confirmed by at least two natural persons with the necessary competence, training and authority').
exempt(art_14_par_5, high_risk_ai_system, 'requirement for separate verification shall not apply to systems used for law enforcement, migration, border control or asylum where Union or national law considers the application disproportionate').
requirement(art_14_par_5, high_risk_ai_system, 'measures shall ensure that no action or decision is taken by the deployer unless verification by at least two natural persons with necessary competence, training and authority').

% ==== celex:32024R1689/oj#art_15/par_1 ====
unit(art_15_par_1, 'celex:32024R1689/oj#art_15/par_1', paragraph).
obligation(art_15_par_1, high_risk_ai_system, 'be designed and developed to achieve appropriate accuracy, robustness, cybersecurity and consistent performance throughout their lifecycle').

% ==== celex:32024R1689/oj#art_16/unp_1/pnt_b ====
unit(art_16_unp_1_pnt_b, 'celex:32024R1689/oj#art_16/unp_1/pnt_b', point).

% ==== celex:32024R1689/oj#art_16/unp_1/pnt_c ====
unit(art_16_unp_1_pnt_c, 'celex:32024R1689/oj#art_16/unp_1/pnt_c', point).
references(art_16_unp_1_pnt_c, art_17).

% ==== celex:32024R1689/oj#art_17/par_1/unp_1/pnt_g ====
unit(art_17_par_1_unp_1_pnt_g, 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_g', point).
references(art_17_par_1_unp_1_pnt_g, art_9).
requirement(art_17_par_1_unp_1_pnt_g, risk_management_system, 'the risk management system referred to in art_9').

% ==== celex:32024R1689/oj#art_17/par_1/unp_1/pnt_h ====
unit(art_17_par_1_unp_1_pnt_h, 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_h', point).
references(art_17_par_1_unp_1_pnt_h, art_72).
requirement(art_17_par_1_unp_1_pnt_h, post_market_monitoring_system, 'setting-up, implementation and maintenance in accordance with art_72').

% ==== celex:32024R1689/oj#art_17/par_1/unp_1/pnt_i ====
unit(art_17_par_1_unp_1_pnt_i, 'celex:32024R1689/oj#art_17/par_1/unp_1/pnt_i', point).
references(art_17_par_1_unp_1_pnt_i, art_73).

% ==== celex:32024R1689/oj#art_18/par_1 ====
unit(art_18_par_1, 'celex:32024R1689/oj#art_18/par_1', paragraph).
references(art_18_par_1, art_11).
references(art_18_par_1, art_17).
references(art_18_par_1, art_47).
obligation(art_18_par_1, provider, 'keep at the disposal of the national competent authorities the technical documentation, the documentation concerning the quality management system, the documentation concerning the changes approved by notified bodies, the decisions and other documents issued by the notified bodies, and the EU declaration of conformity').
condition(art_18_par_1, 'for a period ending 10 years after the high‑risk AI system has been placed on the market or put into service').

% ==== celex:32024R1689/oj#art_19 ====
unit(art_19, 'celex:32024R1689/oj#art_19', article).
title(art_19, 'Automatically generated logs').
references(art_19, art_12_par_1).
obligation(art_19, provider, 'keep the logs referred to in art_12_par_1, automatically generated by their high-risk AI systems, to the extent such logs are under their control').
requirement(art_19, provider, 'keep the logs for a period appropriate to the intended purpose, of at least six months, unless provided otherwise in applicable Union or national law, in particular Union law on the protection of personal data').
obligation(art_19, provider, 'maintain the logs automatically generated by their high-risk AI systems as part of the documentation kept under the relevant financial services law').
condition(art_19, 'provider is a financial institution subject to requirements regarding internal governance, arrangements or processes under Union financial services law').

% ==== celex:32024R1689/oj#art_20 ====
unit(art_20, 'celex:32024R1689/oj#art_20', article).
title(art_20, 'Corrective actions and duty of information').
references(art_20, 'celex:32024R1689/oj').
references(art_20, art_79_par_1).
references(art_20, art_44).
obligation(art_20, provider, 'take the necessary corrective actions to bring the system into conformity, to withdraw it, to disable it, or to recall it, as appropriate').
obligation(art_20, provider, 'inform the distributors of the high-risk AI system concerned and, where applicable, the deployers, the authorised representative and importers accordingly').
obligation(art_20, provider, 'investigate the causes of the risk, in collaboration with the reporting deployer, where applicable').
obligation(art_20, provider, 'inform the market surveillance authorities competent for the high-risk AI system concerned and, where applicable, the notified body that issued a certificate for that system, in particular of the nature of the non‑compliance and of any relevant corrective action taken').
condition(art_20, 'when the high-risk AI system presents a risk within the meaning of art_79_par_1 and the provider becomes aware of that risk').

% ==== celex:32024R1689/oj#art_21 ====
unit(art_21, 'celex:32024R1689/oj#art_21', article).
title(art_21, 'Cooperation with competent authorities').
references(art_21, chp_3_sec_2).
references(art_21, art_12_par_1).
references(art_21, art_21).
references(art_21, art_78).
obligation(art_21, provider, 'provide all information and documentation necessary to demonstrate conformity of the high‑risk AI system with the requirements set out in chp_3_sec_2, in an official Union language as indicated by the Member State').
obligation(art_21, provider, 'give the requesting competent authority access to automatically generated logs of the high‑risk AI system referred to in art_12_par_1, to the extent such logs are under their control').
obligation(art_21, competent_authority, 'treat any information obtained pursuant to art_21 in accordance with the confidentiality obligations set out in art_78').

% ==== celex:32024R1689/oj#art_22/par_1 ====
unit(art_22_par_1, 'celex:32024R1689/oj#art_22/par_1', paragraph).
obligation(art_22_par_1, provider, 'appoint an authorised representative established in the Union by written mandate').
condition(art_22_par_1, 'prior to making high-risk AI systems available on the Union market').

% ==== celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b ====
unit(art_22_par_3_unp_1_pnt_b, 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b', point).
references(art_22_par_3_unp_1_pnt_b, art_74_par_10).
references(art_22_par_3_unp_1_pnt_b, art_47).
obligation(art_22_par_3_unp_1_pnt_b, provider, 'keep at the disposal of the competent authorities and national authorities or bodies referred to in art_74_par_10, for a period of 10 years after the high-risk AI system has been placed on the market or put into service, the contact details of the provider that appointed the authorised representative, a copy of the EU declaration of conformity referred to in art_47, the technical documentation and, if applicable, the certificate issued by the notified body').
condition(art_22_par_3_unp_1_pnt_b, 'for a period of 10 years after the high-risk AI system has been placed on the market or put into service').

% ==== celex:32024R1689/oj#art_23/par_3 ====
unit(art_23_par_3, 'celex:32024R1689/oj#art_23/par_3', paragraph).
obligation(art_23_par_3, importer, 'indicate their name, registered trade name or registered trade mark, and the address at which they can be contacted on the high-risk AI system and on its packaging or its accompanying documentation, where applicable').

% ==== celex:32024R1689/oj#art_23/par_5 ====
unit(art_23_par_5, 'celex:32024R1689/oj#art_23/par_5', paragraph).
references(art_23_par_5, art_47).
obligation(art_23_par_5, importer, 'keep a copy of the certificate issued by the notified body, where applicable, of the instructions for use, and of the EU declaration of conformity for a period of 10 years after the high‑risk AI system has been placed on the market or put into service').

% ==== celex:32024R1689/oj#art_24/par_1 ====
unit(art_24_par_1, 'celex:32024R1689/oj#art_24/par_1', paragraph).
references(art_24_par_1, art_47).
references(art_24_par_1, art_16_unp_1_pnt_b).
references(art_24_par_1, art_16_unp_1_pnt_c).
references(art_24_par_1, art_23_par_3).
obligation(art_24_par_1, distributor, 'verify that the high-risk AI system bears the required CE marking, is accompanied by a copy of the EU declaration of conformity and instructions for use, and that the provider and the importer have complied with their respective obligations').

% ==== celex:32024R1689/oj#art_24/par_2 ====
unit(art_24_par_2, 'celex:32024R1689/oj#art_24/par_2', paragraph).
references(art_24_par_2, chp_3_sec_2).
references(art_24_par_2, art_79_par_1).
condition(art_24_par_2, 'distributor considers or has reason to consider, on the basis of the information in its possession, that a high-risk AI system is not in conformity with the requirements set out in chp_3_sec_2').
condition(art_24_par_2, 'high-risk AI system presents a risk within the meaning of art_79_par_1').
obligation(art_24_par_2, distributor, 'not make the high-risk AI system available on the market until the system has been brought into conformity with those requirements').
obligation(art_24_par_2, distributor, 'inform the provider or the importer of the system to that effect').

% ==== celex:32024R1689/oj#art_24/par_3 ====
unit(art_24_par_3, 'celex:32024R1689/oj#art_24/par_3', paragraph).
references(art_24_par_3, chp_3_sec_2).
obligation(art_24_par_3, distributor, 'ensure storage or transport conditions do not jeopardise compliance of high-risk AI system while under their responsibility').
condition(art_24_par_3, 'while a high-risk AI system is under their responsibility').

% ==== celex:32024R1689/oj#art_24/par_4 ====
unit(art_24_par_4, 'celex:32024R1689/oj#art_24/par_4', paragraph).
references(art_24_par_4, chp_3_sec_2).
references(art_24_par_4, art_79_par_1).
applies_to(art_24_par_4, distributor).
obligation(art_24_par_4, distributor, 'take corrective actions necessary to bring the system into conformity with the requirements, withdraw it or recall it, or ensure the provider, importer or relevant operator takes those corrective actions').
obligation(art_24_par_4, distributor, 'immediately inform the provider or importer and the competent authorities, giving details of the non‑compliance and any corrective actions taken').
condition(art_24_par_4, 'where the high‑risk AI system presents a risk within the meaning of art_79_par_1').

% ==== celex:32024R1689/oj#art_25/par_1 ====
unit(art_25_par_1, 'celex:32024R1689/oj#art_25/par_1', paragraph).
references(art_25_par_1, 'celex:32024R1689/oj').
references(art_25_par_1, art_16).
references(art_25_par_1, art_6).
obligation(art_25_par_1, distributor, 'considered provider of a high-risk AI system').
obligation(art_25_par_1, importer, 'considered provider of a high-risk AI system').
obligation(art_25_par_1, deployer, 'considered provider of a high-risk AI system').
obligation(art_25_par_1, third_party, 'considered provider of a high-risk AI system').
requirement(art_25_par_1, provider, 'subject to obligations under art_16').
condition(art_25_par_1, a, 'they put their name or trademark on a high-risk AI system already placed on the market or put into service, without prejudice to contractual arrangements stipulating that the obligations are otherwise allocated').
condition(art_25_par_1, b, 'they make a substantial modification to a high-risk AI system already placed on the market or put into service such that it remains a high-risk AI system pursuant to art_6').
condition(art_25_par_1, c, 'they modify the intended purpose of an AI system, including a general-purpose AI system, not classified as high-risk and already placed on the market or put into service, so that it becomes a high-risk AI system in accordance with art_6').

% ==== celex:32024R1689/oj#art_25/par_2 ====
unit(art_25_par_2, 'celex:32024R1689/oj#art_25/par_2', paragraph).
references(art_25_par_2, art_25_par_1).
references(art_25_par_2, 'celex:32024R1689/oj').
references(art_25_par_2, art_25_par_2).
obligation(art_25_par_2, provider, 'no longer be considered a provider of that specific AI system for the purposes of the Regulation').
obligation(art_25_par_2, provider, 'closely cooperate with new providers').
obligation(art_25_par_2, provider, 'make available the necessary information').
obligation(art_25_par_2, provider, 'provide the reasonably expected technical access and other assistance required for the fulfilment of the obligations set out in the Regulation').
condition(art_25_par_2, 'does not apply where the initial provider has clearly specified that its AI system is not to be changed into a high-risk AI system').

% ==== celex:32024R1689/oj#art_25/par_3 ====
unit(art_25_par_3, 'celex:32024R1689/oj#art_25/par_3', paragraph).
references(art_25_par_3, anx_1_sec_1).
references(art_25_par_3, art_16).
obligation(art_25_par_3, product_manufacturer, 'considered to be the provider of the high-risk AI system').
obligation(art_25_par_3, product_manufacturer, 'subject to the obligations under art_16').
condition(art_25_par_3, 'high-risk AI system placed on the market together with the product under the name or trademark of the product manufacturer').
condition(art_25_par_3, 'high-risk AI system put into service under the name or trademark of the product manufacturer after the product has been placed on the market').

% ==== celex:32024R1689/oj#art_25/par_4 ====
unit(art_25_par_4, 'celex:32024R1689/oj#art_25/par_4', paragraph).
references(art_25_par_4, 'celex:32024R1689/oj').
references(art_25_par_4, art_25_par_4).
obligation(art_25_par_4, provider, 'specify the necessary information, capabilities, technical access and other assistance by written agreement, based on the generally acknowledged state of the art, to enable the provider of the high‑risk AI system to fully comply with the obligations set out in the Regulation').
obligation(art_25_par_4, third_party_supplier, 'specify the necessary information, capabilities, technical access and other assistance by written agreement, based on the generally acknowledged state of the art, to enable the provider of the high‑risk AI system to fully comply with the obligations set out in the Regulation').
exempt(art_25_par_4, third_party_supplier, 'making accessible to the public tools, services, processes, or components, other than general‑purpose AI models, under a free and open‑source licence').
obligation(art_25_par_4, ai_office, 'develop and recommend voluntary model terms for contracts between providers of high‑risk AI systems and third parties that supply tools, services, components or processes used or integrated into high‑risk AI systems').
obligation(art_25_par_4, ai_office, 'take into account possible contractual requirements applicable in specific sectors or business cases when developing those voluntary model terms').
obligation(art_25_par_4, ai_office, 'publish the voluntary model terms and make them available free of charge in an easily usable electronic format').

% ==== celex:32024R1689/oj#art_26/par_1 ====
unit(art_26_par_1, 'celex:32024R1689/oj#art_26/par_1', paragraph).
references(art_26_par_1, art_26_par_3).
references(art_26_par_1, art_26_par_6).
obligation(art_26_par_1, deployer, 'take appropriate technical and organisational measures to ensure they use such systems in accordance with the instructions for use accompanying the systems').

% ==== celex:32024R1689/oj#art_26/par_2 ====
unit(art_26_par_2, 'celex:32024R1689/oj#art_26/par_2', paragraph).
obligation(art_26_par_2, deployer, 'assign human oversight to natural persons who have the necessary competence, training and authority, as well as the necessary support').

% ==== celex:32024R1689/oj#art_26/par_3 ====
unit(art_26_par_3, 'celex:32024R1689/oj#art_26/par_3', paragraph).
references(art_26_par_3, art_26_par_1).
references(art_26_par_3, art_26_par_2).

% ==== celex:32024R1689/oj#art_26/par_5/unp_1 ====
unit(art_26_par_5_unp_1, 'celex:32024R1689/oj#art_26/par_5/unp_1', paragraph).
references(art_26_par_5_unp_1, art_72).
references(art_26_par_5_unp_1, art_79_par_1).
references(art_26_par_5_unp_1, art_73).
obligation(art_26_par_5_unp_1, deployer, 'monitor the operation of the high-risk AI system on the basis of the instructions for use and, where relevant, inform providers in accordance with art_72').
condition(art_26_par_5_unp_1, 'deployers have reason to consider that the use of the high-risk AI system in accordance with the instructions may result in a risk within the meaning of art_79_par_1').
obligation(art_26_par_5_unp_1, deployer, 'inform the provider or distributor and the relevant market surveillance authority without undue delay').
obligation(art_26_par_5_unp_1, deployer, 'suspend the use of that system').
condition(art_26_par_5_unp_1, 'deployers have identified a serious incident').
obligation(art_26_par_5_unp_1, deployer, 'immediately inform first the provider, then the importer or distributor and the relevant market surveillance authorities of that incident').
condition(art_26_par_5_unp_1, 'deployer is not able to reach the provider').
obligation(art_26_par_5_unp_1, deployer, 'apply art_73 mutatis mutandis').
exempt(art_26_par_5_unp_1, deployer, 'sensitive operational data of deployers of AI systems which are law enforcement authorities').
applies_to(art_26_par_5_unp_1, deployer).

% ==== celex:32024R1689/oj#art_26/par_6 ====
unit(art_26_par_6, 'celex:32024R1689/oj#art_26/par_6', paragraph).
obligation(art_26_par_6, deployer, 'keep the logs automatically generated by that high-risk AI system to the extent such logs are under their control, for a period appropriate to the intended purpose of the high-risk AI system, of at least six months, unless provided otherwise in applicable Union or national law, in particular in Union law on the protection of personal data').
condition(art_26_par_6, 'Deployers that are financial institutions subject to requirements regarding their internal governance, arrangements or processes under Union financial services law').
obligation(art_26_par_6, deployer, 'maintain the logs as part of the documentation kept pursuant to the relevant Union financial service law').

% ==== celex:32024R1689/oj#art_26/par_8 ====
unit(art_26_par_8, 'celex:32024R1689/oj#art_26/par_8', paragraph).
references(art_26_par_8, art_49).
references(art_26_par_8, art_71).
obligation(art_26_par_8, deployer, 'comply with the registration obligations referred to in art_49').
prohibition(art_26_par_8, deployer, 'use that system').
obligation(art_26_par_8, deployer, 'inform the provider or the distributor').
condition(art_26_par_8, 'high-risk AI system not registered in the EU database referred to in art_71').

% ==== celex:32024R1689/oj#art_26/par_10/unp_1 ====
unit(art_26_par_10_unp_1, 'celex:32024R1689/oj#art_26/par_10/unp_1', paragraph).
references(art_26_par_10_unp_1, 'celex:32016L0680/oj').
obligation(art_26_par_10_unp_1, deployer, 'request an authorisation ex ante, without undue delay and no later than 48 hours, by a judicial authority or an administrative authority whose decision is binding and subject to judicial review, for the use of that system, except when it is used for the initial identification of a potential suspect based on objective and verifiable facts directly linked to the offence').
requirement(art_26_par_10_unp_1, deployer, 'limit each use to what is strictly necessary for the investigation of a specific criminal offence').
condition(art_26_par_10_unp_1, 'exception: when the system is used for the initial identification of a potential suspect based on objective and verifiable facts directly linked to the offence').

% ==== celex:32024R1689/oj#art_26/par_10/unp_5 ====
unit(art_26_par_10_unp_5, 'celex:32024R1689/oj#art_26/par_10/unp_5', paragraph).
references(art_26_par_10_unp_5, art_26_par_10_unp_5).
references(art_26_par_10_unp_5, 'celex:32016L0680/oj').
obligation(art_26_par_10_unp_5, deployer, 'document each use of high-risk AI systems in the relevant police file and make it available to the relevant market surveillance authority and the national data protection authority upon request, excluding disclosure of sensitive operational data related to law enforcement').

% ==== celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c ====
unit(art_27_par_1_unp_1_pnt_c, 'celex:32024R1689/oj#art_27/par_1/unp_1/pnt_c', point).
definition('categories_of_natural_persons_and_groups', 'natural persons and groups likely to be affected by its use in the specific context').

% ==== celex:32024R1689/oj#art_27/par_5 ====
unit(art_27_par_5, 'celex:32024R1689/oj#art_27/par_5', paragraph).
references(art_27_par_5, art_27).
obligation(art_27_par_5, ai_office, 'develop a template for a questionnaire, including through an automated tool, to facilitate deployers in complying with their obligations under art_27 in a simplified manner').

% ==== celex:32024R1689/oj#art_28/par_1 ====
unit(art_28_par_1, 'celex:32024R1689/oj#art_28/par_1', paragraph).
obligation(art_28_par_1, member_state, 'designate or establish at least one notifying authority responsible for setting up and carrying out the necessary procedures for the assessment, designation and notification of conformity assessment bodies and for their monitoring').
obligation(art_28_par_1, member_state, 'develop procedures in cooperation between the notifying authorities of all Member States').

% ==== celex:32024R1689/oj#art_29/par_2 ====
unit(art_29_par_2, 'celex:32024R1689/oj#art_29/par_2', paragraph).
references(art_29_par_2, art_31).
obligation(art_29_par_2, applicant, 'application shall be accompanied by a description of the conformity assessment activities, the conformity assessment module or modules and the types of AI systems for which the conformity assessment body claims to be competent, and by an accreditation certificate, where one exists, issued by a national accreditation body attesting that the conformity assessment body fulfils the requirements laid down in art_31').
obligation(art_29_par_2, applicant, 'any valid document related to existing designations of the applicant notified body under any other Union harmonisation legislation shall be added').

% ==== celex:32024R1689/oj#art_29/par_3 ====
unit(art_29_par_3, 'celex:32024R1689/oj#art_29/par_3', paragraph).
references(art_29_par_3, art_31).
condition(art_29_par_3, 'the conformity assessment body concerned cannot provide an accreditation certificate').
obligation(art_29_par_3, conformity_assessment_body, 'provide the notifying authority with all documentary evidence necessary for verification, recognition and regular monitoring of its compliance with the requirements laid down in art_31').

% ==== celex:32024R1689/oj#art_30/par_1 ====
unit(art_30_par_1, 'celex:32024R1689/oj#art_30/par_1', paragraph).
references(art_30_par_1, art_31).
obligation(art_30_par_1, notifying_authorities, 'notify only conformity assessment bodies which have satisfied the requirements laid down in art_31').

% ==== celex:32024R1689/oj#art_30/par_2 ====
unit(art_30_par_2, 'celex:32024R1689/oj#art_30/par_2', paragraph).
references(art_30_par_2, art_30_par_1).
obligation(art_30_par_2, notifying_authorities, 'notify the Commission and the other Member States, using the electronic notification tool developed and managed by the Commission, of each conformity assessment body referred to in art_30_par_1').

% ==== celex:32024R1689/oj#art_31/par_4 ====
unit(art_31_par_4, 'celex:32024R1689/oj#art_31/par_4', paragraph).
obligation(art_31_par_4, notified_body, 'be independent of the provider of a high-risk AI system in relation to which they perform conformity assessment activities').
obligation(art_31_par_4, notified_body, 'be independent of any other operator having an economic interest in high-risk AI systems assessed, as well as of any competitors of the provider').
prohibition(art_31_par_4, notified_body, 'precluding the use of assessed high-risk AI systems that are necessary for the operations of the conformity assessment body or for personal purposes').

% ==== celex:32024R1689/oj#art_31/par_5 ====
unit(art_31_par_5, 'celex:32024R1689/oj#art_31/par_5', paragraph).
prohibition(art_31_par_5, conformity_assessment_body, 'directly involved in the design, development, marketing or use of high-risk AI systems').
prohibition(art_31_par_5, top_level_management, 'directly involved in the design, development, marketing or use of high-risk AI systems').
prohibition(art_31_par_5, personnel_responsible_for_conformity_assessment_tasks, 'directly involved in the design, development, marketing or use of high-risk AI systems').
prohibition(art_31_par_5, conformity_assessment_body, 'represent the parties engaged in the design, development, marketing or use of high-risk AI systems').
prohibition(art_31_par_5, top_level_management, 'represent the parties engaged in the design, development, marketing or use of high-risk AI systems').
prohibition(art_31_par_5, personnel_responsible_for_conformity_assessment_tasks, 'represent the parties engaged in the design, development, marketing or use of high-risk AI systems').
prohibition(art_31_par_5, conformity_assessment_body, 'engage in any activity that might conflict with their independence of judgement or integrity in relation to conformity assessment activities for which they are notified').
prohibition(art_31_par_5, top_level_management, 'engage in any activity that might conflict with their independence of judgement or integrity in relation to conformity assessment activities for which they are notified').
prohibition(art_31_par_5, personnel_responsible_for_conformity_assessment_tasks, 'engage in any activity that might conflict with their independence of judgement or integrity in relation to conformity assessment activities for which they are notified').
applies_to(art_31_par_5, consultancy_services).

% ==== celex:32024R1689/oj#art_31/par_10 ====
unit(art_31_par_10, 'celex:32024R1689/oj#art_31/par_10', paragraph).
references(art_31_par_10, 'celex:32024R1689/oj').
obligation(art_31_par_10, notified_body, 'be capable of carrying out all their tasks with the highest degree of professional integrity and the requisite competence in the specific field, whether those tasks are carried out by notified bodies themselves or on their behalf and under their responsibility').

% ==== celex:32024R1689/oj#art_31/par_11 ====
unit(art_31_par_11, 'celex:32024R1689/oj#art_31/par_11', paragraph).
references(art_31_par_11, chp_3_sec_2).
obligation(art_31_par_11, notified_body, 'have sufficient internal competences to be able effectively to evaluate the tasks conducted by external parties on their behalf').
obligation(art_31_par_11, notified_body, 'have permanent availability of sufficient administrative, technical, legal and scientific personnel who possess experience and knowledge relating to the relevant types of AI systems, data and data computing, and relating to the requirements set out in chp_3_sec_2').

% ==== celex:32024R1689/oj#art_33/par_1 ====
unit(art_33_par_1, 'celex:32024R1689/oj#art_33/par_1', paragraph).
references(art_33_par_1, art_31).
condition(art_33_par_1, 'subcontracts specific tasks connected with the conformity assessment or has recourse to a subsidiary').
obligation(art_33_par_1, notified_body, 'ensure that the subcontractor or the subsidiary meets the requirements laid down in art_31').
obligation(art_33_par_1, notified_body, 'inform the notifying authority accordingly').

% ==== celex:32024R1689/oj#art_33/par_3 ====
unit(art_33_par_3, 'celex:32024R1689/oj#art_33/par_3', paragraph).
condition(art_33_par_3, 'activities may be subcontracted or carried out by a subsidiary only with the agreement of the provider').
obligation(art_33_par_3, notified_body, 'make a list of their subsidiaries publicly available').

% ==== celex:32024R1689/oj#art_33/par_4 ====
unit(art_33_par_4, 'celex:32024R1689/oj#art_33/par_4', paragraph).
references(art_33_par_4, 'celex:32024R1689/oj').
obligation(art_33_par_4, subcontractor, 'keep relevant documents at disposal of notifying authority for five years from termination date of subcontracting').

% ==== celex:32024R1689/oj#art_34 ====
unit(art_34, 'celex:32024R1689/oj#art_34', article).
title(art_34, 'Operational obligations of notified bodies').
references(art_34, art_43).
references(art_34, 'celex:32003H0361/oj').
references(art_34, 'celex:32024R1689/oj').
references(art_34, art_28).
references(art_34, chp_3_sec_4).
obligation(art_34_par_1, notified_body, 'verify the conformity of high-risk AI systems in accordance with the conformity assessment procedures set out in art_43').
obligation(art_34_par_2, notified_body, 'avoid unnecessary burdens for providers when performing their activities').
obligation(art_34_par_2, notified_body, 'take due account of the size of the provider, the sector in which it operates, its structure and the degree of complexity of the high-risk AI system concerned').
obligation(art_34_par_2, notified_body, 'respect the degree of rigour and the level of protection required for the compliance of the high-risk AI system with the requirements of the regulation').
obligation(art_34_par_3, notified_body, 'make available and submit upon request all relevant documentation, including the providers'' documentation, to the notifying authority referred to in art_28 to allow that authority to conduct its assessment, designation, notification and monitoring activities, and to facilitate the assessment outlined in chp_3_sec_4').

% ==== celex:32024R1689/oj#art_36/par_3 ====
unit(art_36_par_3, 'celex:32024R1689/oj#art_36/par_3', paragraph).
obligation(art_36_par_3, notified_body, 'inform the notifying authority and the providers concerned as soon as possible').
obligation(art_36_par_3, notified_body, 'inform the notifying authority and the providers concerned at least one year before a planned cessation').
obligation(art_36_par_3, notified_body, 'confirm in writing that it will assume responsibilities for the high‑risk AI systems covered by the certificates').
obligation(art_36_par_3, notified_body, 'complete a full assessment of the high‑risk AI systems affected by the end of the nine‑month period before issuing new certificates for those systems').
obligation(art_36_par_3, notifying_authority, 'withdraw the designation when the notified body has ceased its activity').
condition(art_36_par_3, 'certificates may remain valid for nine months after cessation on condition that another notified body has confirmed in writing that it will assume responsibilities for the high‑risk AI systems covered by those certificates').

% ==== celex:32024R1689/oj#art_36/par_4 ====
unit(art_36_par_4, 'celex:32024R1689/oj#art_36/par_4', paragraph).
references(art_36_par_4, art_31).
condition(art_36_par_4, 'notifying authority has sufficient reason to consider that a notified body no longer meets the requirements laid down in art_31 or is failing to fulfil its obligations').
obligation(art_36_par_4, notifying_authority, 'investigate the matter with the utmost diligence without delay').
obligation(art_36_par_4, notifying_authority, 'inform the notified body concerned about the objections raised').
obligation(art_36_par_4, notifying_authority, 'give the notified body the possibility to make its views known').
obligation(art_36_par_4, notifying_authority, 'restrict, suspend or withdraw the designation as appropriate').
obligation(art_36_par_4, notifying_authority, 'inform the Commission and the other Member States immediately').

% ==== celex:32024R1689/oj#art_36/par_5 ====
unit(art_36_par_5, 'celex:32024R1689/oj#art_36/par_5', paragraph).
condition(art_36_par_5, 'its designation has been suspended, restricted, or fully or partially withdrawn').
obligation(art_36_par_5, notified_body, 'inform the providers concerned within 10 days').

% ==== celex:32024R1689/oj#art_36/par_6 ====
unit(art_36_par_6, 'celex:32024R1689/oj#art_36/par_6', paragraph).
condition(art_36_par_6, 'restriction, suspension or withdrawal of a designation').
obligation(art_36_par_6, notifying_authority, 'take appropriate steps to ensure that the files of the notified body concerned are kept and made available to notifying authorities in other Member States and to market surveillance authorities at their request').

% ==== celex:32024R1689/oj#art_36/par_7 ====
unit(art_36_par_7, 'celex:32024R1689/oj#art_36/par_7', paragraph).
obligation(art_36_par_7, notifying_authority, 'assess the impact on the certificates issued by the notified body').
obligation(art_36_par_7, notifying_authority, 'submit a report on its findings to the Commission and the other Member States within three months of having notified the changes to the designation').
obligation(art_36_par_7, notifying_authority, 'require the notified body to suspend or withdraw, within a reasonable period of time determined by the authority, any certificates which were unduly issued, in order to ensure the continuing conformity of high-risk AI systems on the market').
obligation(art_36_par_7, notifying_authority, 'inform the Commission and the Member States about certificates the suspension or withdrawal of which it has required').
obligation(art_36_par_7, notifying_authority, 'provide the national competent authorities of the Member State in which the provider has its registered place of business with all relevant information about the certificates of which it has required the suspension or withdrawal; that authority shall take the appropriate measures, where necessary, to avoid a potential risk to health, safety or fundamental rights').

% ==== celex:32024R1689/oj#art_36/par_8 ====
unit(art_36_par_8, 'celex:32024R1689/oj#art_36/par_8', paragraph).
condition(art_36_par_8, 'certificates shall remain valid if either (a) or (b) conditions are satisfied').
requirement(art_36_par_8, notifying_authority, 'confirm within one month of the suspension or restriction that there is no risk to health, safety or fundamental rights and outline a timeline for actions to remedy the suspension or restriction').
deadline(art_36_par_8, notifying_authority, 'within one month of the suspension or restriction').
requirement(art_36_par_8, notifying_authority, 'confirm that no certificates relevant to the suspension will be issued, amended or re‑issued during the suspension or restriction and state whether the notified body can continue to monitor and remain responsible for existing certificates').
obligation(art_36_par_8, provider, 'confirm in writing to the national competent authorities of the Member State where it has its registered place of business, within three months of the suspension or restriction, that another qualified notified body is temporarily assuming the functions of the notified body to monitor and remain responsible for the certificates during the suspension or restriction').
deadline(art_36_par_8, provider, 'within three months of the suspension or restriction').

% ==== celex:32024R1689/oj#art_36/par_9/unp_1 ====
unit(art_36_par_9_unp_1, 'celex:32024R1689/oj#art_36/par_9/unp_1', paragraph).
exemption(art_36_par_9_unp_1, certificate, 'certificates unduly issued or where a designation has been withdrawn').
requirement(art_36_par_9_unp_1, certificate_validity, 'nine months').
condition(art_36_par_9_unp_1, 'national competent authority has confirmed no risk to health, safety or fundamental rights').
condition(art_36_par_9_unp_1, 'another notified body has confirmed in writing it will assume immediate responsibility and complete assessment within 12 months of the withdrawal of the designation').

% ==== celex:32024R1689/oj#art_37 ====
unit(art_37, 'celex:32024R1689/oj#art_37', article).
title(art_37, 'Challenge to the competence of notified bodies').
references(art_37, art_31).
references(art_37, art_37).
references(art_37, art_78).
references(art_37, art_98_par_2).
obligation(art_37, commission, 'investigate all cases where there are reasons to doubt the competence of a notified body or the continued fulfilment of the requirements laid down in art_31 and its applicable responsibilities').
obligation(art_37, notifying_authority, 'provide the Commission, on request, with all relevant information relating to the notification or the maintenance of the competence of the notified body concerned').
obligation(art_37, commission, 'ensure that all sensitive information obtained in the course of its investigations pursuant to art_37 is treated confidentially in accordance with art_78').
condition(art_37, 'where the Commission ascertains that a notified body does not meet or no longer meets the requirements for its notification').
obligation(art_37, commission, 'inform the notifying Member State accordingly and request it to take the necessary corrective measures, including suspension or withdrawal of the notification').
condition(art_37, 'where the Member State fails to take the necessary corrective measures').
obligation(art_37, commission, 'may, by means of an implementing act, suspend, restrict or withdraw the designation').
requirement(art_37, implementing_act, 'adopted in accordance with the examination procedure referred to in art_98_par_2').

% ==== celex:32024R1689/oj#art_38/par_1 ====
unit(art_38_par_1, 'celex:32024R1689/oj#art_38/par_1', paragraph).
references(art_38_par_1, 'celex:32024R1689/oj').
obligation(art_38_par_1, commission, 'ensure that, with regard to high-risk AI systems, appropriate coordination and cooperation between notified bodies active in the conformity assessment procedures pursuant to the Regulation are put in place and properly operated in the form of a sectoral group of notified bodies').

% ==== celex:32024R1689/oj#art_40/par_2/unp_1 ====
unit(art_40_par_2_unp_1, 'celex:32024R1689/oj#art_40/par_2/unp_1', paragraph).
references(art_40_par_2_unp_1, 'celex:32012R1025/oj#art_10').
references(art_40_par_2_unp_1, chp_3_sec_2).
references(art_40_par_2_unp_1, chp_5_sec_2).
references(art_40_par_2_unp_1, chp_5_sec_3).
obligation(art_40_par_2_unp_1, commission, 'issue standardisation requests covering all requirements set out in chp_3_sec_2 and, as applicable, obligations set out in chp_5_sec_2 and chp_5_sec_3').
obligation(art_40_par_2_unp_1, commission, 'consult the Board and relevant stakeholders, including the advisory forum when preparing a standardisation request').

% ==== celex:32024R1689/oj#art_40/par_2/unp_2 ====
unit(art_40_par_2_unp_2, 'celex:32024R1689/oj#art_40/par_2/unp_2', paragraph).
references(art_40_par_2_unp_2, anx_1).
references(art_40_par_2_unp_2, 'celex:32024R1689/oj').
obligation(art_40_par_2_unp_2, commission, 'specify that standards must be clear, consistent, and aligned with sector standards for products covered by Union harmonisation legislation listed in anx_1, to ensure high-risk AI systems or general-purpose AI models placed on the market or put into service in the Union meet the relevant requirements or obligations laid down in the Regulation').

% ==== celex:32024R1689/oj#art_41/par_1/unp_1 ====
unit(art_41_par_1_unp_1, 'celex:32024R1689/oj#art_41/par_1/unp_1', paragraph).
references(art_41_par_1_unp_1, chp_3_sec_2).
references(art_41_par_1_unp_1, chp_5_sec_2).
references(art_41_par_1_unp_1, chp_5_sec_3).
references(art_41_par_1_unp_1, 'celex:32012R1025/oj#art_10/par_1').
references(art_41_par_1_unp_1, 'celex:32012R1025/oj').
obligation(art_41_par_1_unp_1, commission, 'adopt implementing acts establishing common specifications for the requirements or obligations set out in the referenced chapters').
condition(art_41_par_1_unp_1, 'the Commission has requested, pursuant to ''celex:32012R1025/oj#art_10/par_1'', one or more European standardisation organisations to draft a harmonised standard, and either the request has not been accepted, or the standards are not delivered within the deadline, or they insufficiently address fundamental rights, or they do not comply with the request').
condition(art_41_par_1_unp_1, 'no reference to harmonised standards covering the requirements or obligations has been published in the Official Journal in accordance with ''celex:32012R1025/oj'', and no such reference is expected to be published within a reasonable period').

% ==== celex:32024R1689/oj#art_43/par_1/unp_2/pnt_a ====
unit(art_43_par_1_unp_2_pnt_a, 'celex:32024R1689/oj#art_43/par_1/unp_2/pnt_a', point).
references(art_43_par_1_unp_2_pnt_a, art_40).
references(art_43_par_1_unp_2_pnt_a, art_41).

% ==== celex:32024R1689/oj#art_43/par_2 ====
unit(art_43_par_2, 'celex:32024R1689/oj#art_43/par_2', paragraph).
references(art_43_par_2, anx_3_pnt_2).
references(art_43_par_2, anx_3_pnt_3).
references(art_43_par_2, anx_3_pnt_4).
references(art_43_par_2, anx_3_pnt_5).
references(art_43_par_2, anx_3_pnt_6).
references(art_43_par_2, anx_3_pnt_7).
references(art_43_par_2, anx_3_pnt_8).
references(art_43_par_2, anx_6).
obligation(art_43_par_2, provider, 'follow the conformity assessment procedure based on internal control as referred to in annex 6, which does not provide for the involvement of a notified body').

% ==== celex:32024R1689/oj#art_43/par_4 ====
unit(art_43_par_4, 'celex:32024R1689/oj#art_43/par_4', paragraph).
references(art_43_par_4, anx_4_pnt_2_pnt_f).
obligation(art_43_par_4, provider, 'undergo a new conformity assessment procedure in the event of a substantial modification').
condition(art_43_par_4, 'pre‑determined changes included in the technical documentation are not a substantial modification').

% ==== celex:32024R1689/oj#art_43/par_5 ====
unit(art_43_par_5, 'celex:32024R1689/oj#art_43/par_5', paragraph).
references(art_43_par_5, art_97).
references(art_43_par_5, anx_6).
references(art_43_par_5, anx_7).

% ==== celex:32024R1689/oj#art_43/par_6 ====
unit(art_43_par_6, 'celex:32024R1689/oj#art_43/par_6', paragraph).
references(art_43_par_6, art_97).
references(art_43_par_6, art_43_par_1).
references(art_43_par_6, art_43_par_2).
references(art_43_par_6, anx_3_pnt_2).
references(art_43_par_6, anx_3_pnt_3).
references(art_43_par_6, anx_3_pnt_4).
references(art_43_par_6, anx_3_pnt_5).
references(art_43_par_6, anx_3_pnt_6).
references(art_43_par_6, anx_3_pnt_7).
references(art_43_par_6, anx_3_pnt_8).
references(art_43_par_6, anx_7).
references(art_43_par_6, anx_6).
obligation(art_43_par_6, commission, 'adopt delegated acts in accordance with art_97 to amend art_43_par_1 and art_43_par_2, and to subject high-risk AI systems referred to in anx_3_pnt_2, anx_3_pnt_3, anx_3_pnt_4, anx_3_pnt_5, anx_3_pnt_6, anx_3_pnt_7, anx_3_pnt_8 to the conformity assessment procedure referred to in anx_7 or parts thereof').
obligation(art_43_par_6, commission, 'adopt such delegated acts taking into account the effectiveness of the conformity assessment procedure based on internal control referred to in anx_6 in preventing or minimising the risks to health and safety and protection of fundamental rights posed by such systems, as well as the availability of adequate capacities and resources among notified bodies').

% ==== celex:32024R1689/oj#art_44 ====
unit(art_44, 'celex:32024R1689/oj#art_44', article).
title(art_44, 'Certificates').
references(art_44, anx_7).
references(art_44, anx_1).
references(art_44, anx_3).
references(art_44, chp_3_sec_2).
obligation(art_44, notified_body, 'draw up certificates in a language easily understood by the relevant authorities in the Member State where the notified body is established').
requirement(art_44, certificate, 'validity period not exceeding five years for AI systems covered by annex 1 and four years for those covered by annex 3').
condition(art_44, 'validity may be extended at the request of the provider for further periods not exceeding five years for annex 1 systems and four years for annex 3 systems, based on re‑assessment').
obligation(art_44, notified_body, 'suspend, withdraw or impose restrictions on a certificate if the AI system no longer meets the requirements of Chapter 3 Section 2, taking account of proportionality').
requirement(art_44, provider, 'take appropriate corrective action within an appropriate deadline set by the notified body to ensure compliance with the requirements').
deadline(art_44, 'appropriate deadline set by the notified body').
obligation(art_44, notified_body, 'give reasons for its decision').
requirement(art_44, appeal_procedure, 'shall be available for decisions of notified bodies, including on conformity certificates issued').

% ==== celex:32024R1689/oj#art_46/par_1 ====
unit(art_46_par_1, 'celex:32024R1689/oj#art_46/par_1', paragraph).
references(art_46_par_1, art_43).
applies_to(art_46_par_1, market_surveillance_authority).
condition(art_46_par_1, 'derogation from art_43 and duly justified request').
condition(art_46_par_1, 'exceptional reasons of public security or protection of life and health of persons, environmental protection or protection of key industrial and infrastructural assets').
requirement(art_46_par_1, authorisation, 'limited period while conformity assessment procedures are being carried out').

% ==== celex:32024R1689/oj#art_46/par_2 ====
unit(art_46_par_2, 'celex:32024R1689/oj#art_46/par_2', paragraph).
references(art_46_par_2, art_46_par_1).
requirement(art_46_par_2, law_enforcement_authority, 'request authorisation during or after the use without undue delay').
requirement(art_46_par_2, civil_protection_authority, 'request authorisation during or after the use without undue delay').
obligation(art_46_par_2, law_enforcement_authority, 'stop use with immediate effect and discard all results and outputs').
obligation(art_46_par_2, civil_protection_authority, 'stop use with immediate effect and discard all results and outputs').
condition(art_46_par_2, 'authorisation is refused').

% ==== celex:32024R1689/oj#art_46/par_3 ====
unit(art_46_par_3, 'celex:32024R1689/oj#art_46/par_3', paragraph).
references(art_46_par_3, art_46_par_1).
references(art_46_par_3, chp_3_sec_2).
references(art_46_par_3, art_46_par_2).
obligation(art_46_par_3, market_surveillance_authority, 'inform the Commission and the other Member States of any authorisation issued pursuant to art_46_par_1 and art_46_par_2').
condition(art_46_par_3, 'authorisation shall be issued only if the market surveillance authority concludes that the high-risk AI system complies with the requirements of chp_3_sec_2').
exempt(art_46_par_3, market_surveillance_authority, 'sensitive operational data in relation to law‑enforcement authorities').

% ==== celex:32024R1689/oj#art_47/par_1 ====
unit(art_47_par_1, 'celex:32024R1689/oj#art_47/par_1', paragraph).
obligation(art_47_par_1, provider, 'draw up a written machine readable, physical or electronically signed EU declaration of conformity for each high-risk AI system').
obligation(art_47_par_1, provider, 'keep the EU declaration of conformity at the disposal of the national competent authorities for 10 years after the high-risk AI system has been placed on the market or put into service').
obligation(art_47_par_1, provider, 'ensure the EU declaration of conformity identifies the high-risk AI system for which it has been drawn up').
obligation(art_47_par_1, provider, 'submit a copy of the EU declaration of conformity to the relevant national competent authorities upon request').

% ==== celex:32024R1689/oj#art_47/par_2 ====
unit(art_47_par_2, 'celex:32024R1689/oj#art_47/par_2', paragraph).
references(art_47_par_2, chp_3_sec_2).
references(art_47_par_2, anx_5).
obligation(art_47_par_2, eu_declaration_of_conformity, 'state that the high-risk AI system concerned meets the requirements set out in chp_3_sec_2').
obligation(art_47_par_2, eu_declaration_of_conformity, 'contain the information set out in anx_5').
obligation(art_47_par_2, eu_declaration_of_conformity, 'be translated into a language that can be easily understood by the national competent authorities of the Member States in which the high-risk AI system is placed on the market or made available').

% ==== celex:32024R1689/oj#art_47/par_5 ====
unit(art_47_par_5, 'celex:32024R1689/oj#art_47/par_5', paragraph).
references(art_47_par_5, art_97).
references(art_47_par_5, anx_5).

% ==== celex:32024R1689/oj#art_48 ====
unit(art_48, 'celex:32024R1689/oj#art_48', article).
title(art_48, 'CE marking').
references(art_48, 'celex:32008R0765/oj#art_30').
references(art_48, art_43).
obligation(art_48_3, provider, 'affix CE marking visibly, legibly and indelibly for high-risk AI systems; if not possible, affix to packaging or accompanying documentation as appropriate').
obligation(art_48_4, notified_body, 'affix identification number of the notified body to the CE marking').
obligation(art_48_4, provider, 'affix identification number of the notified body to the CE marking under the notified body’s instructions').
obligation(art_48_4, authorised_representative, 'affix identification number of the notified body to the CE marking under the notified body’s instructions').
obligation(art_48_4, provider, 'indicate identification number in any promotional material mentioning CE marking compliance').
obligation(art_48_5, provider, 'indicate that the high-risk AI system also fulfills the requirements of the other Union law when applicable').
requirement(art_48_2, digital_ce_marking, 'shall be used only if it can easily be accessed via the interface from which the system is accessed or via an easily accessible machine-readable code or other electronic means').
condition(art_48_4, 'where applicable').

% ==== celex:32024R1689/oj#art_49/par_1 ====
unit(art_49_par_1, 'celex:32024R1689/oj#art_49/par_1', paragraph).
references(art_49_par_1, anx_3).
references(art_49_par_1, anx_3_pnt_2).
references(art_49_par_1, art_71).
obligation(art_49_par_1, provider, 'register themselves and their system in the EU database referred to in art_71').
obligation(art_49_par_1, authorised_representative, 'register themselves and their system in the EU database referred to in art_71').
condition(art_49_par_1, 'before placing on the market or putting into service a high-risk AI system listed in anx_3, except those referred to in anx_3_pnt_2').

% ==== celex:32024R1689/oj#art_49/par_2 ====
unit(art_49_par_2, 'celex:32024R1689/oj#art_49/par_2', paragraph).
references(art_49_par_2, art_6_par_3).
references(art_49_par_2, art_71).
condition(art_49_par_2, 'provider has concluded that the AI system is not high‑risk according to art_6_par_3').
obligation(art_49_par_2, provider, 'register themselves and that system in the EU database referred to in art_71').
obligation(art_49_par_2, authorised_representative, 'register themselves and that system in the EU database referred to in art_71').

% ==== celex:32024R1689/oj#art_49/par_3 ====
unit(art_49_par_3, 'celex:32024R1689/oj#art_49/par_3', paragraph).
references(art_49_par_3, anx_3).
references(art_49_par_3, anx_3_pnt_2).
references(art_49_par_3, art_71).
obligation(art_49_par_3, deployer, 'register themselves, select the system and register its use in the EU database referred to in art_71').
condition(art_49_par_3, 'before putting into service or using a high-risk AI system listed in anx_3, except those listed in anx_3_pnt_2').

% ==== celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d ====
unit(art_49_par_4_unp_1_pnt_d, 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d', point).
references(art_49_par_4_unp_1_pnt_d, anx_9_pnt_1).
references(art_49_par_4_unp_1_pnt_d, anx_9_pnt_2).
references(art_49_par_4_unp_1_pnt_d, anx_9_pnt_3).
references(art_49_par_4_unp_1_pnt_d, anx_9_pnt_5).

% ==== celex:32024R1689/oj#art_49/par_5 ====
unit(art_49_par_5, 'celex:32024R1689/oj#art_49/par_5', paragraph).
references(art_49_par_5, anx_3_pnt_2).
obligation(art_49_par_5, high_risk_ai_system, 'registered at national level').

% ==== celex:32024R1689/oj#art_50/par_1 ====
unit(art_50_par_1, 'celex:32024R1689/oj#art_50/par_1', paragraph).
obligation(art_50_par_1, provider, 'ensure AI systems intended to interact directly with natural persons are designed and developed so that the natural persons concerned are informed that they are interacting with an AI system').
exempt(art_50_par_1, provider, 'AI systems authorised by law to detect, prevent, investigate or prosecute criminal offences, subject to appropriate safeguards for the rights and freedoms of third parties, unless those systems are available for the public to report a criminal offence').

% ==== celex:32024R1689/oj#art_50/par_2 ====
unit(art_50_par_2, 'celex:32024R1689/oj#art_50/par_2', paragraph).
obligation(art_50_par_2, provider, 'ensure that the outputs of the AI system are marked in a machine‑readable format and detectable as artificially generated or manipulated').
obligation(art_50_par_2, provider, 'ensure that technical solutions are effective, interoperable, robust and reliable as far as technically feasible, taking into account specificities and limitations of various types of content, costs of implementation and the generally acknowledged state of the art').
exempt(art_50_par_2, provider, 'where the AI systems perform an assistive function for standard editing, do not substantially alter the input data provided by the deployer or its semantics, or where authorised by law to detect, prevent, investigate or prosecute criminal offences').

% ==== celex:32024R1689/oj#art_50/par_3 ====
unit(art_50_par_3, 'celex:32024R1689/oj#art_50/par_3', paragraph).
references(art_50_par_3, 'celex:32016R0679/oj').
references(art_50_par_3, 'celex:32018R1725/oj').
references(art_50_par_3, 'celex:32016L0680/oj').
obligation(art_50_par_3, deployer, 'inform the natural persons exposed thereto of the operation of the system').
obligation(art_50_par_3, deployer, 'process the personal data in accordance with the referenced regulations').
exempt(art_50_par_3, deployer, 'AI systems used for biometric categorisation or emotion recognition for detecting, preventing or investigating criminal offences, subject to appropriate safeguards and Union law').

% ==== celex:32024R1689/oj#art_50/par_4 ====
unit(art_50_par_4, 'celex:32024R1689/oj#art_50/par_4', paragraph).
references(art_50_par_4, art_50_par_4).
obligation(art_50_par_4, deployer, 'disclose that image, audio or video deep fake content has been artificially generated or manipulated').
obligation(art_50_par_4, deployer, 'disclose that text generated or manipulated for public interest has been artificially generated or manipulated').
exempt(art_50_par_4, deployer, 'where the use is authorised by law to detect, prevent, investigate or prosecute criminal offence').
exempt(art_50_par_4, deployer, 'where the AI-generated text has undergone human review or editorial control and a natural or legal person holds editorial responsibility for the publication').
condition(art_50_par_4, 'where the content forms part of an artistic, creative, satirical, fictional or analogous work or programme').
requirement(art_50_par_4, transparency, 'disclosure limited to existence of such generated or manipulated content in an appropriate manner that does not hamper display or enjoyment').

% ==== celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a ====
unit(art_51_par_1_unp_1_pnt_a, 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a', point).
requirement(art_51_par_1_unp_1_pnt_a, high_impact_capabilities, 'evaluated on the basis of appropriate technical tools and methodologies, including indicators and benchmarks').

% ==== celex:32024R1689/oj#art_51/par_2 ====
unit(art_51_par_2, 'celex:32024R1689/oj#art_51/par_2', paragraph).
references(art_51_par_2, art_51_par_1_unp_1_pnt_a).
obligation(art_51_par_2, general_purpose_ai_model, 'be presumed to have high impact capabilities').
condition(art_51_par_2, 'cumulative amount of computation used for its training measured in floating point operations is greater than 1025').

% ==== celex:32024R1689/oj#art_51/par_3 ====
unit(art_51_par_3, 'celex:32024R1689/oj#art_51/par_3', paragraph).
references(art_51_par_3, art_97).
references(art_51_par_3, art_51_par_1).
references(art_51_par_3, art_51_par_2).
obligation(art_51_par_3, commission, 'adopt delegated acts in accordance with art_97 to amend the thresholds listed in art_51_par_1 and art_51_par_2, and to supplement benchmarks and indicators in light of evolving technological developments when necessary, for these thresholds to reflect the state of the art').

% ==== celex:32024R1689/oj#art_52/par_2 ====
unit(art_52_par_2, 'celex:32024R1689/oj#art_52/par_2', paragraph).
references(art_52_par_2, art_51_par_1_unp_1_pnt_a).
condition(art_52_par_2, 'the provider of a general-purpose AI model that meets the condition referred to in art_51_par_1_unp_1_pnt_a').
permission(art_52_par_2, provider, 'present, with its notification, sufficiently substantiated arguments to demonstrate that, exceptionally, although it meets that requirement, the general-purpose AI model does not present systemic risks and should not be classified as a general-purpose AI model with systemic risk').

% ==== celex:32024R1689/oj#art_52/par_4 ====
unit(art_52_par_4, 'celex:32024R1689/oj#art_52/par_4', paragraph).
references(art_52_par_4, art_90_par_1_unp_1_pnt_a).
references(art_52_par_4, anx_13).
references(art_52_par_4, art_97).

% ==== celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a ====
unit(art_53_par_1_unp_1_pnt_a, 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a', point).
references(art_53_par_1_unp_1_pnt_a, anx_11).

% ==== celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b ====
unit(art_53_par_1_unp_1_pnt_b, 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b', point).
references(art_53_par_1_unp_1_pnt_b, 'celex:32024R1689/oj').
references(art_53_par_1_unp_1_pnt_b, anx_12).
obligation(art_53_par_1_unp_1_pnt_b, provider, 'draw up, keep up-to-date and make available information and documentation to providers of AI systems who intend to integrate the general-purpose AI model into their AI systems').
condition(art_53_par_1_unp_1_pnt_b, 'observe and protect intellectual property rights and confidential business information or trade secrets in accordance with Union and national law').
requirement(art_53_par_1_unp_1_pnt_b, provider, 'enable providers of AI systems to have a good understanding of the capabilities and limitations of the general-purpose AI model and to comply with their obligations pursuant to the Regulation').
requirement(art_53_par_1_unp_1_pnt_b, provider, 'contain, at a minimum, the elements set out in anx_12').

% ==== celex:32024R1689/oj#art_53/par_5 ====
unit(art_53_par_5, 'celex:32024R1689/oj#art_53/par_5', paragraph).
references(art_53_par_5, anx_11).
references(art_53_par_5, art_97).
empowered(art_53_par_5, commission, 'adopt delegated acts in accordance with art_97 to detail measurement and calculation methodologies').

% ==== celex:32024R1689/oj#art_53/par_6 ====
unit(art_53_par_6, 'celex:32024R1689/oj#art_53/par_6', paragraph).
references(art_53_par_6, art_97_par_2).
references(art_53_par_6, anx_11).
references(art_53_par_6, anx_12).
obligation(art_53_par_6, commission, 'adopt delegated acts in accordance with art_97_par_2 to amend anx_11 and anx_12 in light of evolving technological developments').

% ==== celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b ====
unit(art_54_par_3_unp_1_pnt_b, 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b', point).
references(art_54_par_3_unp_1_pnt_b, anx_11).
obligation(art_54_par_3_unp_1_pnt_b, provider, 'keep a copy of the technical documentation specified in anx_11 and the contact details of the provider that appointed the authorised representative at the disposal of the AI Office and national competent authorities').
condition(art_54_par_3_unp_1_pnt_b, 'for a period of 10 years after the general-purpose AI model has been placed on the market').

% ==== celex:32024R1689/oj#art_55/par_1 ====
unit(art_55_par_1, 'celex:32024R1689/oj#art_55/par_1', paragraph).
references(art_55_par_1, art_53).
references(art_55_par_1, art_54).
obligation(art_55_par_1, provider, 'perform model evaluation in accordance with standardised protocols and tools reflecting the state of the art, including conducting and documenting adversarial testing of the model with a view to identifying and mitigating systemic risks').
obligation(art_55_par_1, provider, 'assess and mitigate possible systemic risks at Union level, including their sources, that may stem from the development, the placing on the market, or the use of general-purpose AI models with systemic risk').
obligation(art_55_par_1, provider, 'keep track of, document, and report, without undue delay, to the AI Office and, as appropriate, to national competent authorities, relevant information about serious incidents and possible corrective measures to address them').
obligation(art_55_par_1, provider, 'ensure an adequate level of cybersecurity protection for the general-purpose AI model with systemic risk and the physical infrastructure of the model').

% ==== celex:32024R1689/oj#art_56/par_2 ====
unit(art_56_par_2, 'celex:32024R1689/oj#art_56/par_2', paragraph).
references(art_56_par_2, art_53).
references(art_56_par_2, art_55).
references(art_56_par_2, art_53_par_1_unp_1_pnt_a).
references(art_56_par_2, art_53_par_1_unp_1_pnt_b).
obligation(art_56_par_2, [ai_office, board], 'shall aim to ensure that the codes of practice cover at least the obligations provided for in the referenced provisions').
requirement(art_56_par_2, information_update, 'ensure that the information referred to in art_53_par_1_unp_1_pnt_a and art_53_par_1_unp_1_pnt_b is kept up to date in light of market and technological developments').
requirement(art_56_par_2, summary_detail, 'ensure an adequate level of detail for the summary about the content used for training').
requirement(art_56_par_2, systemic_risk_identification, 'identify the type and nature of the systemic risks at Union level, including their sources, where appropriate').
requirement(art_56_par_2, systemic_risk_management, 'establish measures, procedures and modalities for the assessment and management of the systemic risks at Union level, proportionate to the risks, taking into consideration their severity and probability and the specific challenges of tackling those risks').

% ==== celex:32024R1689/oj#art_56/par_6 ====
unit(art_56_par_6, 'celex:32024R1689/oj#art_56/par_6', paragraph).
references(art_56_par_6, 'celex:32024R1689/oj').
references(art_56_par_6, art_53).
references(art_56_par_6, art_55).
references(art_56_par_6, art_98_par_2).
obligation(art_56_par_6, ai_office, 'shall regularly monitor and evaluate the achievement of the objectives of the codes of practice by the participants and their contribution to the proper application of the Regulation').
obligation(art_56_par_6, board, 'shall regularly monitor and evaluate the achievement of the objectives of the codes of practice by the participants and their contribution to the proper application of the Regulation').
obligation(art_56_par_6, ai_office, 'shall assess whether the codes of practice cover the obligations provided for in art_53 and art_55, shall regularly monitor and evaluate the achievement of their objectives, and shall publish the assessment of the adequacy of the codes of practice').
obligation(art_56_par_6, board, 'shall assess whether the codes of practice cover the obligations provided for in art_53 and art_55, shall regularly monitor and evaluate the achievement of their objectives, and shall publish the assessment of the adequacy of the codes of practice').
requirement(art_56_par_6, implementing_act, 'shall be adopted in accordance with the examination procedure referred to in art_98_par_2').

% ==== celex:32024R1689/oj#art_56/par_7 ====
unit(art_56_par_7, 'celex:32024R1689/oj#art_56/par_7', paragraph).
references(art_56_par_7, art_53).
condition(art_56_par_7, 'providers of general-purpose AI models not presenting systemic risks').
requirement(art_56_par_7, provider, 'adhere to the obligations provided for in art_53').
exempt(art_56_par_7, provider, 'if they declare explicitly their interest to join the full code').

% ==== celex:32024R1689/oj#art_57/par_1/unp_1 ====
unit(art_57_par_1_unp_1, 'celex:32024R1689/oj#art_57/par_1/unp_1', paragraph).
obligation(art_57_par_1_unp_1, member_state, 'ensure that competent authorities establish at least one AI regulatory sandbox at national level, which shall be operational by 2 August 2026').
deadline(art_57_par_1_unp_1, '2 August 2026').
applies_to(art_57_par_1_unp_1, member_state).

% ==== celex:32024R1689/oj#art_57/par_2 ====
unit(art_57_par_2, 'celex:32024R1689/oj#art_57/par_2', paragraph).

% ==== celex:32024R1689/oj#art_58/par_1 ====
unit(art_58_par_1, 'celex:32024R1689/oj#art_58/par_1', paragraph).
references(art_58_par_1, art_98_par_2).
obligation(art_58_par_1, commission, 'adopt implementing acts specifying the detailed arrangements for the establishment, development, implementation, operation and supervision of the AI regulatory sandboxes').
requirement(art_58_par_1, implementing_act, 'include common principles on eligibility and selection criteria for participation in the AI regulatory sandbox; procedures for the application, participation, monitoring, exiting from and termination of the AI regulatory sandbox, including the sandbox plan and the exit report; and the terms and conditions applicable to the participants').
condition(art_58_par_1, 'adopted in accordance with the examination procedure referred to in art_98_par_2').

% ==== celex:32024R1689/oj#art_58/par_2 ====
unit(art_58_par_2, 'celex:32024R1689/oj#art_58/par_2', paragraph).
references(art_58_par_2, art_58_par_1).
references(art_58_par_2, 'celex:32024R1689/oj').
references(art_58_par_2, art_95).
obligation(art_58_par_2, implementing_act, 'AI regulatory sandboxes are open to any applying provider or prospective provider of an AI system who fulfils eligibility and selection criteria, which shall be transparent and fair, and national competent authorities inform applicants of their decision within three months of the application').
obligation(art_58_par_2, implementing_act, 'AI regulatory sandboxes allow broad and equal access and keep up with demand for participation; providers and prospective providers may also submit applications in partnerships with deployers and other relevant third parties').
obligation(art_58_par_2, implementing_act, 'detailed arrangements for, and conditions concerning AI regulatory sandboxes support, to the best extent possible, flexibility for national competent authorities to establish and operate their AI regulatory sandboxes').
obligation(art_58_par_2, implementing_act, 'access to the AI regulatory sandboxes is free of charge for SMEs, including start-ups, without prejudice to exceptional costs that national competent authorities may recover in a fair and proportionate manner').
obligation(art_58_par_2, implementing_act, 'they facilitate providers and prospective providers, by means of the learning outcomes of the AI regulatory sandboxes, in complying with conformity assessment obligations under the act and the voluntary application of the codes of conduct referred to in art_95').
obligation(art_58_par_2, implementing_act, 'AI regulatory sandboxes facilitate the involvement of other relevant actors within the AI ecosystem, such as notified bodies and standardisation organisations, SMEs, including start-ups, enterprises, innovators, testing and experimentation facilities, research and experimentation labs and European Digital Innovation Hubs, centres of excellence, individual researchers, in order to allow and facilitate cooperation with the public and private sectors').
obligation(art_58_par_2, implementing_act, 'procedures, processes and administrative requirements for application, selection, participation and exiting the AI regulatory sandbox are simple, easily intelligible, and clearly communicated, and are streamlined across the Union to avoid fragmentation, and participation in an AI regulatory sandbox established by a Member State, or by the European Data Protection Supervisor is mutually and uniformly recognised and carries the same legal effects across the Union').
obligation(art_58_par_2, implementing_act, 'participation in the AI regulatory sandbox is limited to a period appropriate to the complexity and scale of the project and may be extended by the national competent authority').
obligation(art_58_par_2, implementing_act, 'AI regulatory sandboxes facilitate the development of tools and infrastructure for testing, benchmarking, assessing and explaining dimensions of AI systems relevant for regulatory learning, such as accuracy, robustness and cybersecurity, and measures to mitigate risks to fundamental rights and society at large').

% ==== celex:32024R1689/oj#art_59/par_1 ====
unit(art_59_par_1, 'celex:32024R1689/oj#art_59/par_1', paragraph).
references(art_59_par_1, chp_3_sec_2).
references(art_59_par_1, 'celex:32016R0679/oj#art_35').
references(art_59_par_1, 'celex:32018R1725/oj#art_39').
references(art_59_par_1, anx_4).
condition(art_59_par_1, 'personal data may be processed in the AI regulatory sandbox only when all of the following conditions are met').
condition(art_59_par_1, 'AI systems shall be developed for safeguarding substantial public interest by a public authority or another natural or legal person and in one or more of the following areas: public safety and public health; high level of environmental protection and biodiversity; energy sustainability; safety and resilience of transport systems and critical infrastructure; efficiency and quality of public administration and public services').
condition(art_59_par_1, 'the data processed are necessary for complying with requirements referred to in chp_3_sec_2 and cannot be effectively fulfilled by anonymised, synthetic or other non‑personal data').
condition(art_59_par_1, 'effective monitoring mechanisms are in place to identify high risks to the rights and freedoms of data subjects as referred to in art_35 of celex:32016R0679/oj and art_39 of celex:32018R1725/oj, together with response mechanisms to promptly mitigate those risks or stop the processing').
condition(art_59_par_1, 'any personal data processed are kept in a functionally separate, isolated and protected data processing environment under the control of the prospective provider, with access limited to authorised persons').
condition(art_59_par_1, 'providers may share the originally collected data only in accordance with Union data protection law; personal data created in the sandbox cannot be shared outside the sandbox').
condition(art_59_par_1, 'processing of personal data in the sandbox neither leads to measures or decisions affecting the data subjects nor affects the application of their rights laid down in Union law on the protection of personal data').
condition(art_59_par_1, 'personal data processed in the sandbox are protected by appropriate technical and organisational measures and are deleted once participation in the sandbox has terminated or the data have reached the end of their retention period').
condition(art_59_par_1, 'logs of the processing of personal data are kept for the duration of the participation in the sandbox unless provided otherwise by Union or national law').
condition(art_59_par_1, 'a complete and detailed description of the process and rationale behind the training, testing and validation of the AI system, together with the testing results, is kept as part of the technical documentation referred to in anx_4').
obligation(art_59_par_1, competent_authorities, 'publish a short summary of the AI project developed in the sandbox, its objectives and expected results on the website of the competent authorities, excluding sensitive operational data related to law enforcement, border control, immigration or asylum authorities').

% ==== celex:32024R1689/oj#art_60/par_1 ====
unit(art_60_par_1, 'celex:32024R1689/oj#art_60/par_1', paragraph).
references(art_60_par_1, anx_3).
references(art_60_par_1, art_60).
references(art_60_par_1, art_5).
references(art_60_par_1, art_98_par_2).
references(art_60_par_1, art_60_par_1).
references(art_60_par_1, anx_1).
obligation(art_60_par_1, commission, 'specify the detailed elements of the real-world testing plan').
obligation(art_60_par_1, implementing_act, 'be adopted in accordance with the examination procedure referred to in art_98_par_2').
applies_to(art_60_par_1, provider).

% ==== celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b ====
unit(art_60_par_4_unp_1_pnt_b, 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b', point).
obligation(art_60_par_4_unp_1_pnt_b, market_surveillance_authority, 'approve the testing in real world conditions and the real‑world testing plan').
condition(art_60_par_4_unp_1_pnt_b, 'if the market surveillance authority has not provided an answer within 30 days, the testing in real world conditions and the real‑world testing plan shall be understood to have been approved').
condition(art_60_par_4_unp_1_pnt_b, 'if national law does not provide for a tacit approval, the testing in real world conditions shall remain subject to an authorisation').

% ==== celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c ====
unit(art_60_par_4_unp_1_pnt_c, 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c', point).
references(art_60_par_4_unp_1_pnt_c, anx_3_pnt_1).
references(art_60_par_4_unp_1_pnt_c, anx_3_pnt_6).
references(art_60_par_4_unp_1_pnt_c, anx_3_pnt_7).
references(art_60_par_4_unp_1_pnt_c, anx_3_pnt_2).
references(art_60_par_4_unp_1_pnt_c, art_71_par_4).
references(art_60_par_4_unp_1_pnt_c, anx_9).
references(art_60_par_4_unp_1_pnt_c, art_49_par_4_unp_1_pnt_d).
references(art_60_par_4_unp_1_pnt_c, art_49_par_5).
condition(art_60_par_4_unp_1_pnt_c, 'except providers of high‑risk AI systems referred to in anx_3_pnt_1, anx_3_pnt_6, anx_3_pnt_7, anx_3_pnt_2').
obligation(art_60_par_4_unp_1_pnt_c, provider_or_prospective_provider, 'register the testing in real‑world conditions in accordance with art_71_par_4 with a Union‑wide unique single identification number and with the information specified in anx_9').
obligation(art_60_par_4_unp_1_pnt_c, provider_or_prospective_provider_high_risk_law_enforcement_migration_asylum_border_control, 'register the testing in real‑world conditions in the secure non‑public section of the EU database according to art_49_par_4_unp_1_pnt_d with a Union‑wide unique single identification number and with the information specified therein').
obligation(art_60_par_4_unp_1_pnt_c, provider_or_prospective_provider_high_risk_other, 'register the testing in real‑world conditions in accordance with art_49_par_5').

% ==== celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f ====
unit(art_60_par_4_unp_1_pnt_f, 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f', point).
prohibition(art_60_par_4_unp_1_pnt_f, provider, 'testing in real world conditions lasts longer than necessary to achieve its objectives').
prohibition(art_60_par_4_unp_1_pnt_f, provider, 'testing in real world conditions lasts longer than six months').
condition(art_60_par_4_unp_1_pnt_f, 'testing may be extended for an additional period of six months').
requirement(art_60_par_4_unp_1_pnt_f, provider, 'prior notification to the market surveillance authority accompanied by an explanation of the need for such an extension').

% ==== celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g ====
unit(art_60_par_4_unp_1_pnt_g, 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g', point).
obligation(art_60_par_4_unp_1_pnt_g, subjects_of_testing, 'are appropriately protected').
condition(art_60_par_4_unp_1_pnt_g, 'persons belonging to vulnerable groups due to their age or disability').

% ==== celex:32024R1689/oj#art_61 ====
unit(art_61, 'celex:32024R1689/oj#art_61', article).
title(art_61, 'Informed consent to participate in testing in real world conditions outside AI regulatory sandboxes').
references(art_61, art_60).
references(art_61, art_60_par_4_unp_1_pnt_c).
obligation(art_61, provider, 'obtain freely‑given informed consent from subjects prior to their participation after informing them with concise, clear, relevant and understandable information regarding the nature and objectives of the testing, the conditions and expected duration, their rights and guarantees, the arrangements for reversal or disregarding AI system outputs, and the Union‑wide unique identification number and provider contact details').
requirement(art_61, subject, 'receive information regarding (a) the nature and objectives of the testing and possible inconvenience, (b) the conditions and expected duration of participation, (c) their rights and guarantees including the right to refuse or withdraw without detriment, (d) the arrangements for reversal or disregarding AI system outputs, (e) the unique identification number and provider contact details').
obligation(art_61, provider, 'date and document the informed consent and give a copy to the subjects of testing or their legal representative').

% ==== celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c ====
unit(art_62_par_1_unp_1_pnt_c, 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c', point).
references(art_62_par_1_unp_1_pnt_c, 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_63/par_1 ====
unit(art_63_par_1, 'celex:32024R1689/oj#art_63/par_1', paragraph).
references(art_63_par_1, 'celex:32003H0361/oj').
references(art_63_par_1, art_17).
obligation(art_63_par_1, commission, 'develop guidelines on the elements of the quality management system which may be complied with in a simplified manner considering the needs of microenterprises, without affecting the level of protection or the need for compliance with the requirements in respect of high-risk AI systems').
condition(art_63_par_1, 'microenterprises may comply in a simplified manner provided they do not have partner enterprises or linked enterprises within the meaning of celex:32003H0361/oj').

% ==== celex:32024R1689/oj#art_66 ====
unit(art_66, 'celex:32024R1689/oj#art_66', article).
title(art_66, 'Tasks of the Board').
references(art_66, 'celex:32024R1689/oj').
references(art_66, art_74_par_11).
references(art_66, art_46).
references(art_66, art_57).
references(art_66, art_59).
references(art_66, art_60).
references(art_66, art_112).
references(art_66, art_73).
references(art_66, art_71).
references(art_66, anx_1).
references(art_66, chp_3_sec_2).
references(art_66, art_40).
references(art_66, art_41).
references(art_66, anx_3).
references(art_66, art_7).
references(art_66, art_5).
obligation(art_66, board, 'advise and assist the Commission and the Member States to facilitate the consistent and effective application of the Regulation').
obligation(art_66, board, 'contribute to the coordination among national competent authorities responsible for the application of the Regulation and, in cooperation with and subject to the agreement of the market surveillance authorities concerned, support joint activities of market surveillance authorities (art_74_par_11)').
obligation(art_66, board, 'collect and share technical and regulatory expertise and best practices among Member States').
obligation(art_66, board, 'provide advice on the implementation of the Regulation, in particular as regards the enforcement of rules on general-purpose AI models').
obligation(art_66, board, 'contribute to the harmonisation of administrative practices in the Member States, including the derogation from the conformity assessment procedures (art_46), the functioning of AI regulatory sandboxes, and testing in real world conditions (art_57, art_59, art_60)').
obligation(art_66, board, 'issue recommendations and written opinions on any relevant matters related to the implementation of the Regulation and its consistent and effective application').
obligation(art_66, board, 'provide advice on the development and application of codes of conduct and codes of practice pursuant to the Regulation, as well as the Commission’s guidelines').
obligation(art_66, board, 'evaluate and review the Regulation pursuant to art_112, including serious incident reports (art_73), the EU database (art_71), preparation of delegated or implementing acts, and possible alignment with Union harmonisation legislation (anx_1)').
obligation(art_66, board, 'provide advice on technical specifications or existing standards regarding the requirements set out in chapter 3 section 2 (chp_3_sec_2)').
obligation(art_66, board, 'provide advice on the use of harmonised standards or common specifications (art_40, art_41)').
obligation(art_66, board, 'analyse trends such as European global competitiveness in AI, AI uptake in the Union, and development of digital skills').
obligation(art_66, board, 'analyse trends on the evolving typology of AI value chains, particularly implications for accountability').
obligation(art_66, board, 'assess the potential need for amendment to annex 3 (anx_3) in accordance with art_7, and the potential need for revision of art_5 pursuant to art_112, taking into account evidence and technological developments').
obligation(art_66, board, 'support the Commission in promoting AI literacy, public awareness and understanding of benefits, risks, safeguards and rights and obligations related to AI systems').
obligation(art_66, board, 'facilitate the development of common criteria and a shared understanding among market operators and competent authorities of the relevant concepts provided for in the Regulation, including by contributing to the development of benchmarks').
obligation(art_66, board, 'cooperate with other Union institutions, bodies, offices, agencies, expert groups and networks, particularly in product safety, cybersecurity, competition, digital and media services, financial services, consumer protection, data and fundamental rights protection').
obligation(art_66, board, 'contribute to effective cooperation with competent authorities of third countries and international organisations').
obligation(art_66, board, 'assist national competent authorities and the Commission in developing organisational and technical expertise required for the implementation of the Regulation, including assessing training needs for staff of Member States').
obligation(art_66, board, 'assist the AI Office in supporting national competent authorities in establishing and developing AI regulatory sandboxes, and facilitate cooperation and information‑sharing among AI regulatory sandboxes').
obligation(art_66, board, 'contribute to, and provide relevant advice on, the development of guidance documents').
obligation(art_66, board, 'advise the Commission in relation to international matters on AI').
obligation(art_66, board, 'provide opinions to the Commission on qualified alerts regarding general‑purpose AI models').
obligation(art_66, board, 'receive opinions by the Member States on qualified alerts regarding general‑purpose AI models, and on national experiences and practices on monitoring and enforcement of AI systems, in particular systems integrating the general‑purpose AI models').

% ==== celex:32024R1689/oj#art_67/par_2 ====
unit(art_67_par_2, 'celex:32024R1689/oj#art_67/par_2', paragraph).
obligation(art_67_par_2, advisory_forum, 'membership shall represent a balanced selection of stakeholders, including industry, start-ups, SMEs, civil society and academia').
obligation(art_67_par_2, advisory_forum, 'membership shall be balanced with regard to commercial and non-commercial interests and, within the category of commercial interests, with regard to SMEs and other undertakings').

% ==== celex:32024R1689/oj#art_68/par_1 ====
unit(art_68_par_1, 'celex:32024R1689/oj#art_68/par_1', paragraph).
references(art_68_par_1, 'celex:32024R1689/oj').
references(art_68_par_1, art_98_par_2).
obligation(art_68_par_1, commission, 'make provisions on the establishment of a scientific panel of independent experts (the scientific panel) intended to support the enforcement activities under the act').
obligation(art_68_par_1, commission, 'adopt the implementing act in accordance with the examination procedure referred to in art_98_par_2').

% ==== celex:32024R1689/oj#art_68/par_2 ====
unit(art_68_par_2, 'celex:32024R1689/oj#art_68/par_2', paragraph).
references(art_68_par_2, art_68_par_3).
requirement(art_68_par_2, scientific_panel, 'consist of experts selected by the commission on the basis of up-to-date scientific or technical expertise in the field of AI necessary for the tasks set out in art_68_par_3').
condition(art_68_par_2, 'having particular expertise and competence and scientific or technical expertise in the field of AI').
condition(art_68_par_2, 'independence from any provider of AI systems or general-purpose AI models').
condition(art_68_par_2, 'an ability to carry out activities diligently, accurately and objectively').
obligation(art_68_par_2, commission, 'determine the number of experts on the panel in accordance with the required needs and ensure fair gender and geographical representation').

% ==== celex:32024R1689/oj#art_68/par_3 ====
unit(art_68_par_3, 'celex:32024R1689/oj#art_68/par_3', paragraph).
references(art_68_par_3, 'celex:32024R1689/oj').
references(art_68_par_3, art_90).
references(art_68_par_3, art_74_par_11).
references(art_68_par_3, art_81).
obligation(art_68_par_3, scientific_panel, 'advise and support the AI Office, in particular with regard to the following tasks').
obligation(art_68_par_3, scientific_panel, 'support the implementation and enforcement of the AI Act as regards general-purpose AI models and systems').
obligation(art_68_par_3, scientific_panel, 'alert the AI Office of possible systemic risks at Union level of general-purpose AI models, in accordance with art_90').
obligation(art_68_par_3, scientific_panel, 'contribute to the development of tools and methodologies for evaluating capabilities of general-purpose AI models and systems, including through benchmarks').
obligation(art_68_par_3, scientific_panel, 'provide advice on the classification of general-purpose AI models with systemic risk').
obligation(art_68_par_3, scientific_panel, 'provide advice on the classification of various general-purpose AI models and systems').
obligation(art_68_par_3, scientific_panel, 'contribute to the development of tools and templates').
obligation(art_68_par_3, scientific_panel, 'support the work of market surveillance authorities, at their request').
obligation(art_68_par_3, scientific_panel, 'support cross-border market surveillance activities as referred to in art_74_par_11, without prejudice to the powers of market surveillance authorities').
obligation(art_68_par_3, scientific_panel, 'support the AI Office in carrying out its duties in the context of the Union safeguard procedure pursuant to art_81').

% ==== celex:32024R1689/oj#art_69 ====
unit(art_69, 'celex:32024R1689/oj#art_69', article).
title(art_69, 'Access to the pool of experts by the Member States').
references(art_69, 'celex:32024R1689/oj').
references(art_69, art_68_par_1).
references(art_69, art_84).
references(art_69, art_69).
applies_to(art_69_par_1, member_state).
obligation(art_69_par_2, member_state, 'pay fees for the advice and support provided by the experts').
requirement(art_69_par_2, fees_structure, 'set out in the implementing act referred to in art_68_par_1, taking into account the objectives of the adequate implementation of the Regulation, cost-effectiveness and the necessity of ensuring effective access to experts for all Member States').
obligation(art_69_par_3, commission, 'facilitate timely access to the experts by the Member States and ensure that the combination of support activities carried out by Union AI testing support and experts is efficiently organised and provides the best possible added value').

% ==== celex:32024R1689/oj#art_70/par_3 ====
unit(art_70_par_3, 'celex:32024R1689/oj#art_70/par_3', paragraph).
references(art_70_par_3, 'celex:32024R1689/oj').
references(art_70_par_3, art_70_par_3).
obligation(art_70_par_3, member_state, 'ensure that national competent authorities are provided with adequate technical, financial and human resources and with infrastructure to fulfil their tasks effectively').
obligation(art_70_par_3, member_state, 'ensure that national competent authorities have a sufficient number of personnel permanently available whose competences and expertise include an in‑depth understanding of AI technologies, data and data computing, personal data protection, cybersecurity, fundamental rights, health and safety risks and knowledge of existing standards and legal requirements').
obligation(art_70_par_3, member_state, 'assess and, if necessary, update competence and resource requirements on an annual basis').

% ==== celex:32024R1689/oj#art_71/par_2 ====
unit(art_71_par_2, 'celex:32024R1689/oj#art_71/par_2', paragraph).
references(art_71_par_2, anx_8_sec_1).
references(art_71_par_2, anx_8_sec_2).
obligation(art_71_par_2, provider, 'enter the data listed in annex 8 sections 1 and 2 into the EU database').
obligation(art_71_par_2, authorised_representative, 'enter the data listed in annex 8 sections 1 and 2 into the EU database where applicable').

% ==== celex:32024R1689/oj#art_71/par_3 ====
unit(art_71_par_3, 'celex:32024R1689/oj#art_71/par_3', paragraph).
references(art_71_par_3, anx_8_sec_3).
references(art_71_par_3, art_49_par_3).
references(art_71_par_3, art_49_par_4).
applies_to(art_71_par_3, deployer).
condition(art_71_par_3, 'deployer is, or acts on behalf of, a public authority, agency or body').
obligation(art_71_par_3, deployer, 'enter the data listed in anx_8_sec_3 into the EU database in accordance with art_49_par_3 and art_49_par_4').

% ==== celex:32024R1689/oj#art_71/par_4 ====
unit(art_71_par_4, 'celex:32024R1689/oj#art_71/par_4', paragraph).
references(art_71_par_4, art_49_par_4).
references(art_71_par_4, art_60_par_4_unp_1_pnt_c).
references(art_71_par_4, art_49).
references(art_71_par_4, art_60).
condition(art_71_par_4, 'except the section referred to in art_49_par_4 and art_60_par_4_unp_1_pnt_c').
requirement(art_71_par_4, information_registered_in_accordance_with_art_49, 'accessible and publicly available in a user-friendly manner, easily navigable and machine-readable').
requirement(art_71_par_4, information_registered_in_accordance_with_art_60, 'accessible only to market surveillance authorities and the Commission, unless the prospective provider or provider has given consent for also making the information accessible the public').
applies_to(art_71_par_4, market_surveillance_authority).
applies_to(art_71_par_4, commission).

% ==== celex:32024R1689/oj#art_72/par_1 ====
unit(art_72_par_1, 'celex:32024R1689/oj#art_72/par_1', paragraph).
obligation(art_72_par_1, provider, 'establish and document a post-market monitoring system in a manner that is proportionate to the nature of the AI technologies and the risks of the high-risk AI system').

% ==== celex:32024R1689/oj#art_72/par_2 ====
unit(art_72_par_2, 'celex:32024R1689/oj#art_72/par_2', paragraph).
references(art_72_par_2, chp_3_sec_2).
obligation(art_72_par_2, post_market_monitoring_system, 'actively and systematically collect, document and analyse relevant data which may be provided by deployers or collected through other sources on the performance of high-risk AI systems throughout their lifetime, and which allow the provider to evaluate the continuous compliance of AI systems with the requirements set out in chp_3_sec_2').
requirement(art_72_par_2, post_market_monitoring_system, 'include an analysis of the interaction with other AI systems where relevant').
prohibition(art_72_par_2, post_market_monitoring_system, 'cover sensitive operational data of deployers which are law‑enforcement authorities').

% ==== celex:32024R1689/oj#art_72/par_3 ====
unit(art_72_par_3, 'celex:32024R1689/oj#art_72/par_3', paragraph).
references(art_72_par_3, anx_4).
references(art_72_par_3, art_98_par_2).
obligation(art_72_par_3, post_market_monitoring_system, 'shall be based on a post-market monitoring plan').
obligation(art_72_par_3, post_market_monitoring_plan, 'shall be part of the technical documentation referred to in anx_4').
obligation(art_72_par_3, commission, 'shall adopt an implementing act laying down detailed provisions establishing a template for the post-market monitoring plan and the list of elements to be included in the plan by 2 February 2026').
deadline(art_72_par_3, '2 February 2026').
condition(art_72_par_3, 'the implementing act shall be adopted in accordance with the examination procedure referred to in art_98_par_2').

% ==== celex:32024R1689/oj#art_72/par_4/unp_1 ====
unit(art_72_par_4_unp_1, 'celex:32024R1689/oj#art_72/par_4/unp_1', paragraph).
references(art_72_par_4_unp_1, anx_1_sec_1).
references(art_72_par_4_unp_1, art_72_par_1).
references(art_72_par_4_unp_1, art_72_par_2).
references(art_72_par_4_unp_1, art_72_par_3).
obligation(art_72_par_4_unp_1, provider, 'shall have a choice of integrating, as appropriate, the necessary elements described in the referenced provisions using the template into existing systems and plans, provided it achieves an equivalent level of protection').
condition(art_72_par_4_unp_1, 'for high‑risk AI systems covered by the Union harmonisation legislation listed in anx_1_sec_1, where a post‑market monitoring system and plan are already established under that legislation').

% ==== celex:32024R1689/oj#art_73/par_1 ====
unit(art_73_par_1, 'celex:32024R1689/oj#art_73/par_1', paragraph).
obligation(art_73_par_1, provider, 'report any serious incident to the market surveillance authorities of the Member States where that incident occurred').

% ==== celex:32024R1689/oj#art_73/par_2/unp_1 ====
unit(art_73_par_2_unp_1, 'celex:32024R1689/oj#art_73/par_2/unp_1', paragraph).
references(art_73_par_2_unp_1, art_73_par_1).
obligation(art_73_par_2_unp_1, provider, 'make the report immediately after establishing a causal link between the AI system and the serious incident or the reasonable likelihood of such a link, and not later than 15 days after the provider becomes aware of the serious incident').
obligation(art_73_par_2_unp_1, deployer, 'make the report not later than 15 days after the deployer becomes aware of the serious incident').
condition(art_73_par_2_unp_1, 'where applicable, the deployer becomes aware of the serious incident').
requirement(art_73_par_2_unp_1, causal_link, 'provider must have established a causal link between the AI system and the serious incident or the reasonable likelihood of such a link').

% ==== celex:32024R1689/oj#art_73/par_6/unp_1 ====
unit(art_73_par_6_unp_1, 'celex:32024R1689/oj#art_73/par_6/unp_1', paragraph).
references(art_73_par_6_unp_1, art_73_par_1).
obligation(art_73_par_6_unp_1, provider, 'perform the necessary investigations in relation to the serious incident and the AI system concerned, including a risk assessment of the incident and corrective action').
condition(art_73_par_6_unp_1, 'without delay').

% ==== celex:32024R1689/oj#art_74/par_3/unp_1 ====
unit(art_74_par_3_unp_1, 'celex:32024R1689/oj#art_74/par_3/unp_1', paragraph).
references(art_74_par_3_unp_1, anx_1_sec_1).
references(art_74_par_3_unp_1, 'celex:32024R1689/oj').
condition(art_74_par_3_unp_1, 'high-risk AI systems related to products covered by the Union harmonisation legislation listed in anx_1_sec_1').
obligation(art_74_par_3_unp_1, market_surveillance_authority, 'shall be the authority responsible for market surveillance activities designated under those legal acts').

% ==== celex:32024R1689/oj#art_74/par_6 ====
unit(art_74_par_6, 'celex:32024R1689/oj#art_74/par_6', paragraph).
references(art_74_par_6, 'celex:32024R1689/oj').
definition(market_surveillance_authority, 'the relevant national authority responsible for the financial supervision of those institutions under that legislation in so far as the placing on the market, putting into service, or the use of the AI system is in direct connection with the provision of those financial services').
applies_to(art_74_par_6, high_risk_ai_system).

% ==== celex:32024R1689/oj#art_74/par_8 ====
unit(art_74_par_8, 'celex:32024R1689/oj#art_74/par_8', paragraph).
references(art_74_par_8, anx_3_pnt_1).
references(art_74_par_8, anx_3_pnt_6).
references(art_74_par_8, anx_3_pnt_7).
references(art_74_par_8, anx_3_pnt_8).
references(art_74_par_8, 'celex:32024R1689/oj').
references(art_74_par_8, 'celex:32016R0679/oj').
references(art_74_par_8, 'celex:32016L0680/oj').
references(art_74_par_8, 'celex:32016L0680/oj#art_41').
references(art_74_par_8, 'celex:32016L0680/oj#art_42').
references(art_74_par_8, 'celex:32016L0680/oj#art_43').
references(art_74_par_8, 'celex:32016L0680/oj#art_44').
obligation(art_74_par_8, member_state, 'designate as market surveillance authorities for the purposes of the act either the competent data protection supervisory authorities or any other authority designated pursuant to the same conditions laid down in the specified articles').
condition(art_74_par_8, 'for high-risk AI systems listed in anx_3_pnt_1 used for law enforcement, border management and justice and democracy, and for high-risk AI systems listed in anx_3_pnt_6, anx_3_pnt_7, anx_3_pnt_8').
applies_to(art_74_par_8, member_state).
prohibition(art_74_par_8, market_surveillance_authority, 'affect the independence of judicial authorities or interfere with their activities when acting in judicial capacity').

% ==== celex:32024R1689/oj#art_74/par_9 ====
unit(art_74_par_9, 'celex:32024R1689/oj#art_74/par_9', paragraph).
references(art_74_par_9, 'celex:32024R1689/oj').
obligation(art_74_par_9, 'European Data Protection Supervisor', 'shall act as market surveillance authority for Union institutions, bodies, offices or agencies falling within the scope of the act').
applies_to(art_74_par_9, 'Union institutions, bodies, offices or agencies').
exemption(art_74_par_9, 'Court of Justice of the European Union', 'acting in its judicial capacity').

% ==== celex:32024R1689/oj#art_74/par_10 ====
unit(art_74_par_10, 'celex:32024R1689/oj#art_74/par_10', paragraph).
references(art_74_par_10, 'celex:32024R1689/oj').
references(art_74_par_10, anx_1).
references(art_74_par_10, anx_3).
obligation(art_74_par_10, member_state, 'facilitate coordination between market surveillance authorities designated under the act and other relevant national authorities or bodies which supervise the application of Union harmonisation legislation listed in annex 1, or in other Union law, that might be relevant for the high‑risk AI systems referred to in annex 3').

% ==== celex:32024R1689/oj#art_74/par_11 ====
unit(art_74_par_11, 'celex:32024R1689/oj#art_74/par_11', paragraph).
references(art_74_par_11, 'celex:32024R1689/oj').
references(art_74_par_11, 'celex:32019R1020/oj#art_9').
obligation(art_74_par_11, market_surveillance_authorities, 'be able to propose joint activities, including joint investigations, to promote compliance, identify non‑compliance, raise awareness or provide guidance regarding the Regulation for high‑risk AI systems presenting a serious risk across two or more Member States').
obligation(art_74_par_11, commission, 'be able to propose joint activities, including joint investigations, to promote compliance, identify non‑compliance, raise awareness or provide guidance regarding the Regulation for high‑risk AI systems presenting a serious risk across two or more Member States').
obligation(art_74_par_11, ai_office, 'provide coordination support for joint investigations').
condition(art_74_par_11, 'specific categories of high‑risk AI systems that present a serious risk across two or more Member States').

% ==== celex:32024R1689/oj#art_75/par_3 ====
unit(art_75_par_3, 'celex:32024R1689/oj#art_75/par_3', paragraph).
references(art_75_par_3, art_78).
references(art_75_par_3, 'celex:32019R1020/oj#chp_6').
condition(art_75_par_3, 'market surveillance authority unable to conclude investigation because of inability to access certain information related to the general‑purpose AI model despite having made all appropriate efforts').
obligation(art_75_par_3, ai_office, 'supply to the applicant authority without delay, and in any event within 30 days, any information the AI Office considers relevant in order to establish whether a high‑risk AI system is non‑compliant').
obligation(art_75_par_3, market_surveillance_authority, 'safeguard the confidentiality of the information obtained').

% ==== celex:32024R1689/oj#art_76/par_3 ====
unit(art_76_par_3, 'celex:32024R1689/oj#art_76/par_3', paragraph).
references(art_76_par_3, art_60).
references(art_76_par_3, art_61).
requirement(art_76_par_3, provider, 'modify any aspect of the testing in real world conditions').
requirement(art_76_par_3, deployer, 'modify any aspect of the testing in real world conditions').
requirement(art_76_par_3, prospective_provider, 'modify any aspect of the testing in real world conditions').
requirement(art_76_par_3, prospective_deployer, 'modify any aspect of the testing in real world conditions').

% ==== celex:32024R1689/oj#art_77/par_1 ====
unit(art_77_par_1, 'celex:32024R1689/oj#art_77/par_1', paragraph).
references(art_77_par_1, anx_3).
references(art_77_par_1, 'celex:32024R1689/oj').
power(art_77_par_1, national_public_authority, 'request and access any documentation created or maintained under the Regulation in accessible language and format when access to that documentation is necessary for effectively fulfilling their mandates within the limits of their jurisdiction').
obligation(art_77_par_1, national_public_authority, 'inform the market surveillance authority of the Member State concerned of any such request').

% ==== celex:32024R1689/oj#art_78/par_1 ====
unit(art_78_par_1, 'celex:32024R1689/oj#art_78/par_1', paragraph).
references(art_78_par_1, 'celex:32024R1689/oj').
references(art_78_par_1, 'celex:32016L0943/oj#art_5').
references(art_78_par_1, 'celex:32016L0943/oj').
obligation(art_78_par_1, commission, 'respect the confidentiality of information and data obtained in carrying out their tasks and activities in order to protect, in particular: the intellectual property rights and confidential business information or trade secrets of a natural or legal person, including source code, except in the cases referred to in art_5 of Directive 2016/943; the effective implementation of the Regulation, in particular for inspections, investigations or audits; public and national security interests; the conduct of criminal or administrative proceedings; information classified pursuant to Union or national law').
obligation(art_78_par_1, market_surveillance_authority, 'respect the confidentiality of information and data obtained in carrying out their tasks and activities in order to protect, in particular: the intellectual property rights and confidential business information or trade secrets of a natural or legal person, including source code, except in the cases referred to in art_5 of Directive 2016/943; the effective implementation of the Regulation, in particular for inspections, investigations or audits; public and national security interests; the conduct of criminal or administrative proceedings; information classified pursuant to Union or national law').
obligation(art_78_par_1, notified_body, 'respect the confidentiality of information and data obtained in carrying out their tasks and activities in order to protect, in particular: the intellectual property rights and confidential business information or trade secrets of a natural or legal person, including source code, except in the cases referred to in art_5 of Directive 2016/943; the effective implementation of the Regulation, in particular for inspections, investigations or audits; public and national security interests; the conduct of criminal or administrative proceedings; information classified pursuant to Union or national law').
obligation(art_78_par_1, natural_or_legal_person, 'respect the confidentiality of information and data obtained in carrying out their tasks and activities in order to protect, in particular: the intellectual property rights and confidential business information or trade secrets of a natural or legal person, including source code, except in the cases referred to in art_5 of Directive 2016/943; the effective implementation of the Regulation, in particular for inspections, investigations or audits; public and national security interests; the conduct of criminal or administrative proceedings; information classified pursuant to Union or national law').

% ==== celex:32024R1689/oj#art_78/par_2 ====
unit(art_78_par_2, 'celex:32024R1689/oj#art_78/par_2', paragraph).
references(art_78_par_2, 'celex:32024R1689/oj').
references(art_78_par_2, art_78_par_1).
references(art_78_par_2, 'celex:32019R1020/oj').
obligation(art_78_par_2, authorities, 'request only data that is strictly necessary for the assessment of the risk posed by AI systems and for the exercise of their powers').
obligation(art_78_par_2, authorities, 'put in place adequate and effective cybersecurity measures to protect the security and confidentiality of the information and data obtained').
obligation(art_78_par_2, authorities, 'delete the data collected as soon as it is no longer needed for the purpose for which it was obtained').
condition(art_78_par_2, 'in accordance with applicable Union or national law').

% ==== celex:32024R1689/oj#art_78/par_3 ====
unit(art_78_par_3, 'celex:32024R1689/oj#art_78/par_3', paragraph).
references(art_78_par_3, art_78_par_1).
references(art_78_par_3, art_78_par_2).
references(art_78_par_3, anx_3_pnt_1).
references(art_78_par_3, anx_3_pnt_6).
references(art_78_par_3, anx_3_pnt_7).
references(art_78_par_3, anx_4).
references(art_78_par_3, art_74_par_8).
references(art_78_par_3, art_74_par_9).
prohibition(art_78_par_3, national_competent_authorities, 'disclose information without prior consultation of the originating national competent authority and the deployer when high-risk AI systems are used by law enforcement, border control, immigration or asylum authorities and disclosure would jeopardise public and national security interests').
prohibition(art_78_par_3, commission, 'disclose information without prior consultation of the originating national competent authority and the deployer when high-risk AI systems are used by law enforcement, border control, immigration or asylum authorities and disclosure would jeopardise public and national security interests').
prohibition(art_78_par_3, information_exchange, 'cover sensitive operational data in relation to activities of law enforcement, border control, immigration or asylum authorities').
obligation(art_78_par_3, law_enforcement_authorities, 'technical documentation shall remain within the premises of those authorities').
obligation(art_78_par_3, law_enforcement_authorities, 'ensure that market surveillance authorities can, upon request, immediately access the documentation or obtain a copy thereof').
obligation(art_78_par_3, market_surveillance_authority_staff, 'access documentation only if holding appropriate level of security clearance').
condition(art_78_par_3, 'high-risk AI systems referred to in anx_3_pnt_1, anx_3_pnt_6, anx_3_pnt_7 are used by law enforcement, border control, immigration or asylum authorities and disclosure would jeopardise public and national security interests').
condition(art_78_par_3, 'law enforcement, immigration or asylum authorities are providers of high-risk AI systems referred to in anx_3_pnt_1, anx_3_pnt_6, anx_3_pnt_7').

% ==== celex:32024R1689/oj#art_79/par_1 ====
unit(art_79_par_1, 'celex:32024R1689/oj#art_79/par_1', paragraph).
references(art_79_par_1, 'celex:32019R1020/oj#art_3/pnt_19').
definition(risk_presenting_ai_system, 'AI system presenting a risk shall be understood as a product presenting a risk as defined in celex:32019R1020/oj#art_3/pnt_19 in so far as they present risks to the health or safety, or to fundamental rights of persons').

% ==== celex:32024R1689/oj#art_79/par_2/unp_2 ====
unit(art_79_par_2_unp_2, 'celex:32024R1689/oj#art_79/par_2/unp_2', paragraph).
references(art_79_par_2_unp_2, art_77_par_1).
references(art_79_par_2_unp_2, 'celex:32024R1689/oj').
condition(art_79_par_2_unp_2, 'the market surveillance authority finds that the AI system does not comply with the requirements and obligations laid down in the Regulation').
obligation(art_79_par_2_unp_2, market_surveillance_authority, 'require the relevant operator to take all appropriate corrective actions to bring the AI system into compliance, to withdraw the AI system from the market, or to recall it').
deadline(art_79_par_2_unp_2, 'the shorter of 15 working days or as provided for in the relevant Union harmonisation legislation').

% ==== celex:32024R1689/oj#art_79/par_5 ====
unit(art_79_par_5, 'celex:32024R1689/oj#art_79/par_5', paragraph).
references(art_79_par_5, art_79_par_2).
condition(art_79_par_5, 'operator of an AI system does not take adequate corrective action within the period referred to in art_79_par_2').
obligation(art_79_par_5, market_surveillance_authority, 'take all appropriate provisional measures to prohibit or restrict the AI system''s being made available on its national market or put into service, to withdraw the product or the standalone AI system from that market or to recall it').
obligation(art_79_par_5, market_surveillance_authority, 'notify the Commission and the other Member States of those measures without undue delay').

% ==== celex:32024R1689/oj#art_79/par_6 ====
unit(art_79_par_6, 'celex:32024R1689/oj#art_79/par_6', paragraph).
references(art_79_par_6, art_79_par_5).
references(art_79_par_6, art_5).
references(art_79_par_6, chp_3_sec_2).
references(art_79_par_6, art_40).
references(art_79_par_6, art_41).
references(art_79_par_6, art_50).
obligation(art_79_par_6, provider, 'include all available details, in particular the information necessary for the identification of the non‑compliant AI system, the origin of the AI system and the supply chain, the nature of the alleged non‑compliance and the risk involved, the nature and duration of the national measures taken and the arguments put forward by the relevant operator').
obligation(art_79_par_6, market_surveillance_authority, 'indicate whether the non‑compliance is due to one or more of the following: non‑compliance with the prohibition of the AI practices referred to in art_5; a failure of a high‑risk AI system to meet requirements set out in chp_3_sec_2; shortcomings in the harmonised standards or common specifications referred to in art_40 and art_41 conferring a presumption of conformity; non‑compliance with art_50').

% ==== celex:32024R1689/oj#art_79/par_7 ====
unit(art_79_par_7, 'celex:32024R1689/oj#art_79/par_7', paragraph).
obligation(art_79_par_7, market_surveillance_authorities, 'inform the Commission and the other Member States of any measures adopted and of any additional information at their disposal relating to the non‑compliance of the AI system concerned, without undue delay').
obligation(art_79_par_7, market_surveillance_authorities, 'communicate their objections in the event of disagreement with the notified national measure').
condition(art_79_par_7, 'in the event of disagreement with the notified national measure').

% ==== celex:32024R1689/oj#art_79/par_8 ====
unit(art_79_par_8, 'celex:32024R1689/oj#art_79/par_8', paragraph).
references(art_79_par_8, art_79_par_5).
references(art_79_par_8, 'celex:32019R1020/oj#art_18').
references(art_79_par_8, art_79_par_8).
references(art_79_par_8, art_5).
condition(art_79_par_8, 'within three months of receipt of the notification referred to in art_79_par_5, no objection has been raised by a market surveillance authority of a Member State or by the Commission regarding a provisional measure taken by a market surveillance authority of another Member State').
condition(art_79_par_8, 'without prejudice to the procedural rights of the concerned operator in accordance with celex:32019R1020/oj#art_18').
condition(art_79_par_8, 'non‑compliance with the prohibition of the AI practices referred to in art_5').
obligation(art_79_par_8, measure, 'deemed justified').
obligation(art_79_par_8, period, 'reduced to 30 days').

% ==== celex:32024R1689/oj#art_79/par_9 ====
unit(art_79_par_9, 'celex:32024R1689/oj#art_79/par_9', paragraph).
obligation(art_79_par_9, market_surveillance_authorities, 'ensure that appropriate restrictive measures are taken in respect of the product or the AI system concerned, such as withdrawal of the product or the AI system from their market, without undue delay').

% ==== celex:32024R1689/oj#art_80/par_1 ====
unit(art_80_par_1, 'celex:32024R1689/oj#art_80/par_1', paragraph).
references(art_80_par_1, art_6_par_3).
condition(art_80_par_1, 'market surveillance authority has sufficient reason to consider that an AI system classified by the provider as non-high-risk pursuant to art_6_par_3 is indeed high-risk').
obligation(art_80_par_1, market_surveillance_authority, 'carry out an evaluation of the AI system concerned in respect of its classification as a high-risk AI system based on the conditions set out in art_6_par_3 and the Commission guidelines').

% ==== celex:32024R1689/oj#art_80/par_2 ====
unit(art_80_par_2, 'celex:32024R1689/oj#art_80/par_2', paragraph).
references(art_80_par_2, 'celex:32024R1689/oj').
condition(art_80_par_2, 'market surveillance authority finds that the AI system is high-risk during evaluation').
obligation(art_80_par_2, market_surveillance_authority, 'require the relevant provider to take all necessary actions to bring the AI system into compliance with the requirements and obligations laid down in the Regulation and to take appropriate corrective action within a period prescribed by the authority').
obligation(art_80_par_2, provider, 'take all necessary actions to bring the AI system into compliance with the requirements and obligations laid down in the Regulation and take appropriate corrective action within a period prescribed by the market surveillance authority').

% ==== celex:32024R1689/oj#art_81 ====
unit(art_81, 'celex:32024R1689/oj#art_81', article).
title(art_81, 'Union safeguard procedure').
references(art_81, art_79_par_5).
references(art_81, art_5).
references(art_81, art_40).
references(art_81, art_41).
references(art_81, 'celex:32012R1025/oj#art_11').
obligation(art_81, commission, 'enter into consultation with the market surveillance authority of the relevant Member State and the operator or operators without undue delay').
obligation(art_81, commission, 'evaluate the national measure').
obligation(art_81, commission, 'decide whether the national measure is justified within six months, or within 60 days in case of non‑compliance with the prohibition of the AI practices referred to in art_5, starting from the notification referred to in art_79_par_5').
obligation(art_81, commission, 'notify its decision to the market surveillance authority of the Member State concerned').
obligation(art_81, commission, 'inform all other market surveillance authorities of its decision').
obligation(art_81, commission, 'apply the procedure provided for in celex:32012R1025/oj#art_11 when the national measure is justified and the non‑compliance is attributed to shortcomings in the harmonised standards or common specifications referred to in art_40 and art_41').
obligation(art_81, member_state, 'ensure they take appropriate restrictive measures in respect of the AI system concerned, such as requiring the withdrawal of the AI system from their market without undue delay, when the Commission considers the measure justified').
obligation(art_81, member_state, 'inform the Commission accordingly when the Commission considers the measure justified').
obligation(art_81, member_state, 'withdraw the measure and inform the Commission accordingly when the Commission considers the national measure unjustified').

% ==== celex:32024R1689/oj#art_82/par_1 ====
unit(art_82_par_1, 'celex:32024R1689/oj#art_82/par_1', paragraph).
references(art_82_par_1, art_79).
references(art_82_par_1, art_77_par_1).
references(art_82_par_1, 'celex:32024R1689/oj').
obligation(art_82_par_1, market_surveillance_authority, 'require the relevant operator to take all appropriate measures to ensure that the AI system no longer presents that risk without undue delay, within a period it may prescribe').

% ==== celex:32024R1689/oj#art_83/par_1 ====
unit(art_83_par_1, 'celex:32024R1689/oj#art_83/par_1', paragraph).
references(art_83_par_1, art_48).
references(art_83_par_1, art_47).
references(art_83_par_1, art_71).
obligation(art_83_par_1, market_surveillance_authority, 'require the relevant provider to put an end to the non‑compliance concerned, within a period it may prescribe').

% ==== celex:32024R1689/oj#art_84/par_1 ====
unit(art_84_par_1, 'celex:32024R1689/oj#art_84/par_1', paragraph).
references(art_84_par_1, 'celex:32019R1020/oj#art_21/par_6').
obligation(art_84_par_1, commission, 'designate one or more Union AI testing support structures to perform the tasks listed under art_21_par_6').

% ==== celex:32024R1689/oj#art_86/par_1 ====
unit(art_86_par_1, 'celex:32024R1689/oj#art_86/par_1', paragraph).
references(art_86_par_1, anx_3).
applies_to(art_86_par_1, affected_person).
obligation(art_86_par_1, deployer, 'provide clear and meaningful explanations of the role of the AI system in the decision‑making procedure and the main elements of the decision taken').
condition(art_86_par_1, 'decision taken by the deployer based on output from a high‑risk AI system listed in annex 3, except systems listed under point 2, producing legal effects or significantly affecting the person with adverse impact on health, safety or fundamental rights').

% ==== celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a ====
unit(art_90_par_1_unp_1_pnt_a, 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a', point).
condition(art_90_par_1_unp_1_pnt_a, 'a general-purpose AI model poses concrete identifiable risk at Union level').

% ==== celex:32024R1689/oj#art_91 ====
unit(art_91, 'celex:32024R1689/oj#art_91', article).
title(art_91, 'Power to request documentation and information').
references(art_91, art_53).
references(art_91, art_55).
references(art_91, 'celex:32024R1689/oj').
references(art_91, art_68_par_2).
references(art_91, art_101).
obligation(art_91, commission, 'may request the provider of the general-purpose AI model to provide the documentation drawn up by the provider in accordance with art_53 and art_55, or any additional information necessary for assessing compliance with the act').
obligation(art_91, ai_office, 'may initiate a structured dialogue with the provider of the general-purpose AI model before sending the request for information').
obligation(art_91, commission, 'may issue a request for information to a provider of a general-purpose AI model when a duly substantiated request from the scientific panel is received and access to information is necessary and proportionate for the tasks of the scientific panel under art_68_par_2').
obligation(art_91, commission, 'shall ensure that the request for information states the legal basis and purpose, specifies the required information, sets a period for provision, and indicates the fines in art_101 for supplying incorrect, incomplete or misleading information').
obligation(art_91, provider, 'shall supply the information requested').
obligation(art_91, authorized_representative, 'shall supply the information requested on behalf of the provider').
obligation(art_91, lawyer, 'may supply information on behalf of their client').
obligation(art_91, client, 'remains fully responsible if the information supplied is incomplete, incorrect or misleading').

% ==== celex:32024R1689/oj#art_92/par_1 ====
unit(art_92_par_1, 'celex:32024R1689/oj#art_92/par_1', paragraph).
references(art_92_par_1, 'celex:32024R1689/oj').
references(art_92_par_1, art_91).
references(art_92_par_1, art_90_par_1_unp_1_pnt_a).
applies_to(art_92_par_1, ai_office).
condition(art_92_par_1, 'after consulting the Board').

% ==== celex:32024R1689/oj#art_93/par_2 ====
unit(art_93_par_2, 'celex:32024R1689/oj#art_93/par_2', paragraph).

% ==== celex:32024R1689/oj#art_93/par_3 ====
unit(art_93_par_3, 'celex:32024R1689/oj#art_93/par_3', paragraph).
references(art_93_par_3, art_93_par_2).

% ==== celex:32024R1689/oj#art_94 ====
unit(art_94, 'celex:32024R1689/oj#art_94', article).
title(art_94, 'Procedural rights of economic operators of the general-purpose AI model').
references(art_94, 'celex:32019R1020/oj#art_18').
references(art_94, 'celex:32024R1689/oj').
applies_to(art_94, provider).

% ==== celex:32024R1689/oj#art_95 ====
unit(art_95, 'celex:32024R1689/oj#art_95', article).
title(art_95, 'Codes of conduct for voluntary application of specific requirements').
references(art_95, chp_3_sec_2).
obligation(art_95, ai_office, 'encourage and facilitate the drawing up of codes of conduct for voluntary application of specific requirements to AI systems other than high‑risk AI systems, taking into account technical solutions and industry best practices').
obligation(art_95, member_state, 'encourage and facilitate the drawing up of codes of conduct for voluntary application of specific requirements to AI systems other than high‑risk AI systems, taking into account technical solutions and industry best practices').
obligation(art_95, ai_office, 'facilitate the drawing up of codes of conduct concerning the voluntary application, including by deployers, of specific requirements to all AI systems, based on clear objectives and key performance indicators, including ethical guidelines, environmental sustainability, AI literacy, inclusive design, and protection of vulnerable persons').
obligation(art_95, member_state, 'facilitate the drawing up of codes of conduct concerning the voluntary application, including by deployers, of specific requirements to all AI systems, based on clear objectives and key performance indicators, including ethical guidelines, environmental sustainability, AI literacy, inclusive design, and protection of vulnerable persons').
obligation(art_95, ai_office, 'take into account the specific interests and needs of SMEs, including start‑ups, when encouraging and facilitating the drawing up of codes of conduct').
obligation(art_95, member_state, 'take into account the specific interests and needs of SMEs, including start‑ups, when encouraging and facilitating the drawing up of codes of conduct').

% ==== celex:32024R1689/oj#art_96/par_1/unp_1 ====
unit(art_96_par_1_unp_1, 'celex:32024R1689/oj#art_96/par_1/unp_1', paragraph).
obligation(art_96_par_1_unp_1, commission, 'develop guidelines on the practical implementation of the Regulation, and in particular on the items listed in points (a) to (f)').
references(art_96_par_1_unp_1, 'celex:32024R1689/oj').
references(art_96_par_1_unp_1, art_8).
references(art_96_par_1_unp_1, art_9).
references(art_96_par_1_unp_1, art_10).
references(art_96_par_1_unp_1, art_11).
references(art_96_par_1_unp_1, art_12).
references(art_96_par_1_unp_1, art_13).
references(art_96_par_1_unp_1, art_14).
references(art_96_par_1_unp_1, art_15).
references(art_96_par_1_unp_1, art_25).
references(art_96_par_1_unp_1, art_5).
references(art_96_par_1_unp_1, art_50).
references(art_96_par_1_unp_1, anx_1).
references(art_96_par_1_unp_1, art_3_unp_1_pnt_1).

% ==== celex:32024R1689/oj#art_97/par_2 ====
unit(art_97_par_2, 'celex:32024R1689/oj#art_97/par_2', paragraph).
references(art_97_par_2, art_6_par_6).
references(art_97_par_2, art_6_par_7).
references(art_97_par_2, art_7_par_1).
references(art_97_par_2, art_7_par_3).
references(art_97_par_2, art_11_par_3).
references(art_97_par_2, art_43_par_5).
references(art_97_par_2, art_43_par_6).
references(art_97_par_2, art_47_par_5).
references(art_97_par_2, art_51_par_3).
references(art_97_par_2, art_52_par_4).
references(art_97_par_2, art_53_par_5).
references(art_97_par_2, art_53_par_6).
requirement(art_97_par_2, commission, 'power to adopt delegated acts referred to in the listed articles').
obligation(art_97_par_2, commission, 'draw up a report in respect of the delegation of power not later than nine months before the end of the five-year period').
condition(art_97_par_2, 'the delegation of power shall be tacitly extended for periods of an identical duration unless the European Parliament or the Council opposes such extension not later than three months before the end of each period').

% ==== celex:32024R1689/oj#art_98/par_2 ====
unit(art_98_par_2, 'celex:32024R1689/oj#art_98/par_2', paragraph).
references(art_98_par_2, art_98_par_2).
references(art_98_par_2, 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99/par_1 ====
unit(art_99_par_1, 'celex:32024R1689/oj#art_99/par_1', paragraph).
references(art_99_par_1, 'celex:32024R1689/oj').
references(art_99_par_1, art_96).
obligation(art_99_par_1, member_state, 'lay down the rules on penalties and other enforcement measures, which may also include warnings and non-monetary measures, applicable to infringements by operators').
obligation(art_99_par_1, member_state, 'take all measures necessary to ensure that the rules are properly and effectively implemented').
requirement(art_99_par_1, penalty, 'effective, proportionate and dissuasive').
requirement(art_99_par_1, penalty, 'take into account the interests of SMEs, including start-ups, and their economic viability').
condition(art_99_par_1, 'taking into account the guidelines issued by the Commission pursuant to art_96').

% ==== celex:32024R1689/oj#art_99/par_3 ====
unit(art_99_par_3, 'celex:32024R1689/oj#art_99/par_3', paragraph).
references(art_99_par_3, art_5).
penalty(art_99_par_3, offender, 'administrative fines of up to EUR 35000000 or, if the offender is an undertaking, up to 7 % of its total worldwide annual turnover for the preceding financial year, whichever is higher').

% ==== celex:32024R1689/oj#art_99/par_4 ====
unit(art_99_par_4, 'celex:32024R1689/oj#art_99/par_4', paragraph).
references(art_99_par_4, art_5).
references(art_99_par_4, art_16).
references(art_99_par_4, art_22).
references(art_99_par_4, art_23).
references(art_99_par_4, art_24).
references(art_99_par_4, art_26).
references(art_99_par_4, art_31).
references(art_99_par_4, art_33_par_1).
references(art_99_par_4, art_33_par_3).
references(art_99_par_4, art_33_par_4).
references(art_99_par_4, art_34).
references(art_99_par_4, art_50).
condition(art_99_par_4, 'non-compliance with any of the listed provisions related to operators or notified bodies, other than those laid down in art_5').
penalty(art_99_par_4, offender, 'administrative fines of up to EUR 15000000 or, if the offender is an undertaking, up to 3 % of its total worldwide annual turnover for the preceding financial year, whichever is higher').

% ==== celex:32024R1689/oj#art_99/par_5 ====
unit(art_99_par_5, 'celex:32024R1689/oj#art_99/par_5', paragraph).
penalty(art_99_par_5, offender, 'administrative fines up to EUR 7500000 or, if the offender is an undertaking, up to 1 % of its total worldwide annual turnover for the preceding financial year, whichever is higher').

% ==== celex:32024R1689/oj#art_100 ====
unit(art_100, 'celex:32024R1689/oj#art_100', article).
title(art_100, 'Administrative fines on Union institutions, bodies, offices and agencies').
references(art_100, 'celex:32024R1689/oj').
references(art_100, art_5).
references(art_100, art_100).
condition(art_100, 'all relevant circumstances of the specific situation shall be taken into account and due regard shall be given to the listed factors').
penalty(art_100, union_institution_body_office_agency, 'administrative fines up to EUR 1500000 for non‑compliance with the prohibition in art_5').
penalty(art_100, union_institution_body_office_agency, 'administrative fines up to EUR 750000 for non‑compliance with requirements or obligations under this act, except those in art_5').
obligation(art_100, european_data_protection_supervisor, 'give the Union institution, body, office or agency the opportunity to be heard before decisions').
obligation(art_100, european_data_protection_supervisor, 'respect the rights of defence of the parties concerned').
obligation(art_100, european_data_protection_supervisor, 'notify the Commission annually of administrative fines imposed and any litigation').
requirement(art_100, funds, 'contribute to the general budget of the Union and not affect the effective operation of the fined institution').

% ==== celex:32024R1689/oj#art_101/par_1 ====
unit(art_101_par_1, 'celex:32024R1689/oj#art_101/par_1', paragraph).
references(art_101_par_1, 'celex:32024R1689/oj').
references(art_101_par_1, art_91).
references(art_101_par_1, art_93).
references(art_101_par_1, art_92).
references(art_101_par_1, art_93_par_3).
references(art_101_par_1, art_56).
obligation(art_101_par_1, commission, 'may impose fines on providers of general-purpose AI models').
penalty(art_101_par_1, provider, 'fine not exceeding 3% of annual total worldwide turnover in the preceding financial year or EUR 15000000, whichever is higher').
condition(art_101_par_1, 'Commission finds provider intentionally or negligently infringed relevant provisions, failed to comply with a request for a document or information, failed to comply with a measure, or failed to make the model available for evaluation').
requirement(art_101_par_1, commission, 'take into account commitments made in accordance with art_93_par_3 or codes of practice in accordance with art_56').

% ==== celex:32024R1689/oj#art_102 ====
unit(art_102, 'celex:32024R1689/oj#art_102', article).
title(art_102, 'Amendment to').
references(art_102, 'celex:32008R0300/oj').
references(art_102, 'celex:32008R0300/oj#art_4/par_3').
references(art_102, art_102).
references(art_102, 'celex:32024R1689/oj').
references(art_102, 'celex:32013R0167/oj').
references(art_102, 'celex:32013R0168/oj').
references(art_102, 'celex:32018R0858/oj').
references(art_102, 'celex:32018R1139/oj').
references(art_102, 'celex:32019R2144/oj').
references(art_102, 'celex:32014L0090/oj').
references(art_102, 'celex:32016L0797/oj').
references(art_102, 'celex:32020L1828/oj').
references(art_102, chp_3_sec_2).

% ==== celex:32024R1689/oj#art_103 ====
unit(art_103, 'celex:32024R1689/oj#art_103', article).
references(art_103, 'celex:32013R0167/oj').
references(art_103, 'celex:32013R0167/oj#art_17/par_5').
references(art_103, art_103).
references(art_103, 'celex:32013R0167/oj#art_17/par_5/unp_1').
references(art_103, 'celex:32024R1689/oj').
references(art_103, 'celex:32008R0300/oj').
references(art_103, 'celex:32013R0168/oj').
references(art_103, 'celex:32018R0858/oj').
references(art_103, 'celex:32018R1139/oj').
references(art_103, 'celex:32019R2144/oj').
references(art_103, 'celex:32014L0090/oj').
references(art_103, 'celex:32016L0797/oj').
references(art_103, 'celex:32020L1828/oj').
references(art_103, chp_3_sec_2).

% ==== celex:32024R1689/oj#art_104 ====
unit(art_104, 'celex:32024R1689/oj#art_104', article).
references(art_104, 'celex:32013R0168/oj').
references(art_104, 'celex:32013R0168/oj#art_22/par_5').
references(art_104, art_104).
references(art_104, 'celex:32013R0168/oj#art_22/par_5/unp_1').
references(art_104, 'celex:32024R1689/oj').
references(art_104, 'celex:32008R0300/oj').
references(art_104, 'celex:32013R0167/oj').
references(art_104, 'celex:32018R0858/oj').
references(art_104, 'celex:32018R1139/oj').
references(art_104, 'celex:32019R2144/oj').
references(art_104, 'celex:32014L0090/oj').
references(art_104, 'celex:32016L0797/oj').
references(art_104, 'celex:32020L1828/oj').
references(art_104, chp_3_sec_2).
requirement(art_104, chp_3_sec_2, 'shall be taken into account').

% ==== celex:32024R1689/oj#art_105 ====
unit(art_105, 'celex:32024R1689/oj#art_105', article).
title(art_105, 'Amendment to').
references(art_105, 'celex:32014L0090/oj').
references(art_105, 'celex:32014L0090/oj#art_8').
references(art_105, art_8_par_5).
references(art_105, 'celex:32008R0300/oj').
references(art_105, 'celex:32013R0167/oj').
references(art_105, 'celex:32013R0168/oj').
references(art_105, 'celex:32018R0858/oj').
references(art_105, 'celex:32018R1139/oj').
references(art_105, 'celex:32019R2144/oj').
references(art_105, 'celex:32016L0797/oj').
references(art_105, 'celex:32020L1828/oj').
references(art_105, 'celex:32024R1689/oj').
references(art_105, 'celex:32014L0090/oj#art_8/par_1').
references(art_105, 'celex:32014L0090/oj#art_8/par_2').
references(art_105, 'celex:32014L0090/oj#art_8/par_3').
references(art_105, chp_3_sec_2).
obligation(art_105, commission, 'take into account the requirements set out in chp_3_sec_2').

% ==== celex:32024R1689/oj#art_106 ====
unit(art_106, 'celex:32024R1689/oj#art_106', article).
title(art_106, 'Amendment to').
references(art_106, 'celex:32016L0797/oj').
references(art_106, 'celex:32016L0797/oj#art_5').
references(art_106, art_5_par_12).
references(art_106, 'celex:32016L0797/oj#art_5/par_1').
references(art_106, 'celex:32016L0797/oj#art_5/par_11').
references(art_106, 'celex:32024R1689/oj').
references(art_106, 'celex:32008R0300/oj').
references(art_106, 'celex:32013R0167/oj').
references(art_106, 'celex:32013R0168/oj').
references(art_106, 'celex:32018R0858/oj').
references(art_106, 'celex:32018R1139/oj').
references(art_106, 'celex:32019R2144/oj').
references(art_106, 'celex:32014L0090/oj').
references(art_106, 'celex:32020L1828/oj').
references(art_106, chp_3_sec_2).
obligation(art_106, adopter, 'the requirements set out in chp_3_sec_2 shall be taken into account').

% ==== celex:32024R1689/oj#art_107 ====
unit(art_107, 'celex:32024R1689/oj#art_107', article).
references(art_107, 'celex:32018R0858/oj').
references(art_107, 'celex:32018R0858/oj#art_5').
references(art_107, art_5_par_4).
references(art_107, 'celex:32018R0858/oj#art_5/par_3').
references(art_107, 'celex:32024R1689/oj').
references(art_107, 'celex:32008R0300/oj').
references(art_107, 'celex:32013R0167/oj').
references(art_107, 'celex:32013R0168/oj').
references(art_107, 'celex:32018R1139/oj').
references(art_107, 'celex:32019R2144/oj').
references(art_107, 'celex:32014L0090/oj').
references(art_107, 'celex:32016L0797/oj').
references(art_107, 'celex:32020L1828/oj').
references(art_107, chp_3_sec_2).
obligation(art_107, 'adopter', 'take into account the requirements set out in chp_3_sec_2').

% ==== celex:32024R1689/oj#art_108 ====
unit(art_108, 'celex:32024R1689/oj#art_108', article).
references(art_108, 'celex:32018R1139/oj').
references(art_108, 'celex:32018R1139/oj#art_17/par_2').
references(art_108, 'celex:32018R1139/oj#art_17/par_1').
references(art_108, 'celex:32024R1689/oj').
references(art_108, 'celex:32008R0300/oj').
references(art_108, 'celex:32013R0167/oj').
references(art_108, 'celex:32013R0168/oj').
references(art_108, 'celex:32018R0858/oj').
references(art_108, 'celex:32019R2144/oj').
references(art_108, 'celex:32014L0090/oj').
references(art_108, 'celex:32016L0797/oj').
references(art_108, 'celex:32020L1828/oj').
references(art_108, chp_3_sec_2).
references(art_108, 'celex:32014L0090/oj#art_19/par_1').
references(art_108, 'celex:32014L0090/oj#art_19/par_2').
references(art_108, art_43_par_1).
references(art_108, art_47_par_1).
references(art_108, art_47_par_2).
references(art_108, 'celex:32018R1139/oj#art_57/unp_1').
references(art_108, art_58_par_1).
references(art_108, art_58_par_2).

% ==== celex:32024R1689/oj#art_109 ====
unit(art_109, 'celex:32024R1689/oj#art_109', article).
references(art_109, 'celex:32019R2144/oj').
references(art_109, 'celex:32019R2144/oj#art_11').
references(art_109, art_11_par_3).
references(art_109, 'celex:32019R2144/oj#art_11/par_2').
references(art_109, 'celex:32024R1689/oj').
references(art_109, 'celex:32008R0300/oj').
references(art_109, 'celex:32013R0167/oj').
references(art_109, 'celex:32013R0168/oj').
references(art_109, 'celex:32018R0858/oj').
references(art_109, 'celex:32018R1139/oj').
references(art_109, 'celex:32014L0090/oj').
references(art_109, 'celex:32016L0797/oj').
references(art_109, 'celex:32020L1828/oj').
references(art_109, chp_3_sec_2).

% ==== celex:32024R1689/oj#art_110 ====
unit(art_110, 'celex:32024R1689/oj#art_110', article).
references(art_110, 'celex:32020L1828/oj').
references(art_110, 'celex:32020L1828/oj#anx_I').
references(art_110, 'celex:32009L0022/oj').
references(art_110, art_110).
references(art_110, 'celex:32024R1689/oj').
references(art_110, 'celex:32008R0300/oj').
references(art_110, 'celex:32013R0167/oj').
references(art_110, 'celex:32013R0168/oj').
references(art_110, 'celex:32018R0858/oj').
references(art_110, 'celex:32018R1139/oj').
references(art_110, 'celex:32019R2144/oj').
references(art_110, 'celex:32014L0090/oj').
references(art_110, 'celex:32016L0797/oj').

% ==== celex:32024R1689/oj#art_111/par_1 ====
unit(art_111_par_1, 'celex:32024R1689/oj#art_111/par_1', paragraph).
references(art_111_par_1, art_5).
references(art_111_par_1, anx_10).
references(art_111_par_1, 'celex:32024R1689/oj').
obligation(art_111_par_1, high_risk_ai_system, 'shall be brought into compliance by 31 December 2030').
deadline(art_111_par_1, '31 December 2030').
condition(art_111_par_1, 'placed on the market or put into service before 2 August 2027').

% ==== celex:32024R1689/oj#art_112/par_1 ====
unit(art_112_par_1, 'celex:32024R1689/oj#art_112/par_1', paragraph).
references(art_112_par_1, anx_3).
references(art_112_par_1, art_5).
references(art_112_par_1, art_97).
references(art_112_par_1, 'celex:32024R1689/oj').
obligation(art_112_par_1, commission, 'assess the need for amendment of the list set out in anx_3 and of the list of prohibited AI practices laid down in art_5 once a year following the entry into force of the act and until the end of the period of the delegation of power laid down in art_97').
obligation(art_112_par_1, commission, 'submit the findings of that assessment to the European Parliament and the Council').

% ==== celex:32024R1689/oj#art_112/par_2 ====
unit(art_112_par_2, 'celex:32024R1689/oj#art_112/par_2', paragraph).
references(art_112_par_2, anx_3).
references(art_112_par_2, art_50).
obligation(art_112_par_2, commission, 'evaluate and report to the European Parliament and to the Council').
deadline(art_112_par_2, '2 August 2028 and every four years thereafter').

% ==== celex:32024R1689/oj#art_112/par_3 ====
unit(art_112_par_3, 'celex:32024R1689/oj#art_112/par_3', paragraph).
references(art_112_par_3, 'celex:32024R1689/oj').
obligation(art_112_par_3, commission, 'submit a report on the evaluation and review of the Regulation by 2 August 2029 and every four years thereafter to the European Parliament and to the Council').
obligation(art_112_par_3, commission, 'make the reports public').
deadline(art_112_par_3, '2 August 2029 and every four years thereafter').
requirement(art_112_par_3, report, 'include an assessment with regard to the structure of enforcement and the possible need for a Union agency to resolve any identified shortcomings').
requirement(art_112_par_3, report, 'where appropriate, be accompanied by a proposal for amendment of the Regulation').

% ==== celex:32024R1689/oj#art_112/par_4 ====
unit(art_112_par_4, 'celex:32024R1689/oj#art_112/par_4', paragraph).
references(art_112_par_4, art_112_par_2).
references(art_112_par_4, 'celex:32024R1689/oj').
references(art_112_par_4, art_99_par_1).
obligation(art_112_par_4, reports, 'pay specific attention to the following').

% ==== celex:32024R1689/oj#art_112/par_5 ====
unit(art_112_par_5, 'celex:32024R1689/oj#art_112/par_5', paragraph).
references(art_112_par_5, 'celex:32024R1689/oj').
obligation(art_112_par_5, commission, 'evaluate the functioning of the AI Office, including whether it has been given sufficient powers and competences to fulfil its tasks and whether it is relevant and needed for the proper implementation and enforcement of the Regulation').
obligation(art_112_par_5, commission, 'submit a report on its evaluation to the European Parliament and to the Council').
deadline(art_112_par_5, '2 August 2028').

% ==== celex:32024R1689/oj#art_112/par_6 ====
unit(art_112_par_6, 'celex:32024R1689/oj#art_112/par_6', paragraph).
obligation(art_112_par_6, commission, 'submit a report on the review of the progress on the development of standardisation deliverables on the energy-efficient development of general-purpose AI models, and assess the need for further measures or actions, including binding measures or actions, to the European Parliament and to the Council, and make it public').
deadline(art_112_par_6, '2 August 2028').

% ==== celex:32024R1689/oj#art_112/par_7 ====
unit(art_112_par_7, 'celex:32024R1689/oj#art_112/par_7', paragraph).
references(art_112_par_7, chp_3_sec_2).
obligation(art_112_par_7, commission, 'evaluate the impact and effectiveness of voluntary codes of conduct to foster the application of the requirements set out in chp_3_sec_2 for AI systems other than high‑risk AI systems and possibly other additional requirements, including as regards environmental sustainability').
deadline(art_112_par_7, '2 August 2028 and every three years thereafter').

% ==== celex:32024R1689/oj#art_112/par_10 ====
unit(art_112_par_10, 'celex:32024R1689/oj#art_112/par_10', paragraph).
references(art_112_par_10, 'celex:32024R1689/oj').
obligation(art_112_par_10, commission, 'submit appropriate proposals to amend the Regulation, taking into account developments in technology, the effect of AI systems on health and safety, and on fundamental rights, and in light of the state of progress in the information society').

% ==== celex:32024R1689/oj#chp_1 ====
unit(chp_1, 'celex:32024R1689/oj#chp_1', chapter).
title(chp_1, 'CHAPTER I GENERAL PROVISIONS').
unit(art_1, 'celex:32024R1689/oj#art_1', article).
title(art_1, 'Subject matter').
references(art_1, 'celex:32024R1689/oj').
references(art_1, 'celex:12016P/oj').
unit(art_2, 'celex:32024R1689/oj#art_2', article).
title(art_2, 'Scope').
references(art_2, 'celex:32024R1689/oj').
references(art_2, 'celex:32024R1689/oj#art_6/par_1').
references(art_2, 'celex:32024R1689/oj#art_102').
references(art_2, 'celex:32024R1689/oj#art_103').
references(art_2, 'celex:32024R1689/oj#art_104').
references(art_2, 'celex:32024R1689/oj#art_105').
references(art_2, 'celex:32024R1689/oj#art_106').
references(art_2, 'celex:32024R1689/oj#art_107').
references(art_2, 'celex:32024R1689/oj#art_108').
references(art_2, 'celex:32024R1689/oj#art_109').
references(art_2, 'celex:32024R1689/oj#art_112').
references(art_2, 'celex:32024R1689/oj#art_57').
references(art_2, 'celex:32024R1689/oj#anx_1/sec_2').
references(art_2, 'celex:32024R1689/oj#art_2/par_1').
references(art_2, 'celex:32022R2065/oj#chp_2').
references(art_2, 'celex:32016R0679/oj').
references(art_2, 'celex:32024R1689/oj#art_10/par_5').
references(art_2, 'celex:32024R1689/oj#art_59').
references(art_2, 'celex:32024R1689/oj#art_5').
references(art_2, 'celex:32024R1689/oj#art_50').
unit(art_3, 'celex:32024R1689/oj#art_3', article).
title(art_3, 'Definitions').
references(art_3, 'celex:32024R1689/oj').
references(art_3, 'celex:32024R1689/oj#chp_3/sec_2').
references(art_3, 'celex:32012R1025/oj#art_2/par_1/pnt_c').
references(art_3, 'celex:32012R1025/oj#art_2/pnt_4').
references(art_3, 'celex:32016R0679/oj#art_9/par_1').
references(art_3, 'celex:32016L0680/oj#art_10').
references(art_3, 'celex:32018R1725/oj#art_10/par_1').
references(art_3, 'celex:32022L2557/oj#art_2/pnt_4').
references(art_3, 'celex:32024D01459/oj').
references(art_3, 'celex:32016R0679/oj#art_4/pnt_1').
references(art_3, 'celex:32016R0679/oj#art_4/pnt_4').
references(art_3, 'celex:32024R1689/oj#art_57').
references(art_3, 'celex:32024R1689/oj#art_60').
unit(art_4, 'celex:32024R1689/oj#art_4', article).
title(art_4, 'AI literacy').
obligation(art_4, provider, 'take measures to ensure, to their best extent, a sufficient level of AI literacy of their staff and other persons dealing with the operation and use of AI systems on their behalf, taking into account technical knowledge, experience, education and training and the context of use, and considering the persons or groups of persons on whom the AI systems are to be used').
obligation(art_4, deployer, 'take measures to ensure, to their best extent, a sufficient level of AI literacy of their staff and other persons dealing with the operation and use of AI systems on their behalf, taking into account technical knowledge, experience, education and training and the context of use, and considering the persons or groups of persons on whom the AI systems are to be used').
definition(ai_system, 'machine-based system designed to operate with varying levels of autonomy and may exhibit adaptiveness after deployment, inferring from input to generate outputs such as predictions, content, recommendations or decisions influencing physical or virtual environments').
definition(risk, 'combination of the probability of an occurrence of harm and the severity of that harm').
definition(provider, 'natural or legal person, public authority, agency or other body that develops an AI system or a general-purpose AI model or that has such a system/model developed and places it on the market or puts it into service under its own name or trademark, whether for payment or free of charge').
definition(deployer, 'natural or legal person, public authority, agency or other body using an AI system under its authority except where the AI system is used in the course of a personal non-professional activity').
definition(authorised_representative, 'natural or legal person located or established in the Union who has received and accepted a written mandate from a provider of an AI system or a general-purpose AI model to perform and carry out on its behalf the obligations and procedures established by the regulation').
definition(importer, 'natural or legal person located or established in the Union that places on the market an AI system that bears the name or trademark of a natural or legal person established in a third country').
definition(distributor, 'natural or legal person in the supply chain, other than the provider or the importer, that makes an AI system available on the Union market').
definition(operator, 'provider, product manufacturer, deployer, authorised representative, importer or distributor').
definition(placing_on_the_market, 'first making available of an AI system or a general-purpose AI model on the Union market').
definition(making_available_on_the_market, 'supply of an AI system or a general-purpose AI model for distribution or use on the Union market in the course of a commercial activity, whether in return for payment or free of charge').
definition(putting_into_service, 'supply of an AI system for first use directly to the deployer or for own use in the Union for its intended purpose').
definition(intended_purpose, 'use for which an AI system is intended by the provider, including specific context and conditions of use as specified in the information supplied by the provider').
definition(reasonably_foreseeable_misuse, 'use of an AI system in a way that is not in accordance with its intended purpose, but may result from reasonably foreseeable human behaviour or interaction with other systems').
definition(safety_component, 'component of a product or of an AI system which fulfils a safety function for that product or AI system, or whose failure endangers health and safety of persons or property').
definition(instructions_for_use, 'information provided by the provider to inform the deployer of, in particular, an AI system’s intended purpose and proper use').
definition(recall_of_an_ai_system, 'any measure aiming to achieve the return to the provider or taking out of service or disabling the use of an AI system made available to deployers').
definition(withdrawal_of_an_ai_system, 'any measure aiming to prevent an AI system in the supply chain being made available on the market').
definition(performance_of_an_ai_system, 'ability of an AI system to achieve its intended purpose').
definition(notifying_authority, 'national authority responsible for setting up and carrying out the necessary procedures for the assessment, designation and notification of conformity assessment bodies and for their monitoring').
definition(conformity_assessment, 'process of demonstrating whether the requirements set out in chapter 3 section 2 relating to a high-risk AI system have been fulfilled').
definition(conformity_assessment_body, 'body that performs third-party conformity assessment activities, including testing, certification and inspection').
definition(notified_body, 'conformity assessment body notified in accordance with the regulation and other relevant Union harmonisation legislation').
definition(substantial_modification, 'change to an AI system after its placing on the market or putting into service which is not foreseen or planned in the initial conformity assessment and affects compliance with the requirements or modifies the intended purpose').
definition(ce_marking, 'marking by which a provider indicates that an AI system is in conformity with the requirements set out in chapter 3 section 2 and other applicable Union harmonisation legislation').
definition(post_market_monitoring_system, 'all activities carried out by providers of AI systems to collect and review experience gained from the use of AI systems they place on the market or put into service for the purpose of identifying any need to immediately apply corrective or preventive actions').
definition(market_surveillance_authority, 'national authority carrying out the activities and taking the measures pursuant to regulation 32019R1020/oj').
definition(harmonised_standard, 'harmonised standard as defined in regulation 32012R1025/oj article 2 paragraph 1 point c').
definition(common_specification, 'set of technical specifications as defined in regulation 32012R1025/oj article 2 point 4, providing means to comply with certain requirements established under the regulation').
definition(training_data, 'data used for training an AI system through fitting its learnable parameters').
definition(validation_data, 'data used for providing an evaluation of the trained AI system and for tuning its non-learnable parameters and its learning process in order, inter alia, to prevent underfitting or overfitting').
definition(validation_data_set, 'separate data set or part of the training data set, either as a fixed or variable split').
definition(testing_data, 'data used for providing an independent evaluation of the AI system in order to confirm the expected performance of that system before its placing on the market or putting into service').
definition(input_data, 'data provided to or directly acquired by an AI system on the basis of which the system produces an output').
definition(biometric_data, 'personal data resulting from specific technical processing relating to the physical, physiological or behavioural characteristics of a natural person, such as facial images or dactyloscopic data').
definition(biometric_identification, 'automated recognition of physical, physiological, behavioural, or psychological human features for the purpose of establishing the identity of a natural person by comparing biometric data of that individual to biometric data of individuals stored in a database').
definition(biometric_verification, 'automated, one-to-one verification, including authentication, of the identity of natural persons by comparing their biometric data to previously provided biometric data').
definition(special_categories_of_personal_data, 'categories of personal data referred to in regulation 32016R0679/oj article 9 paragraph 1, directive 32016L0680/oj article 10 and regulation 32018R1725/oj article 10 paragraph 1').
definition(sensitive_operational_data, 'operational data related to activities of prevention, detection, investigation or prosecution of criminal offences, the disclosure of which could jeopardise the integrity of criminal proceedings').
definition(emotion_recognition_system, 'AI system for the purpose of identifying or inferring emotions or intentions of natural persons on the basis of their biometric data').
definition(biometric_categorisation_system, 'AI system for the purpose of assigning natural persons to specific categories on the basis of their biometric data, unless it is ancillary to another commercial service and strictly necessary for objective technical reasons').
definition(remote_biometric_identification_system, 'AI system for the purpose of identifying natural persons, without their active involvement, typically at a distance through the comparison of a person’s biometric data with the biometric data contained in a reference database').
definition(real_time_remote_biometric_identification_system, 'remote biometric identification system whereby the capturing of biometric data, the comparison and the identification all occur without a significant delay, comprising not only instant identification, but also limited short delays to avoid circumvention').
definition(post_remote_biometric_identification_system, 'remote biometric identification system other than a real-time remote biometric identification system').
definition(publicly_accessible_space, 'any publicly or privately owned physical place accessible to an undetermined number of natural persons, regardless of whether certain conditions for access may apply, and regardless of the potential capacity restrictions').
definition(law_enforcement_authority, 'any public authority competent for the prevention, investigation, detection or prosecution of criminal offences or the execution of criminal penalties, including the safeguarding against and the prevention of threats to public security; or any other body or entity entrusted by Member State law to exercise public authority and public powers for those purposes').
definition(law_enforcement, 'activities carried out by law enforcement authorities or on their behalf for the prevention, investigation, detection or prosecution of criminal offences or the execution of criminal penalties, including safeguarding against and preventing threats to public security').
definition(ai_office, 'the Commission’s function of contributing to the implementation, monitoring and supervision of AI systems and general-purpose AI models, and AI governance, provided for in regulation 32024D01459/oj; references in the regulation to the AI Office shall be construed as references to the Commission').
definition(national_competent_authority, 'a notifying authority or a market surveillance authority; as regards AI systems put into service or used by Union institutions, agencies, offices and bodies, references to national competent authorities or market surveillance authorities in the regulation shall be construed as references to the European Data Protection Supervisor').
definition(serious_incident, 'incident or malfunctioning of an AI system that directly or indirectly leads to the death of a person or serious harm to health; or a serious and irreversible disruption of the management or operation of critical infrastructure; or the infringement of obligations under Union law intended to protect fundamental rights; or serious harm to property or the environment').
definition(personal_data, 'personal data as defined in regulation 32016R0679/oj article 4 point 1').
definition(non_personal_data, 'data other than personal data as defined in regulation 32016R0679/oj article 4 point 1').
definition(profiling, 'profiling as defined in regulation 32016R0679/oj article 4 point 4').
definition(real_world_testing_plan, 'document that describes the objectives, methodology, geographical, population and temporal scope, monitoring, organisation and conduct of testing in real-world conditions').
definition(sandbox_plan, 'document agreed between the participating provider and the competent authority describing the objectives, conditions, timeframe, methodology and requirements for the activities carried out within the sandbox').
definition(ai_regulatory_sandbox, 'controlled framework set up by a competent authority which offers providers or prospective providers of AI systems the possibility to develop, train, validate and test, where appropriate in real-world conditions, an innovative AI system, pursuant to a sandbox plan for a limited time under regulatory supervision').
definition(ai_literacy, 'skills, knowledge and understanding that allow providers, deployers and affected persons, taking into account their respective rights and obligations in the context of the regulation, to make an informed deployment of AI systems, as well as to gain awareness about the opportunities and risks of AI and possible harm it can cause').
definition(testing_in_real_world_conditions, 'temporary testing of an AI system for its intended purpose in real-world conditions outside a laboratory or otherwise simulated environment, with a view to gathering reliable and robust data and to assessing and verifying the conformity of the AI system with the requirements of the regulation and it does not qualify as placing the AI system on the market or putting it into service, provided that all the conditions laid down in article 57 and article 60 are fulfilled').
definition(subject, 'natural person who participates in testing in real-world conditions').
definition(informed_consent, 'subject’s freely given, specific, unambiguous and voluntary expression of his or her willingness to participate in a particular testing in real-world conditions, after having been informed of all aspects of the testing that are relevant to the subject’s decision to participate').
definition(deep_fake, 'AI-generated or manipulated image, audio or video content that resembles existing persons, objects, places, entities or events and would falsely appear to a person to be authentic or truthful').
definition(widespread_infringement, 'any act or omission contrary to Union law protecting the interest of individuals, which has harmed or is likely to harm the collective interests of individuals residing in at least two Member States other than the Member State in which the act originated or the provider or deployer is located, and has caused or is likely to cause harm to the collective interests of individuals and is occurring concurrently in at least three Member States').
definition(critical_infrastructure, 'critical infrastructure as defined in regulation 32022L2557/oj article 2 point 4').
definition(general_purpose_ai_model, 'AI model, including where such an AI model is trained with a large amount of data using self-supervision at scale, that displays significant generality and is capable of competently performing a wide range of distinct tasks regardless of the way the model is placed on the market and that can be integrated into a variety of downstream systems or applications, except AI models that are used for research, development or prototyping activities before they are placed on the market').
definition(high_impact_capabilities, 'capabilities that match or exceed the capabilities recorded in the most advanced general-purpose AI models').
definition(systemic_risk, 'risk that is specific to the high-impact capabilities of general-purpose AI models, having a significant impact on the Union market due to their reach, or due to actual or reasonably foreseeable negative effects on public health, safety, public security, fundamental rights, or society as a whole, that can be propagated at scale across the value chain').
definition(general_purpose_ai_system, 'AI system which is based on a general-purpose AI model and which has the capability to serve a variety of purposes, both for direct use as well as for integration in other AI systems').
definition(floating_point_operation, 'any mathematical operation or assignment involving floating-point numbers, which are a subset of the real numbers typically represented on computers by an integer of fixed precision scaled by an integer exponent of a fixed base').
definition(downstream_provider, 'provider of an AI system, including a general-purpose AI system, which integrates an AI model, regardless of whether the AI model is provided by themselves and vertically integrated or provided by another entity based on contractual relations').

% ==== celex:32024R1689/oj#chp_2 ====
unit(chp_2, 'celex:32024R1689/oj#chp_2', chapter).
title(art_5, 'Prohibited AI practices').
unit(art_5_par_1, 'celex:32024R1689/oj#art_5/par_1', paragraph).
unit(art_5_par_7, 'celex:32024R1689/oj#art_5/par_7', paragraph).
unit(art_5_par_8, 'celex:32024R1689/oj#art_5/par_8', paragraph).
prohibition(art_5_par_1_pnt_a, provider, 'placing on the market, putting into service or use of an AI system that deploys subliminal techniques beyond a person''s consciousness or purposefully manipulative or deceptive techniques, with the objective or effect of materially distorting the behaviour of a person or group, causing significant harm').
prohibition(art_5_par_1_pnt_b, provider, 'placing on the market, putting into service or use of an AI system that exploits vulnerabilities of a natural person or specific group due to age, disability or social/economic situation, with the objective or effect of materially distorting behaviour and causing significant harm').
prohibition(art_5_par_1_pnt_c_i, provider, 'detrimental or unfavourable treatment of certain natural persons or groups in social contexts unrelated to the contexts in which the data was originally generated').
prohibition(art_5_par_1_pnt_c_ii, provider, 'detrimental or unfavourable treatment of certain natural persons or groups that is unjustified or disproportionate to their social behaviour or its gravity').
prohibition(art_5_par_1_pnt_d, provider, 'placing on the market, putting into service or use of an AI system for making risk assessments of natural persons to predict criminal offence risk based solely on profiling or personality traits, except when used to support human assessment based on objective facts').
prohibition(art_5_par_1_pnt_e, provider, 'placing on the market, putting into service or use of AI systems that create or expand facial recognition databases through untargeted scraping of facial images from the internet or CCTV footage').
prohibition(art_5_par_1_pnt_f, provider, 'placing on the market, putting into service or use of AI systems to infer emotions of a natural person in workplace or education institutions, except for medical or safety reasons').
prohibition(art_5_par_1_pnt_g, provider, 'placing on the market, putting into service or use of biometric categorisation systems that infer race, political opinions, trade union membership, religious or philosophical beliefs, sex life or sexual orientation; does not cover labelling of lawfully acquired biometric datasets or law‑enforcement categorisation').
prohibition(art_5_par_1_pnt_h, law_enforcement, 'use of real‑time remote biometric identification systems in publicly accessible spaces for law enforcement, unless strictly necessary for (i) targeted search for victims of abduction, trafficking or sexual exploitation, (ii) prevention of a substantial imminent threat to life or safety or a terrorist attack, or (iii) localisation of a person suspected of having committed a criminal offence as defined in annex 2').
obligation(art_5_par_2, law_enforcement, 'deploy the system only to confirm the identity of the specifically targeted individual and take into account the nature of the situation and the consequences for the rights and freedoms of all persons concerned').
obligation(art_5_par_3, judicial_authority, 'grant prior authorisation for the use of a real‑time remote biometric identification system, based on objective evidence, necessary and proportionate, limited in time, geographic and personal scope').
prohibition(art_5_par_3, provider, 'use the system without prior authorisation unless urgency; if authorisation is rejected, stop use immediately and delete all data and outputs').
obligation(art_5_par_4, provider, 'notify the relevant market surveillance authority and the national data protection authority with the minimum information specified and without sensitive operational data').
obligation(art_5_par_6, national_authorities, 'submit annual reports on the use of real‑time remote biometric identification systems to the Commission').
obligation(art_5_par_7, commission, 'publish annual reports on the use of real‑time remote biometric identification systems based on aggregated data, without sensitive operational data').
references(art_5_par_1, 'celex:32024R1689/oj#anx_2').
references(art_5_par_1, 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references(art_5_par_1, 'celex:32016R0679/oj#art_9').
references(art_5_par_2, 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references(art_5_par_3, 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references(art_5_par_3, 'celex:32024R1689/oj#art_27').
references(art_5_par_3, 'celex:32024R1689/oj#art_49').
references(art_5_par_3, 'celex:32024R1689/oj#art_5/par_2').
references(art_5_par_3, 'celex:32024R1689/oj#art_5/par_5').
references(art_5_par_4, 'celex:32024R1689/oj#art_5/par_3').
references(art_5_par_5, 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references(art_5_par_5, 'celex:32024R1689/oj#art_5/par_2').
references(art_5_par_5, 'celex:32024R1689/oj#art_5/par_3').
references(art_5_par_6, 'celex:32024R1689/oj#art_5/par_4').
references(art_5_par_7, 'celex:32024R1689/oj#art_5/par_6').
references(art_5_par_8, 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#chp_3/sec_2 ====
unit(chp_3_sec_2, 'celex:32024R1689/oj#chp_3/sec_2', section).
references(chp_3_sec_2, chp_3_sec_2).
references(chp_3_sec_2, art_9).
references(chp_3_sec_2, 'celex:32024R1689/oj').
references(chp_3_sec_2, anx_1_sec_1).
references(chp_3_sec_2, art_8_par_1).
references(chp_3_sec_2, art_72).
references(chp_3_sec_2, art_9_par_2_unp_1_pnt_a).
references(chp_3_sec_2, art_9_par_2).
references(chp_3_sec_2, art_9_par_2_unp_1_pnt_d).
references(chp_3_sec_2, art_13).
references(chp_3_sec_2, art_10_par_2).
references(chp_3_sec_2, art_10_par_3).
references(chp_3_sec_2, art_10_par_4).
references(chp_3_sec_2, art_10_par_5).
references(chp_3_sec_2, art_10_par_2_unp_1_pnt_f).
references(chp_3_sec_2, art_10_par_2_unp_1_pnt_g).
references(chp_3_sec_2, 'celex:32016R0679/oj').
references(chp_3_sec_2, 'celex:32018R1725/oj').
references(chp_3_sec_2, 'celex:32016L0680/oj').
references(chp_3_sec_2, art_60).
references(chp_3_sec_2, art_9_par_1).
references(chp_3_sec_2, art_9_par_3).
references(chp_3_sec_2, art_9_par_4).
references(chp_3_sec_2, art_9_par_5).
references(chp_3_sec_2, art_9_par_6).
references(chp_3_sec_2, art_9_par_7).
references(chp_3_sec_2, art_9_par_8).
references(chp_3_sec_2, art_9_par_9).
references(chp_3_sec_2, art_79_par_1).
references(chp_3_sec_2, art_26_par_5).
references(chp_3_sec_2, anx_3_pnt_1_pnt_a).
references(chp_3_sec_2, art_14_par_5).
references(chp_3_sec_2, chp_3_sec_3).
references(chp_3_sec_2, art_15).
references(chp_3_sec_2, art_15_par_1).
references(chp_3_sec_2, art_97).
references(chp_3_sec_2, anx_4).
references(chp_3_sec_2, art_11_par_1).
references(chp_3_sec_2, art_12).
references(chp_3_sec_2, art_14).
obligation(art_8, high_risk_ai_system, 'shall comply with the requirements laid down in chp_3_sec_2, taking into account intended purpose and the state of the art').
obligation(art_8, provider, 'shall be responsible for ensuring that a product containing an AI system complies with all applicable Union harmonisation legislation and the requirements of this Regulation').
obligation(art_9, provider, 'shall establish, implement, document and maintain a risk management system in relation to high‑risk AI systems').
obligation(art_9_par_2, provider, 'shall comprise the steps: (a) identification and analysis of known and foreseeable risks; (b) estimation and evaluation of risks under intended purpose and foreseeable misuse; (c) evaluation of other risks based on post‑market monitoring (art_72); (d) adoption of appropriate risk management measures (art_9_par_2_unp_1_pnt_a)').
obligation(art_9_par_3, provider, 'shall consider only risks that may be reasonably mitigated or eliminated through design or provision of technical information').
obligation(art_9_par_4, provider, 'shall give due consideration to the combined application of the requirements set out in chp_3_sec_2 when designing risk management measures').
obligation(art_9_par_5, provider, 'shall ensure that residual risk associated with each hazard and overall is judged acceptable').
obligation(art_9_par_6, provider, 'shall eliminate or reduce risks identified in art_9_par_2 as far as technically feasible through design and development').
obligation(art_9_par_6_b, provider, 'shall implement mitigation and control measures for risks that cannot be eliminated').
obligation(art_9_par_6_c, provider, 'shall provide information pursuant to art_13 and, where appropriate, training to deployers').
obligation(art_9_par_7, provider, 'shall test high‑risk AI systems to identify appropriate risk management measures and ensure compliance with chp_3_sec_2').
obligation(art_9_par_8, provider, 'may include testing in real‑world conditions in accordance with art_60').
obligation(art_9_par_9, provider, 'shall perform testing prior to placing on the market or putting into service, against defined metrics and probabilistic thresholds').
obligation(art_9_par_10, provider, 'shall consider the impact of the system on persons under 18 and other vulnerable groups when implementing the risk management system').
obligation(art_10, provider, 'shall develop training, validation and testing data sets that meet the quality criteria set out in art_10_par_2‑art_10_par_5 when techniques involving training of AI models are used').
obligation(art_10_par_2, provider, 'shall ensure data governance and management practices covering design choices, data collection, processing operations, assumptions, availability, bias examination, bias mitigation (art_10_par_2_unp_1_pnt_f) and identification of data gaps (art_10_par_2_unp_1_pnt_g)').
obligation(art_11, provider, 'shall draw up technical documentation before the system is placed on the market or put into service and keep it up‑to‑date, demonstrating compliance with chp_3_sec_2 and containing the elements set out in anx_4').
obligation(art_12, provider, 'shall ensure high‑risk AI systems allow automatic recording of events (logs) over their lifetime').
obligation(art_13, provider, 'shall ensure high‑risk AI systems are designed to be sufficiently transparent for deployers to interpret outputs, in line with the obligations set out in chp_3_sec_3').
obligation(art_14, provider, 'shall design high‑risk AI systems so that they can be effectively overseen by natural persons during use').
obligation(art_15, provider, 'shall design high‑risk AI systems to achieve appropriate accuracy, robustness and cybersecurity throughout their lifecycle').

% ==== celex:32024R1689/oj#chp_3/sec_3 ====
unit(chp_3_sec_3, 'celex:32024R1689/oj#chp_3/sec_3', section).
references(art_16, chp_3_sec_2).
references(art_16, art_17).
references(art_16, art_18).
references(art_16, art_19).
references(art_16, art_43).
references(art_16, art_47).
references(art_16, 'celex:32024R1689/oj').
references(art_16, art_48).
references(art_16, art_49_par_1).
references(art_16, art_20).
references(art_16, 'celex:32016L2102/oj').
references(art_16, 'celex:32019L0882/oj').
references(art_17, 'celex:32024R1689/oj').
references(art_17, chp_3_sec_2).
references(art_17, art_9).
references(art_17, art_72).
references(art_17, art_73).
references(art_17, art_17_par_1).
references(art_17, art_40).
references(art_17, art_17_par_1_unp_1_pnt_g).
references(art_17, art_17_par_1_unp_1_pnt_h).
references(art_17, art_17_par_1_unp_1_pnt_i).
references(art_18, art_11).
references(art_18, art_17).
references(art_18, art_18_par_1).
references(art_22, 'celex:32024R1689/oj').
references(art_22, art_47).
references(art_22, art_11).
references(art_22, art_74_par_10).
references(art_22, art_22_par_3_unp_1_pnt_b).
references(art_22, chp_3_sec_2).
references(art_22, art_12_par_1).
references(art_22, art_49_par_1).
references(art_22, anx_8_sec_1_pnt_3).
references(art_23, 'celex:32024R1689/oj').
references(art_23, art_43).
references(art_23, art_11).
references(art_23, anx_4).
references(art_23, art_47).
references(art_23, art_22_par_1).
references(art_23, art_79_par_1).
references(art_23, art_18_par_1).
references(art_23, art_23_par_5).
references(art_24, art_47).
references(art_24, art_16_unp_1_pnt_b).
references(art_24, art_16_unp_1_pnt_c).
references(art_24, art_23_par_3).
references(art_24, chp_3_sec_2).
references(art_24, art_74_par_10).
references(art_24, art_24_par_1).
references(art_24, art_24_par_2).
references(art_24, art_24_par_3).
references(art_24, art_24_par_4).
references(art_24, art_79_par_1).
references(art_25, 'celex:32024R1689/oj').
references(art_25, art_6).
references(art_25, art_25_par_1).
references(art_25, art_25_par_2).
references(art_25, art_25_par_3).
references(art_25, anx_1_sec_1).
references(art_25, art_16).
references(art_25, art_25_par_4).
references(art_26, art_26_par_3).
references(art_26, art_26_par_6).
references(art_26, art_72).
references(art_26, art_79_par_1).
references(art_26, art_73).
references(art_26, art_26_par_5_unp_1).
references(art_26, art_26_par_10_unp_1).
references(art_26, art_26_par_10).
references(art_26, 'celex:32016R0679/oj#art_35').
references(art_26, 'celex:32016L0680/oj#art_27').
references(art_26, art_49).
references(art_26, art_71).
references(art_26, art_13).
references(art_26, 'celex:32016R0679/oj#art_9').
references(art_26, 'celex:32016L0680/oj#art_10').
references(art_26, art_26_par_10_unp_5).
references(art_26, 'celex:32016L0680/oj').
references(art_26, art_50).
references(art_26, anx_3).
references(art_26, 'celex:32016L0680/oj#art_13').
references(art_27, art_6_par_2).
references(art_27, anx_3_pnt_2).
references(art_27, anx_3_pnt_5_pnt_b).
references(art_27, anx_3_pnt_5_pnt_c).
references(art_27, art_27_par_1_unp_1_pnt_c).
references(art_27, art_13).
references(art_27, art_27_par_5).
references(art_27, art_46_par_1).
references(art_27, art_27).
references(art_27, 'celex:32016R0679/oj#art_35').
references(art_27, 'celex:32016L0680/oj#art_27').

% ==== celex:32024R1689/oj#chp_3/sec_4 ====
unit(chp_3_sec_4,'celex:32024R1689/oj#chp_3/sec_4',section).
unit(art_28,'celex:32024R1689/oj#art_28',article).
unit(art_28_par_1,'celex:32024R1689/oj#art_28/par_1',paragraph).
unit(art_28_par_2,'celex:32024R1689/oj#art_28/par_2',paragraph).
unit(art_28_par_3,'celex:32024R1689/oj#art_28/par_3',paragraph).
unit(art_28_par_4,'celex:32024R1689/oj#art_28/par_4',paragraph).
unit(art_28_par_5,'celex:32024R1689/oj#art_28/par_5',paragraph).
unit(art_28_par_6,'celex:32024R1689/oj#art_28/par_6',paragraph).
unit(art_28_par_7,'celex:32024R1689/oj#art_28/par_7',paragraph).
unit(art_29,'celex:32024R1689/oj#art_29',article).
unit(art_29_par_1,'celex:32024R1689/oj#art_29/par_1',paragraph).
unit(art_29_par_2,'celex:32024R1689/oj#art_29/par_2',paragraph).
unit(art_29_par_3,'celex:32024R1689/oj#art_29/par_3',paragraph).
unit(art_29_par_4,'celex:32024R1689/oj#art_29/par_4',paragraph).
unit(art_30,'celex:32024R1689/oj#art_30',article).
unit(art_30_par_1,'celex:32024R1689/oj#art_30/par_1',paragraph).
unit(art_30_par_2,'celex:32024R1689/oj#art_30/par_2',paragraph).
unit(art_30_par_3,'celex:32024R1689/oj#art_30/par_3',paragraph).
unit(art_30_par_4,'celex:32024R1689/oj#art_30/par_4',paragraph).
unit(art_30_par_5,'celex:32024R1689/oj#art_30/par_5',paragraph).
unit(art_31,'celex:32024R1689/oj#art_31',article).
unit(art_31_par_1,'celex:32024R1689/oj#art_31/par_1',paragraph).
unit(art_31_par_2,'celex:32024R1689/oj#art_31/par_2',paragraph).
unit(art_31_par_3,'celex:32024R1689/oj#art_31/par_3',paragraph).
unit(art_31_par_4,'celex:32024R1689/oj#art_31/par_4',paragraph).
unit(art_31_par_5,'celex:32024R1689/oj#art_31/par_5',paragraph).
unit(art_31_par_6,'celex:32024R1689/oj#art_31/par_6',paragraph).
unit(art_31_par_7,'celex:32024R1689/oj#art_31/par_7',paragraph).
unit(art_31_par_8,'celex:32024R1689/oj#art_31/par_8',paragraph).
unit(art_31_par_9,'celex:32024R1689/oj#art_31/par_9',paragraph).
unit(art_31_par_10,'celex:32024R1689/oj#art_31/par_10',paragraph).
unit(art_31_par_11,'celex:32024R1689/oj#art_31/par_11',paragraph).
unit(art_31_par_12,'celex:32024R1689/oj#art_31/par_12',paragraph).
unit(art_32,'celex:32024R1689/oj#art_32',article).
unit(art_33,'celex:32024R1689/oj#art_33',article).
unit(art_33_par_1,'celex:32024R1689/oj#art_33/par_1',paragraph).
unit(art_33_par_2,'celex:32024R1689/oj#art_33/par_2',paragraph).
unit(art_33_par_3,'celex:32024R1689/oj#art_33/par_3',paragraph).
unit(art_33_par_4,'celex:32024R1689/oj#art_33/par_4',paragraph).
unit(art_34,'celex:32024R1689/oj#art_34',article).
unit(art_34_par_1,'celex:32024R1689/oj#art_34/par_1',paragraph).
unit(art_34_par_2,'celex:32024R1689/oj#art_34/par_2',paragraph).
unit(art_34_par_3,'celex:32024R1689/oj#art_34/par_3',paragraph).
unit(art_35,'celex:32024R1689/oj#art_35',article).
unit(art_35_par_1,'celex:32024R1689/oj#art_35/par_1',paragraph).
unit(art_35_par_2,'celex:32024R1689/oj#art_35/par_2',paragraph).
unit(art_36,'celex:32024R1689/oj#art_36',article).
unit(art_36_par_1,'celex:32024R1689/oj#art_36/par_1',paragraph).
unit(art_36_par_2,'celex:32024R1689/oj#art_36/par_2',paragraph).
unit(art_36_par_3,'celex:32024R1689/oj#art_36/par_3',paragraph).
unit(art_36_par_4,'celex:32024R1689/oj#art_36/par_4',paragraph).
unit(art_36_par_5,'celex:32024R1689/oj#art_36/par_5',paragraph).
unit(art_36_par_6,'celex:32024R1689/oj#art_36/par_6',paragraph).
unit(art_36_par_7,'celex:32024R1689/oj#art_36/par_7',paragraph).
unit(art_36_par_8,'celex:32024R1689/oj#art_36/par_8',paragraph).
unit(art_36_par_9,'celex:32024R1689/oj#art_36/par_9',paragraph).
unit(art_36_par_9_unp_1,'celex:32024R1689/oj#art_36/par_9/unp_1',paragraph).
unit(art_37,'celex:32024R1689/oj#art_37',article).
unit(art_37_par_1,'celex:32024R1689/oj#art_37/par_1',paragraph).
unit(art_37_par_2,'celex:32024R1689/oj#art_37/par_2',paragraph).
unit(art_37_par_3,'celex:32024R1689/oj#art_37/par_3',paragraph).
unit(art_37_par_4,'celex:32024R1689/oj#art_37/par_4',paragraph).
unit(art_38,'celex:32024R1689/oj#art_38',article).
unit(art_38_par_1,'celex:32024R1689/oj#art_38/par_1',paragraph).
unit(art_38_par_2,'celex:32024R1689/oj#art_38/par_2',paragraph).
unit(art_38_par_3,'celex:32024R1689/oj#art_38/par_3',paragraph).
unit(art_39,'celex:32024R1689/oj#art_39',article).
references(art_28_par_2,art_28_par_1).
references(art_28_par_2,'celex:32008R0765/oj').
references(art_28_par_6,art_78).
references(art_29_par_2,art_31).
references(art_29_par_3,art_31).
references(art_29_par_4,'celex:32024R1689/oj').
references(art_29_par_4,art_29_par_2).
references(art_29_par_4,art_29_par_3).
references(art_30_par_2,art_30_par_1).
references(art_30_par_3,art_30_par_2).
references(art_30_par_3,art_29_par_2).
references(art_30_par_4,art_29_par_2).
references(art_30_par_4,art_29_par_3).
references(art_31_par_7,art_78).
references(art_31_par_7,'celex:32024R1689/oj').
references(art_31_par_11,chp_3_sec_2).
references(art_31_par_12,art_38).
references(art_32,art_31).
references(art_33_par_1,art_31).
references(art_33_par_4,'celex:32024R1689/oj').
references(art_34_par_1,art_43).
references(art_34_par_2,'celex:32003H0361/oj').
references(art_34_par_2,'celex:32024R1689/oj').
references(art_34_par_3,art_28).
references(art_35_par_2,'celex:32024R1689/oj').
references(art_36_par_1,art_30_par_2).
references(art_36_par_2,art_29).
references(art_36_par_2,art_30).
references(art_36_par_2,art_36_par_3).
references(art_36_par_2,art_36_par_4).
references(art_36_par_2,art_36_par_5).
references(art_36_par_2,art_36_par_6).
references(art_36_par_2,art_36_par_7).
references(art_36_par_2,art_36_par_8).
references(art_36_par_2,art_36_par_9).
references(art_36_par_9,art_36_par_9_unp_1).
references(art_37_par_1,art_31).
references(art_37_par_3,art_78).
references(art_37_par_4,art_98_par_2).
references(art_38_par_1,'celex:32024R1689/oj').
references(art_38_par_2,art_38_par_1).
references(art_39,art_31).

% ==== celex:32024R1689/oj#chp_5/sec_2 ====
unit(chp_5_sec_2, 'celex:32024R1689/oj#chp_5/sec_2', section).
title(art_53, 'Obligations for providers of general-purpose AI models').
title(art_54, 'Authorised representatives of providers of general-purpose AI models').
obligation(art_53_par_1_a, provider, 'draw up and keep up-to-date the technical documentation of the model, including its training and testing process and the results of its evaluation, containing at a minimum the information set out in anx_11, and provide it on request to the AI Office and national competent authorities').
obligation(art_53_par_1_b, provider, 'draw up, keep up-to-date and make available information and documentation to providers of AI systems intending to integrate the general‑purpose AI model, enabling them to understand its capabilities and limitations and to comply with their obligations, and containing at a minimum the elements set out in anx_12').
obligation(art_53_par_1_c, provider, 'put in place a policy to comply with Union law on copyright and related rights, including a reservation of rights expressed pursuant to ''celex:32019L0790/oj#art_4/par_3''').
obligation(art_53_par_1_d, provider, 'draw up and make publicly available a sufficiently detailed summary about the content used for training the model, according to a template provided by the AI Office').
exempt(art_53, provider, 'the obligations in art_53_par_1_a‑d shall not apply to providers of AI models released under a free and open‑source licence with publicly available parameters, unless the model presents systemic risks').
obligation(art_53_par_3, provider, 'cooperate as necessary with the Commission and the national competent authorities in the exercise of their competences and powers pursuant to ''celex:32024R1689/oj''').
obligation(art_53_par_4, provider, 'may rely on codes of practice pursuant to art_56 to demonstrate compliance with the obligations set out in art_53_par_1, until a harmonised standard is published').
obligation(art_53_par_7, provider, 'treat any information or documentation obtained pursuant to art_53, including trade secrets, in accordance with the confidentiality obligations set out in art_78').
obligation(art_54_par_1, provider, 'prior to placing a general‑purpose AI model on the Union market, appoint an authorised representative established in the Union by written mandate').
obligation(art_54_par_2, provider, 'enable its authorised representative to perform the tasks specified in the mandate received from the provider').
obligation(art_54_par_3_a, authorised_representative, 'verify that the technical documentation specified in anx_11 has been drawn up and that all obligations referred to in art_53 and, where applicable, art_55 have been fulfilled by the provider').
obligation(art_54_par_3_b, authorised_representative, 'keep a copy of the technical documentation specified in anx_11 at the disposal of the AI Office and national competent authorities for 10 years after the model has been placed on the market, together with the provider’s contact details').
obligation(art_54_par_3_c, authorised_representative, 'provide the AI Office, upon a reasoned request, with all information and documentation necessary to demonstrate compliance with the obligations in chp_5').
obligation(art_54_par_3_d, authorised_representative, 'cooperate with the AI Office and competent authorities, upon a reasoned request, in any action they take in relation to the model').
obligation(art_54_par_4, authorised_representative, 'be addressed, in addition to or instead of the provider, by the AI Office or competent authorities on all issues related to ensuring compliance with the act').
obligation(art_54_par_5, authorised_representative, 'terminate the mandate if it considers the provider to be acting contrary to its obligations, and immediately inform the AI Office of the termination and its reasons').
exempt(art_54, provider, 'the obligation in art_54 shall not apply to providers of general‑purpose AI models released under a free and open‑source licence with publicly available parameters, unless the models present systemic risks').
references(art_53, anx_11).
references(art_53, 'celex:32024R1689/oj').
references(art_53, anx_12).
references(art_53, 'celex:32019L0790/oj#art_4/par_3').
references(art_53, art_53_par_1_unp_1_pnt_a).
references(art_53, art_53_par_1_unp_1_pnt_b).
references(art_53, art_56).
references(art_53, art_53_par_1).
references(art_53, art_97).
references(art_53, art_97_par_2).
references(art_53, art_78).
references(art_53, art_53).
references(art_53, art_55).
references(art_54, anx_11).
references(art_54, 'celex:32024R1689/oj').
references(art_54, art_53).
references(art_54, art_55).
references(art_54, art_54_par_3_unp_1_pnt_b).
references(art_54, chp_5).
references(art_54, art_54).

% ==== celex:32024R1689/oj#chp_5/sec_3 ====
unit(chp_5_sec_3, 'celex:32024R1689/oj#chp_5/sec_3', section).
title(chp_5_sec_3, 'Obligations of providers of general-purpose AI models with systemic risk').
references(art_55, art_53).
references(art_55, art_54).
references(art_55, art_56).
references(art_55, art_55_par_1).
references(art_55, art_55).
references(art_55, art_78).
obligation(art_55, provider, 'perform model evaluation in accordance with standardised protocols and tools reflecting the state of the art, including conducting and documenting adversarial testing of the model with a view to identifying and mitigating systemic risks').
obligation(art_55, provider, 'assess and mitigate possible systemic risks at Union level, including their sources, that may stem from the development, the placing on the market, or the use of general-purpose AI models with systemic risk').
obligation(art_55, provider, 'keep track of, document, and report, without undue delay, to the AI Office and, as appropriate, to national competent authorities, relevant information about serious incidents and possible corrective measures to address them').
obligation(art_55, provider, 'ensure an adequate level of cybersecurity protection for the general-purpose AI model with systemic risk and the physical infrastructure of the model').
obligation(art_55, provider, 'may rely on codes of practice within the meaning of art_56 to demonstrate compliance with the obligations set out in art_55_par_1 until a harmonised standard is published').
obligation(art_55, provider, 'treat any information or documentation obtained pursuant to art_55, including trade secrets, in accordance with the confidentiality obligations set out in art_78').

% ==== celex:32024R1689/oj#chp_6 ====
unit(chp_6, 'celex:32024R1689/oj#chp_6', chapter).
unit(art_57, 'celex:32024R1689/oj#art_57', article).
unit(art_57_par_1, 'celex:32024R1689/oj#art_57/par_1', paragraph).
unit(art_57_par_1_unp_1, 'celex:32024R1689/oj#art_57/par_1/unp_1', point).
unit(art_57_par_3, 'celex:32024R1689/oj#art_57/par_3', paragraph).
unit(art_57_par_4, 'celex:32024R1689/oj#art_57/par_4', paragraph).
unit(art_57_par_5, 'celex:32024R1689/oj#art_57/par_5', paragraph).
unit(art_57_par_6, 'celex:32024R1689/oj#art_57/par_6', paragraph).
unit(art_57_par_7, 'celex:32024R1689/oj#art_57/par_7', paragraph).
unit(art_57_par_8, 'celex:32024R1689/oj#art_57/par_8', paragraph).
unit(art_57_par_9, 'celex:32024R1689/oj#art_57/par_9', paragraph).
unit(art_57_par_9_pnt_a, 'celex:32024R1689/oj#art_57/par_9/pnt_a', point).
unit(art_57_par_9_pnt_b, 'celex:32024R1689/oj#art_57/par_9/pnt_b', point).
unit(art_57_par_9_pnt_c, 'celex:32024R1689/oj#art_57/par_9/pnt_c', point).
unit(art_57_par_9_pnt_d, 'celex:32024R1689/oj#art_57/par_9/pnt_d', point).
unit(art_57_par_9_pnt_e, 'celex:32024R1689/oj#art_57/par_9/pnt_e', point).
unit(art_57_par_10, 'celex:32024R1689/oj#art_57/par_10', paragraph).
unit(art_57_par_11, 'celex:32024R1689/oj#art_57/par_11', paragraph).
unit(art_57_par_12, 'celex:32024R1689/oj#art_57/par_12', paragraph).
unit(art_57_par_13, 'celex:32024R1689/oj#art_57/par_13', paragraph).
unit(art_57_par_14, 'celex:32024R1689/oj#art_57/par_14', paragraph).
unit(art_57_par_15, 'celex:32024R1689/oj#art_57/par_15', paragraph).
unit(art_57_par_16, 'celex:32024R1689/oj#art_57/par_16', paragraph).
unit(art_57_par_17, 'celex:32024R1689/oj#art_57/par_17', paragraph).
unit(art_58, 'celex:32024R1689/oj#art_58', article).
unit(art_58_par_3, 'celex:32024R1689/oj#art_58/par_3', paragraph).
unit(art_58_par_4, 'celex:32024R1689/oj#art_58/par_4', paragraph).
unit(art_59, 'celex:32024R1689/oj#art_59', article).
unit(art_59_par_2, 'celex:32024R1689/oj#art_59/par_2', paragraph).
unit(art_59_par_3, 'celex:32024R1689/oj#art_59/par_3', paragraph).
unit(art_60, 'celex:32024R1689/oj#art_60', article).
unit(art_60_par_2, 'celex:32024R1689/oj#art_60/par_2', paragraph).
unit(art_60_par_3, 'celex:32024R1689/oj#art_60/par_3', paragraph).
unit(art_60_par_4, 'celex:32024R1689/oj#art_60/par_4', paragraph).
unit(art_60_par_5, 'celex:32024R1689/oj#art_60/par_5', paragraph).
unit(art_60_par_6, 'celex:32024R1689/oj#art_60/par_6', paragraph).
unit(art_60_par_7, 'celex:32024R1689/oj#art_60/par_7', paragraph).
unit(art_60_par_8, 'celex:32024R1689/oj#art_60/par_8', paragraph).
unit(art_60_par_9, 'celex:32024R1689/oj#art_60/par_9', paragraph).
unit(art_61_par_1, 'celex:32024R1689/oj#art_61/par_1', paragraph).
unit(art_61_par_2, 'celex:32024R1689/oj#art_61/par_2', paragraph).
unit(art_62, 'celex:32024R1689/oj#art_62', article).
unit(art_62_par_1, 'celex:32024R1689/oj#art_62/par_1', paragraph).
unit(art_62_par_2, 'celex:32024R1689/oj#art_62/par_2', paragraph).
unit(art_63, 'celex:32024R1689/oj#art_63', article).
unit(art_63_par_2, 'celex:32024R1689/oj#art_63/par_2', paragraph).
references(art_57_par_1, art_57_par_1_unp_1).
references(art_57_par_3, chp_6).
references(art_57_par_4, art_57_par_1).
references(art_57_par_4, art_57_par_2).
references(art_57_par_4, art_57).
references(art_57_par_5, art_57_par_1).
references(art_57_par_6, 'celex:32024R1689/oj').
references(art_57_par_7, 'celex:32024R1689/oj').
references(art_57_par_8, art_78).
references(art_57_par_8, 'celex:32024R1689/oj').
references(art_57_par_8, art_57).
references(art_57_par_9_pnt_a, 'celex:32024R1689/oj').
references(art_57_par_12, 'celex:32024R1689/oj').
references(art_57_par_16, 'celex:32024R1689/oj').
references(art_57_par_17, art_62_par_1_unp_1_pnt_c).
references(art_58_par_3, art_58_par_1).
references(art_58_par_4, art_58_par_1).
references(art_59_par_1, art_59_par_1).
references(art_59_par_2, art_59_par_1).
references(art_59_par_3, art_59_par_1).
references(art_60_par_4, anx_3).
references(art_60_par_4, anx_3_pnt_1).
references(art_60_par_4, anx_3_pnt_6).
references(art_60_par_4, anx_3_pnt_7).
references(art_60_par_4, anx_3_pnt_2).
references(art_60_par_4, art_71_par_4).
references(art_60_par_4, anx_9).
references(art_60_par_4, art_49_par_4_unp_1_pnt_d).
references(art_60_par_4, art_49_par_5).
references(art_60_par_4, art_13).
references(art_60_par_4, art_60).
references(art_60_par_6, art_75).
references(art_60_par_7, art_73).
references(art_61_par_1, art_60).
references(art_61_par_1, art_60_par_4_unp_1_pnt_c).
references(art_62_par_1, art_62_par_1).
references(art_62_par_2, art_43).
references(art_63_par_2, art_63_par_1).
references(art_63_par_2, 'celex:32024R1689/oj').
references(art_63_par_2, art_9).
references(art_63_par_2, art_10).
references(art_63_par_2, art_11).
references(art_63_par_2, art_12).
references(art_63_par_2, art_13).
references(art_63_par_2, art_14).
references(art_63_par_2, art_15).
references(art_63_par_2, art_72).
references(art_63_par_2, art_73).

% ==== celex:32024R1689/oj#chp_7 ====
unit(chp_7, 'celex:32024R1689/oj#chp_7', chapter).
references(art_64_par_2, act).
references(art_65_par_4_a, art_66).
references(art_65_par_4_c, act).
references(art_65_par_6, act).
references(art_65_par_6, 'celex:32019R1020/oj#art_30').
references(art_65_par_6, art_67).
references(art_65_par_8, act).
references(art_66_par_1_a, act).
references(art_66_par_1_a, art_74_par_11).
references(art_66_par_4_a, art_46).
references(art_66_par_4_b, art_57).
references(art_66_par_4_c, art_59).
references(art_66_par_4_d, art_60).
references(art_66_par_5_i, act).
references(art_66_par_5_ii, art_112).
references(art_66_par_5_ii, art_73).
references(art_66_par_5_ii, art_71).
references(art_66_par_5_ii, anx_1).
references(art_66_par_5_iii, chp_3_sec_2).
references(art_66_par_5_iv_a, art_40).
references(art_66_par_5_iv_b, art_41).
references(art_66_par_5_vii_a, anx_3).
references(art_66_par_5_vii_b, art_5).
references(art_66_par_5_vii_c, art_112).
references(art_66_par_5_g, act).
references(art_66_par_5_j, act).
references(art_66_par_5_k, art_74_par_11).
references(art_67_par_1, act).
references(art_67_par_3, art_67_par_2).
references(art_67_par_6, art_67_par_2).
references(art_67_par_9, act).
references(art_68_par_1, act).
references(art_68_par_2_c, art_68_par_3).
references(art_68_par_3_a_i, art_90).
references(art_68_par_3_d, art_74_par_11).
references(art_68_par_3_d, art_81).
references(art_68_par_4, art_68_par_3).
references(art_68_par_5, art_68_par_1).
references(art_69_par_1, act).
references(art_69_par_2, art_68_par_1).
references(art_69_par_3, art_84).
references(art_69_par_3, art_69).
references(art_70_par_1, act).
references(art_70_par_2, act).
references(art_70_par_5, art_78).
references(art_70_par_8, act).
references(art_70_par_9, act).

% ==== celex:32024R1689/oj#chp_9/sec_3 ====
unit(chp_9_sec_3, 'celex:32024R1689/oj#chp_9/sec_3', section).
references(chp_9_sec_3, 'celex:32024R1689/oj').
references(chp_9_sec_3, 'celex:32019R1020/oj').
references(chp_9_sec_3, art_2_par_1).
references(chp_9_sec_3, anx_1_sec_1).
references(chp_9_sec_3, art_74_par_3_unp_1).
references(chp_9_sec_3, anx_1).
references(chp_9_sec_3, 'celex:32019R1020/oj#art_34/par_4').
references(chp_9_sec_3, art_79).
references(chp_9_sec_3, art_80).
references(chp_9_sec_3, art_81).
references(chp_9_sec_3, art_82).
references(chp_9_sec_3, art_83).
references(chp_9_sec_3, 'celex:32019R1020/oj#art_14').
references(chp_9_sec_3, art_74_par_6).
references(chp_9_sec_3, 'celex:32013L0036/oj').
references(chp_9_sec_3, 'celex:32013R1024/oj').
references(chp_9_sec_3, anx_3_pnt_1).
references(chp_9_sec_3, anx_3_pnt_6).
references(chp_9_sec_3, anx_3_pnt_7).
references(chp_9_sec_3, anx_3_pnt_8).
references(chp_9_sec_3, 'celex:32016R0679/oj').
references(chp_9_sec_3, 'celex:32016L0680/oj').
references(chp_9_sec_3, 'celex:32016L0680/oj#art_41').
references(chp_9_sec_3, 'celex:32016L0680/oj#art_42').
references(chp_9_sec_3, 'celex:32016L0680/oj#art_43').
references(chp_9_sec_3, 'celex:32016L0680/oj#art_44').
references(chp_9_sec_3, anx_3).
references(chp_9_sec_3, 'celex:32024R1689/oj#chp_9/sec_3').
references(chp_9_sec_3, art_78).
references(chp_9_sec_3, art_78_par_1).
references(chp_9_sec_3, art_78_par_2).
references(chp_9_sec_3, art_78_par_3).
references(chp_9_sec_3, 'celex:32019R1020/oj#art_9').
references(chp_9_sec_3, 'celex:32019R1020/oj#art_3/pnt_19').
references(chp_9_sec_3, art_5).
references(chp_9_sec_3, 'celex:32016L0943/oj#art_5').
references(chp_9_sec_3, 'celex:32016L0943/oj').
references(chp_9_sec_3, art_48).
references(chp_9_sec_3, art_47).
references(chp_9_sec_3, art_71).
references(chp_9_sec_3, art_40).
references(chp_9_sec_3, art_41).
references(chp_9_sec_3, art_50).
references(chp_9_sec_3, art_79_par_1).
references(chp_9_sec_3, art_79_par_5).
references(chp_9_sec_3, art_79_par_6).
references(chp_9_sec_3, art_79_par_7).
references(chp_9_sec_3, art_79_par_8).
references(chp_9_sec_3, art_79_par_9).
references(chp_9_sec_3, art_80_par_1).
references(chp_9_sec_3, art_80_par_2).
references(chp_9_sec_3, art_82_par_1).
references(chp_9_sec_3, art_83_par_1).
references(chp_9_sec_3, art_6_par_3).
references(chp_9_sec_3, art_99).
references(chp_9_sec_3, art_58).
references(chp_9_sec_3, art_60).
references(chp_9_sec_3, art_60_par_4_unp_1_pnt_f).
references(chp_9_sec_3, art_60_par_4_unp_1_pnt_g).
references(chp_9_sec_3, art_61).
references(chp_9_sec_3, art_76_par_3).
references(chp_9_sec_3, art_60_par_4_unp_1_pnt_b).
references(chp_9_sec_3, art_77_par_1).
references(chp_9_sec_3, chp_3_sec_2).
references(chp_9_sec_3, anx_4).
references(chp_9_sec_3, art_74_par_8).
references(chp_9_sec_3, art_74_par_9).
references(chp_9_sec_3, 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#chp_9/sec_5 ====
unit(chp_9_sec_5, 'celex:32024R1689/oj#chp_9/sec_5', section).
title(art_88, 'Enforcement of the obligations of providers of general-purpose AI models').
title(art_89, 'Monitoring actions').
title(art_90, 'Alerts of systemic risks by the scientific panel').
title(art_92, 'Power to conduct evaluations').
title(art_93, 'Power to request measures').
obligation(art_88, commission, 'supervise and enforce chp_5').
obligation(art_88, commission, 'entrust implementation of these tasks to the AI Office').
obligation(art_91, commission, 'request the provider to provide documentation drawn up in accordance with art_53 and art_55, or any additional information necessary for assessing compliance').
obligation(art_91, provider, 'supply the information requested').
obligation(art_92, ai_office, 'conduct evaluations of the general-purpose AI model concerned').
obligation(art_92, commission, 'appoint independent experts to carry out evaluations').
obligation(art_92, commission, 'request access to the general-purpose AI model concerned through APIs or other appropriate technical means').
obligation(art_93, commission, 'request providers to take appropriate measures to comply with obligations set out in art_53 and art_54, to implement mitigation measures, or to restrict/withdraw the model').
obligation(art_93, ai_office, 'initiate a structured dialogue with the provider before requesting a measure').
obligation(art_94, providers, 'enjoy procedural rights applicable mutatis mutandis from art_18 of celex:32019R1020/oj').
references(art_88, chp_5).
references(art_88, art_94).
references(art_88, 'celex:12016M/oj').
references(art_88, 'celex:12016E/oj').
references(art_88, art_75_par_3).
references(art_88, chp_9_sec_5).
references(art_88, 'celex:32024R1689/oj').
references(art_89, chp_9_sec_5).
references(art_89, 'celex:32024R1689/oj').
references(art_90, art_51).
references(art_90, chp_9_sec_5).
references(art_90, art_91).
references(art_90, art_92).
references(art_90, art_93).
references(art_90, art_94).
references(art_92, 'celex:32024R1689/oj').
references(art_92, art_91).
references(art_92, art_90_par_1_unp_1_pnt_a).
references(art_92, art_68).
references(art_92, art_68_par_2).
references(art_92, art_92_par_1).
references(art_92, art_98_par_2).
references(art_93, art_53).
references(art_93, art_54).
references(art_93, art_92).
references(art_93, art_93_par_2).

% ==== celex:32024R1689/oj#chp_12 ====
unit(chp_12, 'celex:32024R1689/oj#chp_12', chapter).
title(art_99, 'Penalties').
title(art_101, 'Fines for providers of general-purpose AI models').
obligation(art_99_par_1, member_state, 'lay down rules on penalties and other enforcement measures, including warnings and non-monetary measures, applicable to infringements, and ensure proper implementation taking into account Commission guidelines').
obligation(art_99_par_2, member_state, 'notify the Commission of the rules on penalties and other enforcement measures and any subsequent amendment').
obligation(art_99_par_8, member_state, 'lay down rules on the extent administrative fines may be imposed on public authorities and bodies established in that Member State').
obligation(art_99_par_11, member_state, 'report annually to the Commission about administrative fines issued and related litigation or judicial proceedings').
penalty(art_99_par_3, offender, 'up to EUR 35000000 or, if the offender is an undertaking, up to 7% of its total worldwide annual turnover for the preceding financial year, whichever is higher').
penalty(art_99_par_4, offender, 'up to EUR 15000000 or, if the offender is an undertaking, up to 3% of its total worldwide annual turnover for the preceding financial year, whichever is higher').
penalty(art_99_par_5, offender, 'up to EUR 7500000 or, if the offender is an undertaking, up to 1% of its total worldwide annual turnover for the preceding financial year, whichever is higher').
penalty(art_100_par_2, offender, 'up to EUR 1500000').
penalty(art_100_par_3, offender, 'up to EUR 750000').
penalty(art_101_par_1, provider, 'up to 3% of annual worldwide turnover in the preceding financial year or EUR 15000000, whichever is higher').
obligation(art_100_par_4, european_data_protection_supervisor, 'give the Union institution, body, office or agency the opportunity to be heard before taking decisions').
obligation(art_100_par_5, european_data_protection_supervisor, 'respect the rights of defence of the parties concerned and allow access to the file subject to legitimate interests').
obligation(art_100_par_7, european_data_protection_supervisor, 'notify the Commission annually of the administrative fines imposed and any litigation or judicial proceedings').
obligation(art_101_par_2, commission, 'communicate preliminary findings to the provider and give it an opportunity to be heard').
obligation(art_101_par_4, commission, 'communicate information on fines imposed to the Board as appropriate').
obligation(art_101_par_6, commission, 'adopt implementing acts containing detailed arrangements and procedural safeguards for proceedings').
condition(art_99_par_7, 'all relevant circumstances of the specific situation shall be taken into account when deciding whether to impose an administrative fine and its amount').
references(art_99_par_2, art_99_par_1).
references(art_99_par_6, art_99).
references(art_99_par_6, art_99_par_3).
references(art_99_par_6, art_99_par_4).
references(art_99_par_6, art_99_par_5).
references(art_99_par_7, 'celex:32024R1689/oj').
references(art_99_par_10, art_99).
references(art_99_par_11, art_99).
references(art_100_par_1, 'celex:32024R1689/oj').
references(art_100_par_2, art_5).
references(art_100_par_3, 'celex:32024R1689/oj').
references(art_100_par_3, art_5).
references(art_100_par_4, art_100).
references(art_100_par_6, art_100).
references(art_100_par_7, art_100).
references(art_101_par_2, art_101_par_1).
references(art_101_par_3, art_101).
references(art_101_par_4, art_101).
references(art_101_par_5, art_101).
references(art_101_par_6, art_98_par_2).

% ==== celex:32024R1689/oj#anx_1/sec_1 ====
unit(anx_1_sec_1, 'celex:32024R1689/oj#anx_1/sec_1', section).
references(anx_1_sec_1, 'celex:32006L0042/oj').
references(anx_1_sec_1, 'celex:31995L0016/oj').
references(anx_1_sec_1, 'celex:32009L0048/oj').
references(anx_1_sec_1, 'celex:32013L0053/oj').
references(anx_1_sec_1, 'celex:31994L0025/oj').
references(anx_1_sec_1, 'celex:32014L0033/oj').
references(anx_1_sec_1, 'celex:32014L0034/oj').
references(anx_1_sec_1, 'celex:32014L0053/oj').
references(anx_1_sec_1, 'celex:31999L0005/oj').
references(anx_1_sec_1, 'celex:32014L0068/oj').
references(anx_1_sec_1, 'celex:32016R0424/oj').
references(anx_1_sec_1, 'celex:32000L0009/oj').
references(anx_1_sec_1, 'celex:32016R0425/oj').
references(anx_1_sec_1, 'celex:31989L0686/oj').
references(anx_1_sec_1, 'celex:32016R0426/oj').
references(anx_1_sec_1, 'celex:32009L0142/oj').
references(anx_1_sec_1, 'celex:32017R0745/oj').
references(anx_1_sec_1, 'celex:32001L0083/oj').
references(anx_1_sec_1, 'celex:32002R0178/oj').
references(anx_1_sec_1, 'celex:32009R1223/oj').
references(anx_1_sec_1, 'celex:31990L0385/oj').
references(anx_1_sec_1, 'celex:31993L0042/oj').
references(anx_1_sec_1, 'celex:32017R0746/oj').
references(anx_1_sec_1, 'celex:31998L0079/oj').
references(anx_1_sec_1, 'celex:32010D0227/oj').
references(anx_1_sec_1, 'celex:32014L0031/oj').

% ==== celex:32024R1689/oj#anx_1/sec_2 ====
unit(anx_1_sec_2, 'celex:32024R1689/oj#anx_1/sec_2', section).
title(anx_1_sec_2, 'Section B. List of other Union harmonisation legislation').
references(anx_1_sec_2, 'celex:32008R0300/oj').
references(anx_1_sec_2, 'celex:32002R2320/oj').
references(anx_1_sec_2, 'celex:32013R0168/oj').
references(anx_1_sec_2, 'celex:32013R0167/oj').
references(anx_1_sec_2, 'celex:32014L0090/oj').
references(anx_1_sec_2, 'celex:31996L0098/oj').
references(anx_1_sec_2, 'celex:32016L0797/oj').
references(anx_1_sec_2, 'celex:32018R0858/oj').
references(anx_1_sec_2, 'celex:32007R0715/oj').
references(anx_1_sec_2, 'celex:32009R0595/oj').
references(anx_1_sec_2, 'celex:32007L0046/oj').
references(anx_1_sec_2, 'celex:32019R2144/oj').
references(anx_1_sec_2, 'celex:32009R0078/oj').
references(anx_1_sec_2, 'celex:32009R0079/oj').
references(anx_1_sec_2, 'celex:32009R0661/oj').
references(anx_1_sec_2, 'celex:32009R0631/oj').
references(anx_1_sec_2, 'celex:32010R0406/oj').
references(anx_1_sec_2, 'celex:32010R0672/oj').
references(anx_1_sec_2, 'celex:32010R1003/oj').
references(anx_1_sec_2, 'celex:32010R1005/oj').
references(anx_1_sec_2, 'celex:32010R1008/oj').
references(anx_1_sec_2, 'celex:32010R1009/oj').
references(anx_1_sec_2, 'celex:32011R0019/oj').
references(anx_1_sec_2, 'celex:32011R0109/oj').
references(anx_1_sec_2, 'celex:32011R0458/oj').
references(anx_1_sec_2, 'celex:32012R0065/oj').
references(anx_1_sec_2, 'celex:32012R0130/oj').
references(anx_1_sec_2, 'celex:32012R0347/oj').
references(anx_1_sec_2, 'celex:32012R0351/oj').
references(anx_1_sec_2, 'celex:32012R1230/oj').
references(anx_1_sec_2, 'celex:32015R0166/oj').
references(anx_1_sec_2, 'celex:32018R1139/oj').
references(anx_1_sec_2, 'celex:32005R2111/oj').
references(anx_1_sec_2, 'celex:32008R1008/oj').
references(anx_1_sec_2, 'celex:32010R0996/oj').
references(anx_1_sec_2, 'celex:32014R0376/oj').
references(anx_1_sec_2, 'celex:32014L0030/oj').
references(anx_1_sec_2, 'celex:32014L0053/oj').
references(anx_1_sec_2, 'celex:32004R0552/oj').
references(anx_1_sec_2, 'celex:32008R0216/oj').
references(anx_1_sec_2, 'celex:31991R3922/oj').
references(anx_1_sec_2, 'celex:31991R3922/oj#art_2/par_1/pnt_a').
references(anx_1_sec_2, 'celex:31991R3922/oj#art_2/par_1/pnt_b').

% ==== celex:32024R1689/oj#anx_2 ====
unit(anx_2, 'celex:32024R1689/oj#anx_2', annex).
title(anx_2, 'List of criminal offences referred to in art_5_par_1_unp_1_pnt_h_pnt_iii').
references(anx_2, art_5_par_1_unp_1_pnt_h_pnt_iii).

% ==== celex:32024R1689/oj#anx_3/pnt_1/pnt_a ====
unit(anx_3_pnt_1_pnt_a, 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a', point).
definition(remote_biometric_identification_system, 'does not include AI systems intended to be used for biometric verification the sole purpose of which is to confirm that a specific natural person is the person he or she claims to be').

% ==== celex:32024R1689/oj#anx_3/pnt_2 ====
unit(anx_3_pnt_2, 'celex:32024R1689/oj#anx_3/pnt_2', point).
definition(critical_infrastructure_ai_system, 'AI systems intended to be used as safety components in the management and operation of critical digital infrastructure, road traffic, or in the supply of water, gas, heating or electricity').

% ==== celex:32024R1689/oj#anx_3/pnt_3 ====
unit(anx_3_pnt_3, 'celex:32024R1689/oj#anx_3/pnt_3', point).

% ==== celex:32024R1689/oj#anx_3/pnt_4 ====
unit(anx_3_pnt_4, 'celex:32024R1689/oj#anx_3/pnt_4', point).
title(anx_3_pnt_4, 'Employment, workers’ management and access to self-employment').

% ==== celex:32024R1689/oj#anx_3/pnt_5/pnt_b ====
unit(anx_3_pnt_5_pnt_b, 'celex:32024R1689/oj#anx_3/pnt_5/pnt_b', point).
definition(creditworthiness_ai_system, 'AI systems intended to be used to evaluate the creditworthiness of natural persons or establish their credit score, with the exception of AI systems used for the purpose of detecting financial fraud').

% ==== celex:32024R1689/oj#anx_3/pnt_5/pnt_c ====
unit(anx_3_pnt_5_pnt_c, 'celex:32024R1689/oj#anx_3/pnt_5/pnt_c', point).
definition(high_risk_ai_system, 'AI systems intended to be used for risk assessment and pricing in relation to natural persons in the case of life and health insurance').

% ==== celex:32024R1689/oj#anx_3/pnt_6 ====
unit(anx_3_pnt_6, 'celex:32024R1689/oj#anx_3/pnt_6', point).
references(anx_3_pnt_6, 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_3/pnt_7 ====
unit(anx_3_pnt_7, 'celex:32024R1689/oj#anx_3/pnt_7', point).
definition(polygraph_ai_system, 'AI systems intended to be used by or on behalf of competent public authorities or by Union institutions, bodies, offices or agencies as polygraphs or similar tools').
definition(risk_assessment_ai_system, 'AI systems intended to be used by or on behalf of competent public authorities or by Union institutions, bodies, offices or agencies to assess a risk, including a security risk, a risk of irregular migration, or a health risk, posed by a natural person who intends to enter or who has entered into the territory of a Member State').
definition(asylum_assistance_ai_system, 'AI systems intended to be used by or on behalf of competent public authorities or by Union institutions, bodies, offices or agencies to assist competent public authorities for the examination of applications for asylum, visa or residence permits and for associated complaints with regard to the eligibility of the natural persons applying for a status, including related assessments of the reliability of evidence').
definition(detection_identification_ai_system, 'AI systems intended to be used by or on behalf of competent public authorities, or by Union institutions, bodies, offices or agencies, in the context of migration, asylum or border control management, for the purpose of detecting, recognising or identifying natural persons, with the exception of the verification of travel documents').

% ==== celex:32024R1689/oj#anx_3/pnt_8 ====
unit(anx_3_pnt_8, 'celex:32024R1689/oj#anx_3/pnt_8', point).
title(anx_3_pnt_8, 'Administration of justice and democratic processes').

% ==== celex:32024R1689/oj#anx_4/pnt_2/pnt_f ====
unit(anx_4_pnt_2_pnt_f, 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f', point).
references(anx_4_pnt_2_pnt_f, chp_3_sec_2).
condition(anx_4_pnt_2_pnt_f, 'where applicable').
requirement(anx_4_pnt_2_pnt_f, detailed_description, 'pre-determined changes to the AI system and its performance, together with all the relevant information related to the technical solutions adopted to ensure continuous compliance of the AI system with the relevant requirements set out in chp_3_sec_2').

% ==== celex:32024R1689/oj#anx_5 ====
unit(anx_5, 'celex:32024R1689/oj#anx_5', annex).
references(anx_5, 'celex:32024R1689/oj#art_47').
references(anx_5, 'celex:32024R1689/oj').
references(anx_5, 'celex:32016R0679/oj').
references(anx_5, 'celex:32018R1725/oj').
references(anx_5, 'celex:32016L0680/oj').
obligation(anx_5, provider, 'include AI system name and type and any additional unambiguous reference allowing the identification and traceability of the AI system').
obligation(anx_5, provider, 'include the name and address of the provider or, where applicable, of their authorised representative').
obligation(anx_5, provider, 'state that the declaration is issued under the sole responsibility of the provider').
obligation(anx_5, provider, 'state that the AI system is in conformity with the Regulation and, if applicable, with any other relevant Union law providing for the issuing of the declaration').
obligation(anx_5, provider, 'where the AI system involves processing of personal data, state that the AI system complies with the GDPR, the Regulation on AI liability, and the Directive on security of network and information systems').
obligation(anx_5, provider, 'reference any relevant harmonised standards used or any other common specification in relation to which conformity is declared').
obligation(anx_5, provider, 'where applicable, include the name and identification number of the notified body, a description of the conformity assessment procedure performed, and identification of the certificate issued').
obligation(anx_5, provider, 'include the place and date of issue of the declaration, the name and function of the person who signed it, and an indication of on whose behalf the person signed, together with a signature').

% ==== celex:32024R1689/oj#anx_6/pnt_2 ====
unit(anx_6_pnt_2, 'celex:32024R1689/oj#anx_6/pnt_2', point).
references(anx_6_pnt_2, art_17).
obligation(anx_6_pnt_2, provider, 'verifies that the established quality management system is in compliance with the requirements of art_17').

% ==== celex:32024R1689/oj#anx_6/pnt_3 ====
unit(anx_6_pnt_3, 'celex:32024R1689/oj#anx_6/pnt_3', point).
references(anx_6_pnt_3, chp_3_sec_2).
obligation(anx_6_pnt_3, provider, 'examines the information contained in the technical documentation in order to assess the compliance of the AI system with the relevant essential requirements').

% ==== celex:32024R1689/oj#anx_6/pnt_4 ====
unit(anx_6_pnt_4, 'celex:32024R1689/oj#anx_6/pnt_4', point).
references(anx_6_pnt_4, art_72).
obligation(anx_6_pnt_4, provider, 'verifies that the design and development process of the AI system and its post-market monitoring is consistent with the technical documentation').

% ==== celex:32024R1689/oj#anx_7/pnt_2 ====
unit(anx_7_pnt_2, 'celex:32024R1689/oj#anx_7/pnt_2', point).
title(anx_7_pnt_2, '2. Overview').

% ==== celex:32024R1689/oj#anx_7/pnt_3 ====
unit(anx_7_pnt_3, 'celex:32024R1689/oj#anx_7/pnt_3', point).
title(anx_7_pnt_3, 'Quality management system').

% ==== celex:32024R1689/oj#anx_7/pnt_4 ====
unit(anx_7_pnt_4, 'celex:32024R1689/oj#anx_7/pnt_4', point).
title(anx_7_pnt_4, 'Control of the technical documentation').

% ==== celex:32024R1689/oj#anx_7/pnt_5 ====
unit(anx_7_pnt_5, 'celex:32024R1689/oj#anx_7/pnt_5', point).
title(anx_7_pnt_5, 'Surveillance of the approved quality management system.').

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_1 ====
unit(anx_8_sec_1_pnt_1, 'celex:32024R1689/oj#anx_8/sec_1/pnt_1', point).
definition(provider, 'the name, address and contact details of the provider').

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_2 ====
unit(anx_8_sec_1_pnt_2, 'celex:32024R1689/oj#anx_8/sec_1/pnt_2', point).
requirement(anx_8_sec_1_pnt_2, provider, 'name, address and contact details of that person').

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_3 ====
unit(anx_8_sec_1_pnt_3, 'celex:32024R1689/oj#anx_8/sec_1/pnt_3', point).
requirement(anx_8_sec_1_pnt_3, authorised_representative_details, 'the name, address and contact details of the authorised representative, where applicable').

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_4 ====
unit(anx_8_sec_1_pnt_4, 'celex:32024R1689/oj#anx_8/sec_1/pnt_4', point).

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_5 ====
unit(anx_8_sec_1_pnt_5, 'celex:32024R1689/oj#anx_8/sec_1/pnt_5', point).
requirement(anx_8_sec_1_pnt_5, high_risk_ai_system, 'a description of the intended purpose of the AI system and of the components and functions supported through this AI system').

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_6 ====
unit(anx_8_sec_1_pnt_6, 'celex:32024R1689/oj#anx_8/sec_1/pnt_6', point).
requirement(anx_8_sec_1_pnt_6, information_description, 'A basic and concise description of the information used by the system (data, inputs) and its operating logic').

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_7 ====
unit(anx_8_sec_1_pnt_7, 'celex:32024R1689/oj#anx_8/sec_1/pnt_7', point).
definition(status_of_ai_system, 'The status of the AI system (on the market, or in service; no longer placed on the market/in service, recalled)').

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_8 ====
unit(anx_8_sec_1_pnt_8, 'celex:32024R1689/oj#anx_8/sec_1/pnt_8', point).
requirement(anx_8_sec_1_pnt_8, certificate_information, 'type, number and expiry date of the certificate issued by the notified body and the name or identification number of that notified body, where applicable').

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_9 ====
unit(anx_8_sec_1_pnt_9, 'celex:32024R1689/oj#anx_8/sec_1/pnt_9', point).
references(anx_8_sec_1_pnt_9, anx_8_sec_1_pnt_8).
requirement(anx_8_sec_1_pnt_9, certificate, 'a scanned copy of the certificate referred to in anx_8_sec_1_pnt_8, where applicable').

% ==== celex:32024R1689/oj#anx_8/sec_1/pnt_10 ====
unit(anx_8_sec_1_pnt_10, 'celex:32024R1689/oj#anx_8/sec_1/pnt_10', point).

% ==== celex:32024R1689/oj#anx_8/sec_2 ====
unit(anx_8_sec_2, 'celex:32024R1689/oj#anx_8/sec_2', section).
references(anx_8_sec_2, art_49_par_2).
references(anx_8_sec_2, art_6_par_3).
obligation(anx_8_sec_2, provider, 'provide the name, address and contact details of the provider').
obligation(anx_8_sec_2, provider, 'provide the name, address and contact details of the person submitting information on its behalf').
obligation(anx_8_sec_2, provider, 'provide the name, address and contact details of the authorised representative, where applicable').
obligation(anx_8_sec_2, provider, 'provide the AI system trade name and any additional unambiguous reference allowing identification and traceability of the AI system').
obligation(anx_8_sec_2, provider, 'provide a description of the intended purpose of the AI system').
obligation(anx_8_sec_2, provider, 'provide the condition or conditions under which the AI system is considered not-high-risk').
obligation(anx_8_sec_2, provider, 'provide a short summary of the grounds on which the AI system is considered not-high-risk').
obligation(anx_8_sec_2, provider, 'provide the status of the AI system (on the market, in service, no longer placed on the market/in service, recalled)').
obligation(anx_8_sec_2, provider, 'provide any Member States where the AI system has been placed on the market, put into service or made available in the Union').

% ==== celex:32024R1689/oj#anx_8/sec_3/pnt_1 ====
unit(anx_8_sec_3_pnt_1, 'celex:32024R1689/oj#anx_8/sec_3/pnt_1', point).
requirement(anx_8_sec_3_pnt_1, deployer, 'name, address and contact details').

% ==== celex:32024R1689/oj#anx_8/sec_3/pnt_2 ====
unit(anx_8_sec_3_pnt_2, 'celex:32024R1689/oj#anx_8/sec_3/pnt_2', point).
definition(person_submitting_information, 'the name, address and contact details of the person submitting information on behalf of the deployer').
requirement(anx_8_sec_3_pnt_2, person_submitting_information, 'name, address and contact details').

% ==== celex:32024R1689/oj#anx_8/sec_3/pnt_3 ====
unit(anx_8_sec_3_pnt_3, 'celex:32024R1689/oj#anx_8/sec_3/pnt_3', point).
obligation(anx_8_sec_3_pnt_3, provider, 'provide the URL of the entry of the AI system in the EU database').

% ==== celex:32024R1689/oj#anx_9/pnt_1 ====
unit(anx_9_pnt_1, 'celex:32024R1689/oj#anx_9/pnt_1', point).

% ==== celex:32024R1689/oj#anx_9/pnt_2 ====
unit(anx_9_pnt_2, 'celex:32024R1689/oj#anx_9/pnt_2', point).
requirement(anx_9_pnt_2, provider, 'name and contact details of the provider or prospective provider and of the deployers involved in the testing in real world conditions').

% ==== celex:32024R1689/oj#anx_9/pnt_3 ====
unit(anx_9_pnt_3, 'celex:32024R1689/oj#anx_9/pnt_3', point).
requirement(anx_9_pnt_3, provider, 'a brief description of the AI system, its intended purpose, and other information necessary for the identification of the system').

% ==== celex:32024R1689/oj#anx_9/pnt_5 ====
unit(anx_9_pnt_5, 'celex:32024R1689/oj#anx_9/pnt_5', point).
title(anx_9_pnt_5, 'Information on the suspension or termination of the testing in real world conditions.').

% ==== celex:32024R1689/oj#anx_10 ====
unit(anx_10, 'celex:32024R1689/oj#anx_10', annex).
references(anx_10, 'celex:32018R1860/oj').
references(anx_10, 'celex:32018R1861/oj').
references(anx_10, 'celex:42000A0922(01)/oj').
references(anx_10, 'celex:32006R1987/oj').
references(anx_10, 'celex:32007D0533/oj').
references(anx_10, 'celex:32006R1986/oj').
references(anx_10, 'celex:32010D0261/oj').
references(anx_10, 'celex:32021R1133/oj').
references(anx_10, 'celex:32013R0603/oj').
references(anx_10, 'celex:32016R0794/oj').
references(anx_10, 'celex:32018R1862/oj').
references(anx_10, 'celex:32019R0816/oj').
references(anx_10, 'celex:32019R0818/oj').
references(anx_10, 'celex:32021R1134/oj').
references(anx_10, 'celex:32008R0767/oj').
references(anx_10, 'celex:32009R0810/oj').
references(anx_10, 'celex:32016R0399/oj').
references(anx_10, 'celex:32017R2226/oj').
references(anx_10, 'celex:32018R1240/oj').
references(anx_10, 'celex:32019R0817/oj').
references(anx_10, 'celex:32019R1896/oj').
references(anx_10, 'celex:32004D0512/oj').
references(anx_10, 'celex:32008D0633/oj').
references(anx_10, 'celex:32024R1358/oj').
references(anx_10, 'celex:32024R1315/oj').
references(anx_10, 'celex:32024R1350/oj').
references(anx_10, 'celex:32001L0055/oj').
references(anx_10, 'celex:32011R1077/oj').
references(anx_10, 'celex:32014R0515/oj').
references(anx_10, 'celex:32016R1624/oj').
references(anx_10, 'celex:32018R1241/oj').
references(anx_10, 'celex:32018R1726/oj').

% ==== celex:32024R1689/oj#anx_11/sec_1/pnt_1 ====
unit(anx_11_sec_1_pnt_1, 'celex:32024R1689/oj#anx_11/sec_1/pnt_1', point).
requirement(anx_11_sec_1_pnt_1, tasks, 'the tasks that the model is intended to perform and the type and nature of AI systems in which it can be integrated').
requirement(anx_11_sec_1_pnt_1, acceptable_use_policies, 'the acceptable use policies applicable').
requirement(anx_11_sec_1_pnt_1, date_of_release, 'the date of release and methods of distribution').
requirement(anx_11_sec_1_pnt_1, architecture, 'the architecture and number of parameters').
requirement(anx_11_sec_1_pnt_1, modality, 'the modality (e.g. text, image) and format of inputs and outputs').
requirement(anx_11_sec_1_pnt_1, licence, 'the licence').

% ==== celex:32024R1689/oj#anx_12 ====
unit(anx_12, 'celex:32024R1689/oj#anx_12', annex).
title(anx_12, 'Transparency information referred to in art_53_par_1_unp_1_pnt_b — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system').
references(anx_12, 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
requirement(anx_12, provider, 'general description of the general-purpose AI model including the tasks the model is intended to perform and the type and nature of AI systems into which it can be integrated; the acceptable use policies applicable; the date of release and methods of distribution; how the model interacts, or can be used to interact, with hardware or software that is not part of the model itself, where applicable; the versions of relevant software related to the use of the general-purpose AI model, where applicable; the architecture and number of parameters; the modality (e.g. text, image) and format of inputs and outputs; the licence for the model').
requirement(anx_12, provider, 'description of the elements of the model and of the process for its development, including the technical means (e.g. instructions for use, infrastructure, tools) required for the model to be integrated into AI systems; the modality and format of the inputs and outputs and their maximum size; information on the data used for training, testing and validation, where applicable, including the type and provenance of data and curation methodologies').

% ==== celex:32024R1689/oj#anx_13 ====
unit(anx_13, 'celex:32024R1689/oj#anx_13', annex).
references(anx_13, art_51).
references(anx_13, art_51_par_1_unp_1_pnt_a).
requirement(anx_13, number_of_parameters, 'the number of parameters of the model').
requirement(anx_13, data_set_quality_or_size, 'the quality or size of the data set, for example measured through tokens').
requirement(anx_13, computation_used_for_training, 'the amount of computation used for training the model, measured in floating point operations or indicated by a combination of other variables such as estimated cost of training, estimated time required for the training, or estimated energy consumption for the training').
requirement(anx_13, input_output_modalities, 'the input and output modalities of the model, such as text to text (large language models), text to image, multi-modality, and the state of the art thresholds for determining high-impact capabilities for each modality, and the specific type of inputs and outputs (e.g. biological sequences)').
requirement(anx_13, benchmarks_and_evaluations, 'the benchmarks and evaluations of capabilities of the model, including considering the number of tasks without additional training, adaptability to learn new, distinct tasks, its level of autonomy and scalability, the tools it has access to').
requirement(anx_13, high_impact_on_internal_market, 'whether it has a high impact on the internal market due to its reach, which shall be presumed when it has been made available to at least 10000 registered business users established in the Union').
requirement(anx_13, number_of_registered_end_users, 'the number of registered end-users').

