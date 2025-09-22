#!/bin/bash
cd /home/kavia/workspace/code-generation/medical-imaging-view-generator-1560-1569/medical_imaging_backend
dotnet build --no-restore -v quiet -nologo -consoleloggerparameters:NoSummary /p:TreatWarningsAsErrors=false
LINT_EXIT_CODE=$?
if [ $LINT_EXIT_CODE -ne 0 ]; then
  exit 1
fi

