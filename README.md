# jhana-app

We use taskfile to manage tasks.

Installation (other platforms and completion info [here](https://taskfile.dev/#/installation)):

```bash
brew install go-task
```

To see the available tasks, run:

```bash
task
```

## Development

We use Docker to run infrastructure and sever locally in docker compose.

Please install docker:

1. Docker Desktop: https://docs.docker.com/desktop/
2. Or use colima, container runtimes on macOS (and Linux) with minimal setup - https://github.com/abiosoft/colima

Run server and required infrastructure (postgres, directus) locally in docker:

```bash
task compose:up
```

You can see the next logs if service has started successfully:

```

```

Default user credentials (based on .envs/.local/.directus.env):

-   email: admin@example.com
-   password: <random>

When you change the .envs/.local/\*.env files or update Dockerfile or compose files, you need to rebuild the service:

```bash
task compose:rebuild
```

It just runs: `task compose:down && task compose:build && task compose:up`

## Backend

To run the backend API, run:

```bash
task run:api
```

### Code generation

The code generation is done using [entgo.io](https://entgo.io/). To generate the code, run:

```bash
task go:generate
```

### Migrations

To sync the schema generated by ent with the database, run:

```bash
task migrate:schema-diff -- <name>
```

Where `<name>` is the name of the migration.

In case the generated file was edited, the migration directory integrity file needs to be updated with the following command:

```bash
task migrate:update-hash
```

Apply the migrations to the database:

```bash
task migrate:apply
```

When you run the migrations first time, you may need to run the following command to ignore directus tables:

```bash
task migrate:apply -- --allow-dirty
```

Note, [Atlas](https://atlasgo.io/getting-started/#installation) should be installed for this to work. When you run migrations, it will be installed automatically.

You can also use atlas directly with the following command:

```bash
task migrate -- <atlas command>
```

or :

```bash
atlas <atlas command>
```

## User Authorization

We support authorization with firebase at the moment:

-   firebase

### Firebase

This is our production method of authorization. It uses Firebase Authentication to authenticate users.

```
JHANA_AUTH_METHOD=firebase
JHANA_FIREBASE_ENABLED=true
JHANA_FIREBASE_PROJECT_ID=<project_id>
JHANA_FIREBASE_CREDENTIALS_FILE=<path_to_credentials_file>

```

To generate a private key file for your service account (read more [here](https://firebase.google.com/docs/admin/setup#initialize_the_sdk_in_non-google_environments):

-   In the Firebase console, open Settings > [Service Accounts](https://console.firebase.google.com/project/_/settings/serviceaccounts/adminsdk).
-   Click Generate New Private Key, then confirm by clicking Generate Key.
-   Securely store the JSON file containing the key.
-   Set the `JHANA_FIREBASE_CREDENTIALS_FILE` to the path of the JSON file.

> Warning: Use extra caution when handling service account credentials in your code. Do not commit them to a public repository, deploy them in a client app, or expose them in any way that could compromise the security of your Firebase project.

> This file is only generated once. If you lose or leak the key, you can repeat the instructions above to create a new JSON key for the service account.

## App

We use Flutter for the app.

[Installation instructions](https://docs.flutter.dev/get-started/install/macos/mobile-ios)

flutterfire is used for firebase integration [read more](https://firebase.google.com/docs/flutter/setup?platform=ios).

```bash
cd app
dart pub global activate flutterfire_cli
```

# Issues

Different environments and configs for firebase
https://www.reddit.com/r/flutterhelp/comments/188g20c/does_firebase_optionsdart_completely_replace/

Support for multiple environments:
https://medium.com/capyba/setting-flutter-environments-the-capybas-way-cb7d085b3b74
