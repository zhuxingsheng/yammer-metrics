#!/bin/bash

git config user.email "cd@infusionsoft.com"
git config user.name "CircleCI"
$M2/mvn release:prepare release:perform --batch-mode
