# Adapter pattern

This pattern allows objects with incompatible interfaces to collaborate. With an adapter we can keep the transformation logic in one place.

Let's imagine that we are using some external api returning data in JSON format and we would like to use this data in our app. The app already contains the logic for working with data, but in YAML format. An adapter may be useful here.
