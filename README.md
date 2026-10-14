# Jones Thyristor Chopper

Practical implementation and experimental validation of a Jones thyristor DC chopper with resistive and inductive loads, supported by MATLAB/Simulink.

## Practical implementation and experimental validation

- Implemented and investigated the Jones chopper in a laboratory setting with R and RL loads.
- Recorded load-voltage, capacitor-voltage and current waveforms.
- Studied the influence of duty ratio and inductance on average current and current ripple.
- Analysed forced commutation, commutation-capacitor sizing and thyristor current constraints.
- Compared experimental results with theoretical predictions and Simulink results.

The practical measurements and simulation outputs are identified separately in the French report. The image below is a simulation diagram, not a photograph of the physical setup.

![Simulation diagram](simulation-diagram.png)

### Experimental waveform capture

![Experimental oscilloscope waveforms](experimental-waveforms.png)

Recorded waveforms from the practical implementation (see the French report for the operating conditions).

## Repository contents

| File | Purpose |
| --- | --- |
| [jones-chopper-report-fr.pdf](jones-chopper-report-fr.pdf) | Full French report: experimental setup, measurements, calculations and simulation comparisons. |
| [results-and-waveforms.zip](results-and-waveforms.zip) | Complete archive of the supplied diagrams, waveforms and spectra. |
| [simulation-diagram.png](simulation-diagram.png) | Simulation diagram preview shown below. |
| [jones_chopper.slx](jones_chopper.slx) | Editable Simulink model. |
| [current-ripple-analysis.m](current-ripple-analysis.m) | MATLAB analysis script. |
| [inductance-ripple-analysis.m](inductance-ripple-analysis.m) | MATLAB analysis script. |

## Getting started

1. Read the French report to understand the circuit, operating conditions and measurement protocol.
2. Extract `results-and-waveforms.zip` to inspect the recorded results and simulation figures.
3. Open `jones_chopper.slx` in MATLAB/Simulink and inspect the configured circuit and parameters before running it.
4. Use the report to select the operating case to reproduce and compare the voltage/current waveforms.

## Software requirements

MATLAB is required for `.m` scripts. Simulink and the power-system blocks used by the model are required for `.slx` files. Some analytical scripts use `syms`/`vpasolve` and therefore require Symbolic Math Toolbox. The exact original MATLAB release is not specified; model compatibility should be checked in your installation.

## Project context

Academic power-electronics project completed at the National Polytechnic School of Algiers in 2024/2025, including practical laboratory work and simulation. This repository presents Amani Mouaad’s portfolio version of a collaborative academic project.

**Portfolio author:** Amani Mouaad  
**Supervision:** Pr. M. Mahmoudi and Mr. Benachour.

The technical report is retained in French. Repository documentation is in English. The original source documents are preserved separately.

