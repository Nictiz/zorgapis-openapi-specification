# ZorgAPIs API

This is the ZorgAPIs API specification using OpenAPI.

## Structure

To improve readability and maintainability of the API specification, the OpenAPI definitions are split into multiple
files. File structure is as follows:

- `_examples`
- `_headers`
- `_parameters`
    - `query`
    - `path`
    - `header`
    - `cookie`
- `_paths`
- `_responses`
- `_schemas`
- `_securitySchemes`

*The underscore (`_`) is added to indicate OpenAPI folders. Based on [How to split a large OpenAPI document into
multiple files](https://davidgarcia.dev/posts/how-to-split-open-api-spec-into-multiple-files/).*

### File naming

File names are based on what the file defines, for example:

- `_headers`
    - `Total-Count.yaml` - Header `Total-Count`
- `_parameters`
    - `path`
        - `requirementId.yaml` - Path parameter `requirementId`
    - `query`
        - `skip.yaml` - Query parameter `skip`
- `_paths`
    - `api-requirements.yaml` - Endpoint `/api-requirements`
    - `api-requirements_{requirementId}.yaml` - Endpoint `/api-requirements/{requirementId}`
- `_schemas`
    - `ApiRequirement.yaml` - Model `ApiRequirement` (PascalCase)

### JSON naming

- Property names
    - `camelCasing`
    - Written in full
        - E.g. `externalId` and not `extId`
- `enum` values
    - `SCREAMING_SNAKE_CASE`
        - Similar to how e.g. `enums` and constants are defined in `java`

### URL path naming

- Paths are lowercase
- Multiple words in paths are seperated with a hyphen (`-`), e.g. `/api-specifications`
- Collections
    - Plural
        - E.g. `GET /api-specifications`
    - Operations:
        - `GET /api-specifications` - Get list of API specifications
        - `POST /api-specifications` - Add a new API specification
- Single item from a collection
    - Path relative to collection like so: `/api-specifications/{specificationId}`
    - Operations
        - `GET /api-specifications/{specificationId}` - Get API specification by ID
        - `PATCH /api-specifications/{specificationId}` - Update API specification by ID
        - `DELETE /api-specifications/{specificationId}` - Delete API specification by ID
        - *Only using `PATCH` and not `PUT` to allow for partially updating an item. `PUT` basically means 'replace',
          but that would require **all** properties to be included. This can be troublesome when multiple users edit the
          same item at the same time.*

## Bundling

Most tools expect a single OpenAPI `yaml` or `json` file. In order to **bundle** all files back to a single file, we can
use a tool like [swagger-cli](https://github.com/APIDevTools/swagger-cli) or [redocly-cli](
https://github.com/Redocly/redocly-cli).

For this project, the [redocly-cli](https://github.com/Redocly/redocly-cli) was used. To bundle the OpenAPI
specification, follow these steps:

1. Install [node.js](https://nodejs.org/en/) on your device
2. Install `@redocly/cli` from the command line (or check the [docs](https://redocly.com/docs/cli/installation/)):
```shell
npm i -g @redocly/cli
```
3. Bundle the specification from the command line (in the API specification's root folder) for the specific API version
   (e.g. `v1alpha1`):
```shell
redocly bundle ./v1alpha1/openapi.yaml --output v1alpha1.yaml
```