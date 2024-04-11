# CI setup for PostgreSQL

This repository provides a GitHub Action for configuring your workflow with an easy PostgreSQL setup. You can utilize this action to streamline the process of setting up and interacting with a PostgreSQL database within your CI/CD pipelines.

## Inputs

### `version`
- **Description**: Version of the PostgreSQL engine.
- **Required**: No
- **Default**: `latest`

### `user`
- **Description**: Username for the PostgreSQL server.
- **Required**: No
- **Default**: `postgres`

### `password`
- **Description**: Password for your PostgreSQL user.
- **Required**: No
- **Default**: `password`

### `db_name`
- **Description**: Name for your database that will be created.
- **Required**: No
- **Default**: `postgres`

## Runs

### Using
- **Description**: Docker

### Image
- **Description**: Dockerfile

## Usage

To incorporate this action into your workflow, you can include it in your GitHub Actions workflow YAML file as follows:

```yaml
name: Your Workflow Name

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Repository
      uses: actions/checkout@v4

    - name: Set up PostgreSQL
      uses: rillsvai/postgresql-action@main
      with:
        version: ${{ inputs.version }}
        user: ${{ inputs.user }}
        password: ${{ inputs.password }}
        db_name: ${{ inputs.db_name }}
