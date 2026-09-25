# Requirements

### Create a naive approach to generating prolog ontologies for the contents of folder 20260922T172249_32024R1689_3f672e3e/units

* Use an underlying LLM that will generate prolog (this can be any model)
* Create orchestration for the LLM so that it can create a full prolog file
* Make sure approach is naive - LLM only gets the prompt, and based off that it then uses the contents to create prolog.
* What are the contents? Contents are broken up chunks of a legal act that was parsed with a script and annotated manually to get xmls that explain what each claim references, for easier machine understanding