#!/bin/bash
powershell.exe -ExecutionPolicy Bypass -File ci/run_jmeter.ps1 -Test "$1"
