# Debugger.py

A Python debugging tool with auto-fix, comment removal, logging, and error detection capabilities.

## Features

- **Auto-Indentation Fix**: Converts tabs to 4 spaces for consistent formatting.
- **Comment Removal**: Optional removal of code comments for cleaner execution.
- **Execution Logging**: Logs debug/error details to `debug_log.txt` (customizable).
- **Error Line Detection**: Identifies the exact line causing errors using tracebacks.
- **Progress Visualization**: Uses `tqdm` for a progress bar during processing.
- **Prevents Recursion**: Uses environment variables to avoid recursive debugging.

## Installation

1. Ensure Python 3.x is installed.
2. Install dependencies:
    ```bash
    pip install rich tqdm
    ```

## Usage

### Import the Debugger
```python
    from debugger import Debugger

    # Initialize with optional auto-fix and comment removal
    debugger = Debugger(auto_fix=True, remove_comments=False, log_file="custom_log.txt")
```

### Debug a File
```python
    debugger.debug("your_script.py", log=True, processing_delay=0.01)
```

### Parameters
- `auto_fix` (bool): Enable automatic indentation fixes (default: `False`).
- `remove_comments` (bool): Remove all `#` comments from the code (default: `False`).
- `log_file` (str): Custom log file path (default: `debug_log.txt`).
- `log` (bool): Enable/disable logging (default: `True`).
- `processing_delay` (float): Delay for progress bar simulation (default: `0.01`).

## Run Directly
```bash
python debugger.py  # Processes 'fillermodule.py' as shown in the example
```

## Logging
- Logs are saved to `debug_log.txt` by default.
- Includes timestamps, code snapshots, and error details.

## Dependencies
- [`rich`](https://github.com/Textualize/rich): Enhanced terminal formatting.
- [`tqdm`](https://github.com/tqdm/tqdm): Progress bar visualization.

## License
MIT License. See [LICENSE](LICENSE) for details.
