# XPS 13 9300

# Details

| OpenCore Version | 0.8.9 |
| --- | --- |
| macOS Version | 11.6.5 (Big Sur) |
| SMSBios | MacBookAir9,1 |

# Hardware Specifications

| Hardware | Specification | Status |
| --- | --- | --- |
| CPU | Intel Core i7-1065G7 | ✅ Working |
| GPU | Intel Iris Plus Graphics | ✅ Working |
| Chipset | Intel 495 | ✅ Working |
| RAM | DDR4x 16GB - Onboard  | ✅ Working |
| Audio | Realtek ALC3281-CG | ✅ Working |
| WiFi | Killer AX1650s | ✅ Working |
| Bluetooth | - | ✅ Working |
| LAN | Intel i219-LM | ✅ Working |
| SSD | WD SN730 | ✅ Working |
| Keyboard | - | ✅ Working |
| Trackpad | I2C Connection | ✅ Working |
| Webcam | - | ✅ Working |
| MicroSD Card | - | ✅ Working |
| Fingerprint Sensor | Goodfix | ❌ Not Working |
| Display | 1920 x 1200 FHD LCD | ✅ Working |

# Using EFI

> It is suggested that a different SMSBios is used instead. Please also ensure that you have [setup your bootable drive](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/)
> 

Follow these instructions to change SMSBios:

1. Download [ProperTree](https://github.com/corpnewt/ProperTree/archive/refs/heads/master.zip) and [GenSMSBIOS](https://github.com/corpnewt/GenSMBIOS/archive/refs/heads/master.zip)
2. Open the `config.plist` with ProperTree and use GenSMSBIOS to generate a the SMSBIOS data 
    - Pick option 1 for downloading MacSerial and option 3 and enter `MacBookAir9,1`.
        
        You should get an output similar to the following:
        
        ```bash
        Type:         MacBookAir9,1
        Serial:       CXXXXXXXXXXX
        Board Serial: CXXXXXXXXXXXXXXXX
        SmUUID:       XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
        ```
        
    - In the `config.plist`, map the above output to the following values
        
        The `Type` part gets copied to Generic → SystemProductName.
        
        The `Serial` part gets copied to Generic → SystemSerialNumber.
        
        The `Board Serial` part gets copied to Generic → MLB.
        
        The `SmUUID` part gets copied to Generic → SystemUUID.
        
    - Save the file
3. Boot with the necessary [BIOS settings](#BIOS-Settings)

# BIOS Settings

| SATA Operation | ACHI |
| --- | --- |
| Enable Mediacard | Enabled |
| Fast Boot | Thorough |
| Secure Boot | Disabled |
| TMP 2.0 Security | Disabled* |
| Intel SGX | Disabled |
| VT for Direct I/O | Disabled |
| Fingerprint Reader | Disabled* |

*- Enabled for me and machine functions properly

# Known Issues

- Thunderbolt hot plugging does not work
- ~~On first boot, screen is about 60% normal brightness.~~ (Fixed with latest Whatevergreen driver)