#!/bin/bash

set -e

git config user.email "sre@infusionsoft.com"
git config user.name "CircleCI"
$M2/mvn release:prepare release:perform --batch-mode
