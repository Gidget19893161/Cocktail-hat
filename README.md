# Cocktail Hat

The Cocktail Hat is a Raspberry Pi Hat was designed to be used in conjunction with the Cocktail Pi software.
There are two parts to the project.

First: The PCB.
The custom-designed PCB was designed to bring the clutter of wire multipul pump to your Raspberry Pi. With the direct integration of the MCP27013, a 16-bit, I2C-compatible I/O port expander, makes it really easy to add multiple pumps or values or even a combination of both. However, the wiring can be a bit overwhelming. To simplify the wiring, The Cocktail Hat brings in one MCP23017 and eight TB66 motor controllers onto an easy-to-use Hat.

Second: The software.
The Cocktail Pi has what is referred to as "Voltage Director Pin". This pin, in combination with other relays, allows pumps to run in reverse or referred to as "pump down". The TB66 allows motors to be run in the same way but with just one IC. However, the TB66 needs two direction pins. a HIGH/LOW to go fowards and a LOW/HIGH to reverse. After setting the "Voltage Director Pin" to GPIO 17, the software will read GPIO27 and output the inverse on GPIO22. Giving you the HIGH/LOW or LOW/HIGH signal required for the TB66. 

## Requirements

This project is intended for use with a Raspberry Pi running the Cocktail Pi software.

Only one dependency is required:

python3-lgpio

Want to install or uninstall for yourself? Use the one-line commands below 

## Install:
```bash
curl -sSL https://raw.githubusercontent.com/Gidget19893161/Cocktail-hat/main/scripts/install.sh | bash
```

## Uninstall:
```bash
curl -sSL https://raw.githubusercontent.com/Gidget19893161/Cocktail-hat/main/scripts/uninstall.sh | bash
```




## Licensing

This project uses separate licenses for software, hardware, and documentation.
Please see [`LICENSES/`](LICENSES) to read all licenses attached to this project.
