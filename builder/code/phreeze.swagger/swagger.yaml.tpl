# YAML to get you started quickly.
# Be aware that YAML has indentation based scoping.
# Code completion support is available so start typing for available options.
swagger: '2.0'

# This is your document metadata
info:
  version: "0.0.1"
  title: <enter your title>

# Describe your paths here
paths:
  # This is a path endpoint. Change it.
  /persons:
    # This is a HTTP operation
    get:
      # Describe this verb here. Note: you can use markdown
      description: |
        Gets `Person` objects.
        Optional query param of **size** determines
        size of returned array
      # This is array of GET operation parameters:
      parameters:
        # An example parameter that is in query and is required
        -
          name: size
          in: query
          description: Size of array
          required: true
          type: number
          format: double
      # Expected responses for this operation:
      responses:
        # Response code
        200:
          description: Successful response
          # A schema describing your response object.
          # Use JSON Schema format
          schema:
            title: ArrayOfPersons
            type: array
            items:
              title: Person
              type: object
              properties:
                name:
                  type: string
                single:
                  type: boolean