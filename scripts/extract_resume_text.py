from PyPDF2 import PdfReader
import os

path = os.path.join(os.path.dirname(__file__), '..', 'assets', 'pdf', 'Dario_Serrano_Resume_2026_0218.pdf')
reader = PdfReader(path)
for i, page in enumerate(reader.pages, start=1):
    print(f"--- page {i} ---")
    print(page.extract_text())
