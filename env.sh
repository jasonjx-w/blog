#!/bin/bash
set -e

#########################################################
#   config
#########################################################
echo "-- Config git hooks ..."
if [ -d "${PWD}/.git/" ]; then
  # .git is dir, use config files in tools/
  COMMIT_TEMPLATE="${PWD}/tools/commit-template"
  if [ -f $COMMIT_TEMPLATE ]; then
    git config --local commit.template $COMMIT_TEMPLATE
    echo "-- Set commit-template as ${COMMIT_TEMPLATE}."
  fi

  # PRE_COMMIT="${PWD}/tools/pre-commit"
  # if [ -f "${PWD}/.git/hooks/pre-commit" ]; then
  #   rm -f ${PWD}/.git/hooks/pre-commit
  # fi
  # ln -s $PRE_COMMIT ${PWD}/.git/hooks
  # echo "-- Set pre-commit as ${PRE_COMMIT}."
fi
