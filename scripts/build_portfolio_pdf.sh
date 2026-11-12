#!/bin/sh
# Rebuild the downloadable project portfolio PDF from projects.html.
#
# The @media print rules in assets/style.css lay the page out for paper
# (one project per page, title block, galleries as contained images), and
# headless Chrome renders that print view straight to PDF. Rerun this after
# any content change to projects.html, then commit the refreshed PDF.
#
# Usage: scripts/build_portfolio_pdf.sh
set -e
cd "$(dirname "$0")/.."
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless --disable-gpu --no-pdf-header-footer --virtual-time-budget=10000 \
  --print-to-pdf="assets/pdf/Dario_Serrano_Portfolio_2027.pdf" \
  "file://$(pwd)/projects.html" 2>/dev/null
echo "Wrote assets/pdf/Dario_Serrano_Portfolio_2027.pdf"
