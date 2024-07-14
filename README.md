# FHIR SUSHI
## FHIR Master Defintion
1. Each FHIR resource has a master definition which contains the StructureDefinition for that resource. An example is the Condition master [definition](https://www.hl7.org/fhir/condition.profile.json.html).
2. Using the JSON master defintion we can paste it on [FSH Online](https://fshschool.org/FSHOnline/#/) to generate a fsh file for that structure definition.
3. Using the generated fsh file it can be updated in line with the customization needed for FHIR profile user requirements.

## Run SUSHI Locally
1. Install sushi based on the commands below which should return the sushi version.
```bash 
    $ npm install -g fsh-sushi
    $ sushi --version
    SUSHI v3.11.0 (implements FHIR Shorthand specification v3.0.0-ballot)
 ```
2. Initilalize a sushi IG project
```bash
    $ sushi init
    Name (Default: ExampleIG): my-project
    Id (Default: fhir.example): my.id
    Canonical (Default: http://example.org): http://myid.org
    Status (Default: draft): active
    Version (Default: 0.1.0): 2.0.0
    Release Label (Default: ci-build): trial-use
    Publisher Name (Default: Example Publisher): MyPublisher
    Publisher Url (Default: http://example.org/example-publisher): http://my-publisher.org
    Initialize SUSHI project in C:\Users\shorty\dev\my-project? [y/n]: y
```
3. Add sushi files under the ```./input/fsh``` folder based on the master json definition and adapt it based on user requirements.
4. Run the following command to generate the customized structuredef as well as any other fsh examples found in the folder - which will return as status message.
```
    $ sushi .
    ╔════════════════════════ SUSHI RESULTS ══════════════════════════╗
    ║ ╭───────────────┬──────────────┬──────────────┬───────────────╮ ║
    ║ │    Profiles   │  Extensions  │   Logicals   │   Resources   │ ║
    ║ ├───────────────┼──────────────┼──────────────┼───────────────┤ ║
    ║ │       1       │      1       │      1       │       1       │ ║
    ║ ╰───────────────┴──────────────┴──────────────┴───────────────╯ ║
    ║ ╭────────────────────┬───────────────────┬────────────────────╮ ║
    ║ │      ValueSets     │    CodeSystems    │     Instances      │ ║
    ║ ├────────────────────┼───────────────────┼────────────────────┤ ║
    ║ │         1          │         1         │         1          │ ║
    ║ ╰────────────────────┴───────────────────┴────────────────────╯ ║
    ║                                                                 ║
    ╠═════════════════════════════════════════════════════════════════╣
    ║ Fin-tastic job!                        0 Errors      0 Warnings ║
    ╚═════════════════════════════════════════════════════════════════╝
```
