# docker-scan-targets
Quickly create Docker targets for scans

## Usage

### 
    make setup
    make wordpress

Within minutes, you should have a Wordpress instance running at http://localhost:8000.

Other targets include

### DVWA (Damn Vulnerable Web Application)

    make dvwa

### Joomla

    make setup
    make joomla

### To see all options

    make help

## Motivation
You, theoretically, want to use some of the interesting web application analysis tools in Kali Linux, or maybe try using Nessus Essentials or OpenVAS to scan a web app. You need a target. Why not a container?

- **Question:** Docker and Docker Compose are so easy, why wrap them in a Makefile?
- **Answer:** I don't feel like remembering the syntax. Syntactic sugar can be a good thing. Plus, if I do need to remember the syntax, it's in the Makefile.
