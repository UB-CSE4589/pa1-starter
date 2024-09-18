"""
 * @logger
 * @version 1.0
 *
 * @section LICENSE
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details at
 * http://www.gnu.org/copyleft/gpl.html
 *
 * @section DESCRIPTION
 *
 * Contains logging functions to be used by CSE489/589 students.
"""

import os
import socket
import logging
import sys

ret_print = 0
ret_log = 0

def get_log_file(path):
    return path

def cse4589_init_log(port):
    """
    Initializes the log file path based on the hostname and the given port number.
    """

    # Get the hostname
    hostname = socket.gethostname().split('.')[0]

    # Get the directory of the current script/executable
    exec_dir = os.path.dirname(os.path.realpath(__file__))

    # Set up the log file path
    LOGFILE = os.path.join(exec_dir, "logs", f"assignment_log_{hostname}_{port}.log")
    # Save the logfile as an env variable
    os.environ["LOGFILE"] = LOGFILE

    # Create logs directory if it doesn't exist
    os.makedirs(os.path.dirname(LOGFILE), exist_ok=True)

    # Set up logging configuration
    logging.basicConfig(filename=LOGFILE, level=logging.DEBUG,
                        format='%(asctime)s - %(levelname)s - %(message)s')


"""
Writes the given arguments to both STDOUT and LOGFILE.

Return codes are stored in global variables:
- ret_print: number of characters printed to STDOUT or a negative value indicating an error
- ret_log: number of characters logged to LOGFILE or a negative value indicating an error
            (-100 indicates unable to open LOGFILE)
Args:
    *args: Variable length argument list of items to be printed/logged
           (can include regular strings, f-strings, or other objects)
    sep (str): String inserted between values, default a space
    end (str): String appended after the last value, default a newline
"""
def cse4589_print_and_log(*args, sep=' ', end='\n'):

    global ret_print, ret_log

    # Combine all arguments into a single string
    message = sep.join(map(str, args)) + end

    # Print to STDOUT
    try:
        print(message, end='')  # end='' because 'message' already includes the end string
        ret_print = len(message)
    except Exception as e:
        ret_print = -1
        print(f"Error printing to console: {e}", file=sys.stderr)

    # Log to file
    try:
        logging.info(message.rstrip())  # Remove trailing newline for log file
        ret_log = len(message)
    except Exception as e:
        ret_log = -100
        print(f"Error logging to file: {e}", file=sys.stderr)
