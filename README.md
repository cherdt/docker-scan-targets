# docker-scan-targets
Quickly create Docker targets for scans. Assumes you already have Docker installed (recent versions of Kali include Docker).

## Limitations

This currently only works on Linux systems on x86_64 architecture.

## Usage

### 
    make setup
    make wordpress

Within minutes, you should have a Wordpress instance running at http://localhost:8000.

Other targets include

### DVWA (Damn Vulnerable Web Application)

    make dvwa

Note that DVWA runs on port 80, http://localhost

### Joomla

    make setup
    make joomla

Joomla runs on port 8000, at http://localhost:8000

### Nessus

    make nessus

Nessus runs on port 8834, at https://localhost:8834

### To see all options

    make help

## Motivation
You, theoretically, want to use some of the interesting web application analysis tools in Kali Linux, or maybe try using Nessus Essentials or OpenVAS to scan a web app. You need a target. Why not a container?

- **Question:** Docker and Docker Compose are so easy, why wrap them in a Makefile?
- **Answer:** I don't feel like remembering the syntax. Syntactic sugar can be a good thing. Plus, if I do need to remember the syntax, it's in the Makefile.
