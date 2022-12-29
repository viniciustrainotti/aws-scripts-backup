# AWS Scripts Backup

## Requirements

To necessary the follow tools installed below.

- aws-cli
- postgresql-client

## Usage

### AWS S3

To backup S3 files to execute script below.

```sh
$ ./backup-s3.sh <BUCKET> [<PROFILE>]
```

### AWS RDS

First, to connect in database via tunnel, and then to do dump Postgres database to execute script below.

```sh
$ ./backup-rds-postgresql.sh <DATABASE>
```