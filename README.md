# jv

Docker image for https://github.com/santhosh-tekuri/jsonschema

## Usage

Validate a schema:

`docker run --rm -ti -v /path/to/schemas:/schemas mtrense/jv /schemas/my_schema.json`

Validate json files against a schema:

`docker run --rm -ti -v /path/to/schemas:/schemas /path/to/json/documents:/documents mtrense/jv /schemas/my_schema.json /documents/my_document.json`

`jv` prints some information on what failed to validate. The exit code is zero when the validation was successful, non-zero otherwise.

For more information and flags to customize the validation, see the original Documentation at https://github.com/santhosh-tekuri/jsonschema.

## Thanks

Thanks to Santhosh Kumar Tekuri for providing a compliant and statically compilable JSON Schema validator with a minimal footprint.
