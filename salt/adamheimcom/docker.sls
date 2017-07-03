"nginx":
  dockerng.image_present

"truckingsim/adamheim.com:latest":
  dockerng.image_present:
    - force: True

site:
  dockerng.running:
    - image: "truckingsim/adamheim.com:latest"
    - port_bindings:
      - "80:80"
      - "443:443"
    - restart_policy: always
    - force: True