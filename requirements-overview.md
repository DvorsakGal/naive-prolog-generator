# Requirements

### Create a naive approach to generating prolog ontologies for the contents of folder 20260922T172249_32024R1689_3f672e3e/units

* Use an underlying LLM that will generate prolog (this can be any model)
* Create orchestration for the LLM so that it can create a full prolog file
* Make sure approach is naive - LLM only gets the prompt, and based off that it then uses the contents to create prolog.
* What are the contents? Contents are broken up chunks of a legal act that was parsed with a script and annotated manually to get xmls that explain what each claim references, for easier machine understanding


### Fixes for v2
* right now we have first order logic written as a sentence:
```
obligation(art_5_par_6, national_market_surveillance_authorities, 'shall submit annual reports to the Commission on such use').
```
* This is too abstract, we need to define this in a lower-level manner such as this:
```
% --- System classification ---
real_time_rbi_system(S) :-
    biometric_identification_system(S),
    remote(S),
    real_time(S). 
```
* Every step in the transformation to FOL pipeline should be deterministic, only stochastic part should be the LLM call, since it's a black box. So batching, orchestreation etc. needs to be completely deterministic, consistent and transparent
* Because of that pipeline documentation should be more detailed and well explained what is going on
* Without last 2 points (determinism and good documentation) we cannot gain experimental insights

### Experimental viewpoint
* With full determinism and consistency of the pipeline (minus LLM calls) we can start answering questions like how much context per call should we give the LLM, how to batch, orchestration etc.
