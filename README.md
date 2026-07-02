# 🧪 Performance Testing Framework (JMeter + GitHub Actions CI)
## 📛 Build & Test Status

### GitHub Actions – JMeter Performance Tests
![JMeter Tests](https://github.com/tarnayattila/jmeter-performance-test/actions/workflows/jmeter.yml/badge.svg)

### Code Quality (Static)
![Lint](https://img.shields.io/badge/lint-passing-brightgreen)
![ShellCheck](https://img.shields.io/badge/shellcheck-clean-blue)

### Project Type
![JMeter](https://img.shields.io/badge/JMeter-5.6.3-red)
![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub_Actions-blue)
![Performance](https://img.shields.io/badge/Performance-Testing-orange)
Enterprise‑grade performance testing setup using **Apache JMeter** and **GitHub Actions CI**.  
Includes **load**, **stress**, and **soak** tests with reproducible results and automated reporting.

---

## 📂 Project Structure
```
performance-tests/
├── jmeter/
│    ├── load_test.jmx
│    ├── stress_test.jmx
│    └── soak_test.jmx
│
├── ci/
│    ├── run_jmeter.sh
│    └── run_jmeter.ps1
│    └── run_all.sh
│
├── results/
│    └── (JTL + HTML reports)
│
└── .github/
      └── workflows/
            └── jmeter.yml
```

---

## 🚀 Test Types

| Test | Threads | Ramp‑up | Duration | Purpose |
|------|----------|----------|-----------|----------|
| **Load Test** | 50 | 30 sec | 10 min | Steady load validation |
| **Stress Test** | 1000 | 10 min | 10 min | Breakpoint discovery |
| **Soak Test** | 30 | 1 min | 2 hours | Long‑term stability |

All tests target a sample REST API endpoint designed for performance testing demonstrations.


---

## ⚙️ Running Tests Locally

### Run a single test:
```bash
bash ci/run_jmeter.sh load_test
bash ci/run_jmeter.sh stress_test
bash ci/run_jmeter.sh soak_test
Run all tests:

bash ci/run_all.sh
Results are saved in the results/ directory.

🧩 GitHub Actions CI
The workflow automatically:

Installs JMeter

Runs all three tests

Saves .jtl results

Generates HTML reports

Uploads artifacts

https://github.com/tarnayattila/<repo>/actions/workflows/jmeter.yml/badge.svg
📊 HTML Reports
Generate HTML dashboards manually:
apache-jmeter-5.6.3/bin/jmeter -g results/result_load_test.jtl -o reports/load_test_html
apache-jmeter-5.6.3/bin/jmeter -g results/result_stress_test.jtl -o reports/stress_test_html
apache-jmeter-5.6.3/bin/jmeter -g results/result_soak_test.jtl -o reports/soak_test_html
These reports provide:

Average response time

Throughput

Error percentage

P95 / P99 latency

Detailed sampler breakdown
```
🧠 Future Enhancements
InfluxDB + Grafana real‑time dashboards

Docker Compose environment

Parameterized endpoints via config/jmeter.properties

Slack/Teams CI notifications

🏁 Summary
This framework provides:

Automated load, stress, and soak testing

CI/CD integration

Reproducible performance metrics

HTML reporting

Clean, scalable project structure

Author: Tarnay Attila
Tools: Apache JMeter 5.6.3, Bash, GitHub Actions
