# Homelab-Docker-Compose
## Table of Contents
* [Hardware](#🔩-hardware)
* [Containers](#🫙-containers)
## 🔩 Hardware
My main motivation when building out my Homelab was to segregate my containers on one device and storage on another. I previously had been running all my apps on my DIY NAS using TrueCharts within TrueNAS Scale. 
### Homelab
My Homelab is run on a Gen 12 Intel NUC maxed out with 64GB of memory.
| [Intel NUC 12 Pro Kit NUC12WSKi3](https://www.intel.com/content/www/us/en/products/sku/121613/intel-nuc-12-pro-kit-nuc12wski3/specifications.html) | [Crucial P5 Plus M.2 2280](https://www.amazon.com/gp/product/B098WL46RS/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&th=1) | [Crucial 64GB Kit (2 x 32GB) DDR4-3200](https://www.amazon.com/gp/product/B07ZLCVKPV/ref=ppx_yo_dt_b_asin_title_o04_s00?ie=UTF8&psc=1) |
| --- | --- | --- |
| ![Intel NUC 12 Pro Kit NUC12WSKi3](https://home-assistant-readme.s3.amazonaws.com/nuc.png) | ![Crucial P5 Plus M.2 2280](https://home-assistant-readme.s3.amazonaws.com/nuc_ssd.jpg) | ![Crucial 64GB Kit (2 x 32GB) DDR4-3200](https://home-assistant-readme.s3.amazonaws.com/nuc_ram.jpg) 

I'm currently running Ubuntu Server 20.04.2 LTS as I wanted a dependable OS to run headless. 
### NAS
I took the DIY NAS approach as I was super interested in getting up-and-running with TrueNAS Scale. 
- **CPU**: Intel i3-4150 + Stock Cooler
- **MOBO**: Asus H81I-Plus Mini ITX
- **RAM**: 16GB DDR3 1600 MHz (2 x 8GB)
- **RAID CONTROLLER**: LSI 9207-8i (IBM M5110)
- **STORAGE**: x4 WD 10TB Red Plus HDD
- **BOOT**: x2 Kingston 120GB A400 SSD
- **PSU**: Corsair SF450 SFX 80-Platinum
- **CASE**: Jonsbo N1

The pool is setups as two 2-disk mirror vdevs providing my household with 20TB of usable storage for photos, media, Time Machine backups, and my various other archival needs. I highly recommend checking out the [JRS blog](https://jrs-s.net/2015/02/06/zfs-you-should-use-mirror-vdevs-not-raidz/) if you are wondering why I chose mirror vdevs instead of Z1 or Z2.
### Networking
Living in a 950 sqft Loft apartment, I don't have to worry about signal strength. My setup consists of a Google WiFi puck in the Living Room. This is my primary router: one end connects to my in-wall ethernet port and the other end to a Netgear 8-port managed switch. I have an TP-Linke 8-port unmanaged switch plugging into the managed switch in order to expand the number of available ethernet ports.
| [Google Wifi](https://store.google.com/us/product/google_wifi_2nd_gen?hl=en-US) | [Netgear Managed Switch](https://www.amazon.com/gp/product/B07PLFCQVK/ref=ppx_yo_dt_b_asin_title_o08_s00?ie=UTF8&psc=1) | [TP-Link Unmanaged Switch](https://www.amazon.com/gp/product/B00A121WN6/ref=ppx_od_dt_b_asin_title_s00?ie=UTF8&psc=1) | [MoCa Network Adapter](https://www.amazon.com/Actiontec-MoCA-Network-Adapter-Ethernet/dp/B013J7O3X0/ref=sr_1_3?dchild=1&keywords=ethernet%2Bover%2Bcoax&qid=1629947247&sr=8-3&th=1) |
| --- | --- | --- | --- |
| ![Google Wifi](https://raw.githubusercontent.com/theglus/Home-Assistant-Config/master/www/readme/network/google_wifi.jpg) | ![Netgear Managed Switch](https://m.media-amazon.com/images/I/61TAP3WjZyL._AC_SL1500_.jpg) | ![TP-Link Managed Switch](https://raw.githubusercontent.com/theglus/Home-Assistant-Config/master/www/readme/network/switch.jpg) | ![MoCa Network Adapter](https://raw.githubusercontent.com/theglus/Home-Assistant-Config/master/www/readme/network/coax.jpg) 

But you can't have a mesh network with just one puck, so in order to eliminate the potential for any deadzones, I've placed another puck upstairs in the Loft.

I routinely stream games via Moonlight from my desktop computer (in the Office) to the TV (in the Living Room). Initially, I did this over WiFi, but had very little success. Fortunately, there is a coax outlet right under my desk, so using ethernet-over-coax, I am able to hardwire to the network switch in the Living Room.
## 🫙 Containers
* [1Password](https://hub.docker.com/r/1password/op)
* [Cloudflared](https://hub.docker.com/r/cloudflare/cloudflared)
* [FileBot](https://hub.docker.com/r/jlesage/filebot)
* [Heimdall](https://docs.linuxserver.io/images/docker-heimdall)
* [OpenVPN](https://hub.docker.com/r/dperson/openvpn-client)
* [Plex](https://docs.linuxserver.io/images/docker-plex)
* [Portainer](https://hub.docker.com/r/portainer/portainer-ce)
* [qBittorrent](https://docs.linuxserver.io/images/docker-qbittorrent)
* [Resilio Sync](https://docs.linuxserver.io/images/docker-resilio-sync)
* [Serge](https://github.com/nsarrazin/serge)

