#!/bin/bash
##Run projects.
##  Command line argument:
##    run.sh dev
##      Will run the projects without an SSL/TSL Certificates.
##    run.sh prod
##      Will run the projects with SSL/TSL Certificates.

if [[ "$1" = "dev" ]];
then
  echo "Running projects in development mode."
  ##/Cineflix/run.sh http
  ./Flashcards/run.sh http
  ./Oinker/run.sh http
  ./Portfolio/run.sh http
elif [[ "$1" = "prod" ]];
then
  echo "Running projects in production mode."
  ##/Cineflix/run.sh https
  ./Flashcards/run.sh https
  ./Oinker/run.sh https
  ./Portfolio/run.sh https
else
  echo "Command line argument:";
  echo "  run.sh dev";
  echo "    Will run the projects without an SSL/TSL Certificates.";
  echo "  run.sh prod";
  echo "    Will run the projects with SSL/TSL Certificates.";
fi
