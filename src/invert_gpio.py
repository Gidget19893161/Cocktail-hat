import lgpio
import time

INPUT_PIN = 27
OUTPUT_PIN = 22

# Open GPIO chip (0 is default on Raspberry Pi)
h = lgpio.gpiochip_open(0)

# Claim pins
lgpio.gpio_claim_input(h, INPUT_PIN)
lgpio.gpio_claim_output(h, OUTPUT_PIN)

try:
    while True:
        state = lgpio.gpio_read(h, INPUT_PIN)
        lgpio.gpio_write(h, OUTPUT_PIN, 0 if state else 1)
        time.sleep(0.05)

except KeyboardInterrupt:
    pass

finally:
    lgpio.gpiochip_close(h)
