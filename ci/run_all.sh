#!/bin/bash

echo "=== Running LOAD TEST ==="
bash ci/run_jmeter.sh load_test

echo "=== Running STRESS TEST ==="
bash ci/run_jmeter.sh stress_test

echo "=== Running SOAK TEST ==="
bash ci/run_jmeter.sh soak_test

echo "=== ALL TESTS COMPLETED ==="
