# TODO

http://estc.bl.uk/P5483, http://estc.bl.uk/P5631, http://estc.bl.uk/P5427, http://estc.bl.uk/P5413
Luulen selvittäneeni "xx-yy cm"-arvoituksen. Kuten linkkien takaa näkyy, ainakin nämä neljä, ja luulisin siis että muutkin, ovat monen volyymin tapauksia (sidottuja lehtiä):
2 v. ; 40-49 cm.
2 v. : ill. (chiefly adv.) ; 49-53 cm.
v. ; 38-42 cm.
138 v. ; 23-31 cm.
Jos monivolyymiset ovat joka tapauksessa vielä pohdinnan alla, niin nämä jätettäneen siihen kategoriaan?
(Ainakin tässä kohtaa tulkintaa vaikeutti se, että kentältä puuttuu konteksti - mitat = pelkkä 300c kun 300a olisi kertonut volyymitiedon.)
hyvä, selvä juttu. Nuo monivoluumiset ovat osoittautuneet monella tapaa hankaliksi aikaisemmin. Ja ilman muuta kannattaa jättää siihen kategoriaan.


test gatherings kaatuu

TT notes2 in [estc_physical_dimensions_incomplete_TT.xlsx](estc_physical_dimensions_incomplete_TT.xlsx)
-> Lukuisa joukko merkintöjä jotka kyllä pitäisi tunnistua:
   -> sort(table(df.orig$value[which(is.na(df.preprocessed$gatherings.original))]))
   -> Listattu nyt hieman toisella logiikalla suunnilleen samoja: rejected_entries_noncurated.csv
   -> Käy molemmat läpi, tarvittaessa lisää myös tuo ensimmäinen automaattisiin summaustauluihin

Alla olevat sinänsä OK, lähetä summary ASAP Tuulille uudelleen tsekattavaksi kunhan tuo yllä oleva on vielä tehty.

TT notes in [estc_dimensions_observations.docx](estc_dimensions_observations.docx)
-> OK, paitsi viimeinen pointti jonka katson erikseen. Näytä kommentoitu docx Tuulille.

Olen lisännyt nyt summaryinin kaksi uutta kohtaa, ja nämä voisit vilkaista vielä läpi:
  * [Discarded entries (curated)](rejected_entries_curated.csv); these entries have been curated, and confirmed to contain no interpretable dimension information. These are discarded before other processing.
  * [Discarded entries (non-curated)](rejected_entries_noncurated.csv); these entries have not been curated; they have not been interpreted for dimension information. This table should be (made) empty. The discarded cases should go to the [curated list of rejected entries](rejected_entries_curated.csv), and interpretation of the other cases should be fixed in the workflow.

The data still has some 1to sizes although they should be interpreted
as 2fo?  kun gatherings.original=1to, gatherings=2fo. Tästä seuraa,
että 1to-dimensiot silloin kuin muuta tietoa ei ole asettuvatkin
folion mittoihin (30x45). (gatherings.original=2fo näyttää olevan
loogisesti gatherings=2fo)
-> Onko nämä nyt OK? Jos ei, niin löytyykö esimerkki jossa tulkinta on virheellinen?



### Dimensions

  * Compare ready made sheets and calculated estimates; these have notable differences, why?
  * Augment missing values using our estimates, not the ready made sheets?
  * Account for year and publication place if feasible as the sizes may vary
  * In order to save space, make table with unique entries that can be cross-linked to documents.