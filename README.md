# IT3040 ITPM Assignment 1 - Option 1

## Student Registration Number
IT23716964

## Assignment Option
Option 1: Transliteration Accuracy Testing for Chat Sinhala / Singlish to Sinhala.

## Files Included
- `test_automation/IT23716964_test_automation.py` - Playwright automation script.
- `test_automation/IT23716964_Assignment 1 - Test cases.xlsx` - Excel file with 50 negative test cases.
- `requirements.txt` - Python package requirements.
- `run_tests_IT23716964.bat` - Windows quick-run command.
- `Git Repository Link - IT23716964.txt` - Contains the public GitHub repository URL.

## Test Case Coverage
The Excel file contains 50 negative test cases.

Coverage summary:
- All TC IDs begin with `Neg`.
- Positive TC IDs are not used because the file contains negative test cases only.
- The 24 Singlish input types in Appendix 1 are covered with at least 2 test cases each.
- The final 2 test cases are additional mixed long scenarios.
- Input length categories are applied as:
  - `S`: 30 characters or fewer
  - `M`: 31 to 299 characters
  - `L`: 300 to 450 characters
- The `Actual output` and `Status` columns are left blank so the automation script can record them after execution.

## Installation

Install Python 3.11 or 3.12 and Google Chrome first.

From this folder, run:

```bash
pip install -U pip
pip install -r requirements.txt
playwright install
```

## Run the tests

```bash
python "test_automation/IT23716964_test_automation.py" --excel "test_automation/IT23716964_Assignment 1 - Test cases.xlsx" --sheet "Test cases" --url "https://www.pixelssuite.com/chat-translator" --wait-ms 5000 --type-delay-ms 80 --slow-mo-ms 200 --save-every 1 --keep-open
```

On Windows, you can double-click:

```text
run_tests_IT23716964.bat
```

## Before Submission

1. Run the automation script.
2. Reopen the Excel file.
3. Check that `Actual output` and `Status` are filled automatically.
4. Manually complete `Singlish input types covered` and `Evidence or rationale for the input type covered`.
5. Confirm the GitHub URL in `Git Repository Link - IT23716964.txt` is correct and publicly accessible.
6. Create a folder named `IT23716964`, place required files inside, zip it, and submit.
