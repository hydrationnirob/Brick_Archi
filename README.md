![Logo](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/th5xamgrr6se0x5ro4g6.png)

# mason_bricks_archi

A feature brick for Mason is a tool designed to generate code from predefined bricks and templates, adhering to the principles of MVVM (Model-View-ViewModel) and Clean Architecture. This approach ensures a clear separation of concerns, making the codebase more maintainable and scalable. By following these architectural patterns, the generated code promotes better organization and testability, with distinct layers for the presentation, domain, and data handling. The MVVM pattern facilitates efficient data binding between the user interface and the underlying data models, while Clean Architecture enforces a robust structure that keeps the business logic independent of the frameworks and user interface elements.

## Features

- **Preconfigured Folder Structure:** Ready-to-use and well-organized folder setup for your project.
- **Mason CLI Integration:** Seamlessly integrated with Mason CLI for easy code generation.
- **MVVM Architecture:** Follows the MVVM (Model-View-ViewModel) architectural pattern for a clean and maintainable codebase.

## Authors

- [@rakibulHaque](https://github.com/hydrationnirob)


## Environment Variables

To run this project, you will need to add the following environment variables to your `mason.yaml` file:

`https://github.com/hydrationnirob/mason_bricks_archi`

## Installing Process

1. Install the Mason CLI:

    ```bash
    dart pub global activate mason_cli
    ```

2. In your project directory, initialize Mason:

    ```bash
    mason init
    ```

3. In the root directory, add `mason.yaml` file:

    ```yaml
    bricks:
      feature:
        git:
          url: https://github.com/hydrationnirob/mason_bricks_archi
          path: bricks/feature
    ```

4. Run the `mason get` command to register all the bricks from the nearest `mason.yaml` file:

    ```bash
    mason get
    ```

5. Run `mason list` to list all the available bricks:

    ```bash
    mason list
    ```

## How To Use

Use the bricks by running the following command in the terminal:

```bash
mason make feature
