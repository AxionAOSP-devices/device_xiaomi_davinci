echo 'Starting to clone stuffs needed to build for Davinci'

# Common Tree
git clone --depth=1 https://github.com/AxionAOSP-devices/device_xiaomi_sm6150-common.git device/xiaomi/sm6150-common 

# Davinci Vendor
git clone --depth=1 https://github.com/HorizonV2/vendor_xiaomi_davinci.git vendor/xiaomi/davinci

# Common Vendor
git clone --depth=1 https://github.com/HorizonV2/vendor_xiaomi_sm6150-common.git vendor/xiaomi/sm6150-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1  https://github.com/HorizonV2/kernel_xiaomi_sm6150.git kernel/xiaomi/sm6150

# Camera
echo 'Cloning Leica camera'
git clone --depth=1 https://gitlab.com/ItzDFPlayer/vendor_xiaomi_miuicamera.git -b leica-5.0-davinci vendor/xiaomi/miuicamera

# Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi && git clone --depth=1 https://github.com/HorizonV2/android_hardware_xiaomi.git hardware/xiaomi

echo 'delete vendorsetup.sh from device tree once this is done'
