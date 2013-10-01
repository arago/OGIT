# Contributing to the OGIT project

## How to contribute

Please use the [GitHub Issue Feature](https://github.com/arago/graphIT-ontology/issues) for logging a new request or submitting a suggestion. We will take care of the issue as soon as possible.

Feel free to use the [Github Fork/Pull mechanism](https://help.github.com/articles/fork-a-repo) if you want to extend the ontology. We will review and discuss the requested extension and come back to you.

If you have any kind of question please contact us at <ogit@arago.de> .

## What to contribute

You can place extension requests for any "scope" we defined in ["SGO, NTO, and all that"](SGO_NTO_and_all_that.md). Here the list of valid  requests:

| Request type ID | scope      | request content |
| --------------: | :--------: | --------------- |
| I a             | (pure) SGO | add some attribute to an existing (pure) SGO node type |
| I b             | (pure) SGO | create a new node type with "(pure) SGO scope" (i.e. no NTO schema available or referenced) |
| I c             | (pure) SGO | create a new edge type with "SGO or SGO/NTO scope" (i.e. between node types of "SGO scope" or "SGO/NTO scope") |
| II a            | SGO/NTO    | create a new edge type with "SGO or SGO/NTO scope" (i.e. between node types of "SGO scope" or "SGO/NTO scope") |
| II b            | SGO/NTO    | add some attribute to a node type with SGO/NTO scope |
| II c            | SGO/NTO    | add/update NTO schema |
| II d            | SGO/NTO    | add some edge type allowing to connect nodes with SGO/NTO scope (of this NTO) with nodes with either pure SGO scope or nodes with SGO/NTO scope (belonging to some other NTO) - almost same as "I c" |
| III a           | (pure) NTO | add some attribute to an existing (pure) NTO node type |
| III b           | (pure) NTO | create a new node type with "(pure) NTO scope" |
| III c           | (pure) NTO | create a new edge type with "(pure) NTO scope", i.e. can connect only nodes whose types belong to same NTO |

In most cases a contribution will consist of several requests.
