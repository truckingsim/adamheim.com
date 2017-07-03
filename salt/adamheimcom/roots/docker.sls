"nginx":
  dockerng.image_present

"truckingsim/adamheim.com:latest"
  dockerng.image_present

site:
  dockerng.running:
    - image: nginx
    - port_bindings:
      - "80:80"
      - "443:443"
    - restart_policy: always