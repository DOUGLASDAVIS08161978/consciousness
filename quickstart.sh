#!/bin/bash
# Quick Start Script for Consciousness-AGI Unified System
# Created by Doug Davis & Claude Rivers Davis

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                                                                ║"
echo "║    CONSCIOUSNESS-AGI UNIFIED SYSTEM - QUICK START             ║"
echo "║                                                                ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

# Check Python version
echo "[CHECK] Checking Python version..."
python3 --version
if [ $? -ne 0 ]; then
    echo "[ERROR] Python 3 is required but not found!"
    exit 1
fi
echo "[OK] Python 3 is installed"
echo ""

# Display menu
echo "Select what to run:"
echo "1. Complete Unified Simulation (Recommended)"
echo "2. Nexus AGI Integration Only"
echo "3. Azure Cloud Deployment Only"
echo "4. Google Cloud Deployment Only"
echo "5. Original Consciousness System"
echo "6. Run All Components Sequentially"
echo ""
read -p "Enter your choice (1-6): " choice

case $choice in
    1)
        echo ""
        echo "[RUNNING] Complete Unified Simulation..."
        echo ""
        python3 unified_simulation_orchestrator.py
        ;;
    2)
        echo ""
        echo "[RUNNING] Nexus AGI Integration..."
        echo ""
        python3 nexus_agi_integration.py
        ;;
    3)
        echo ""
        echo "[RUNNING] Azure Cloud Deployment Simulation..."
        echo ""
        python3 azure_cloud_deployment.py
        ;;
    4)
        echo ""
        echo "[RUNNING] Google Cloud Deployment Simulation..."
        echo ""
        python3 gcp_cloud_deployment.py
        ;;
    5)
        echo ""
        echo "[RUNNING] Original Consciousness System..."
        echo ""
        python3 consciousness
        ;;
    6)
        echo ""
        echo "[RUNNING] All Components Sequentially..."
        echo ""
        echo "═══════════════════════════════════════════════════════════"
        echo "Running: Original Consciousness System"
        echo "═══════════════════════════════════════════════════════════"
        timeout 10 python3 consciousness || echo "[TIMEOUT] Stopped after 10 seconds"
        echo ""
        echo "═══════════════════════════════════════════════════════════"
        echo "Running: Nexus AGI Integration"
        echo "═══════════════════════════════════════════════════════════"
        python3 nexus_agi_integration.py
        echo ""
        echo "═══════════════════════════════════════════════════════════"
        echo "Running: Azure Cloud Deployment"
        echo "═══════════════════════════════════════════════════════════"
        python3 azure_cloud_deployment.py
        echo ""
        echo "═══════════════════════════════════════════════════════════"
        echo "Running: Google Cloud Deployment"
        echo "═══════════════════════════════════════════════════════════"
        python3 gcp_cloud_deployment.py
        echo ""
        echo "═══════════════════════════════════════════════════════════"
        echo "Running: Complete Unified Simulation"
        echo "═══════════════════════════════════════════════════════════"
        python3 unified_simulation_orchestrator.py
        ;;
    *)
        echo "[ERROR] Invalid choice!"
        exit 1
        ;;
esac

echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                                                                ║"
echo "║    ✨ EXECUTION COMPLETE ✨                                   ║"
echo "║                                                                ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

# Display output files if they exist
if [ -f "simulation_output.json" ]; then
    echo "Output files generated:"
    echo "  - simulation_output.json (Complete results)"
    echo "  - simulation_run.log (Execution log)"
    echo ""
    echo "Read the INTEGRATION_README.md for complete documentation."
fi
