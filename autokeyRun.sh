# Run a system command to check for the full name of the current AutoKey process name and store it in a variable:
process_name = system.exec_command("ps -q $(pgrep autokey) -o comm=")

# If gtk is in the process name:
if "gtk" in process_name:
    # Display the specified dialog:
    dialog.info_dialog(message="You are using the GTK front-end")

# If qt is in the process name:
elif "qt" in process_name:
    # Display the specified dialog:
    dialog.info_dialog(message="You are using the Qt front-end.")

# If anything else happens:
else:
    # Do nothing:
    pass
