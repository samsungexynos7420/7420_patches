#!/bin/bash

cd packages/apps/Nfc
echo "Applying patches to Packages/apps/Nfc..."
git am --signoff < ~/7420_patches-lineage-18.1/packages_apps_Nfc/Add_sysprop_to_prevent_FW_download.patch
cd ../../../


echo "\n Applying batteryextender-eleven patches..."

cd device/lineage/sepolicy
echo "Applying patches to device/lineage/sepolicy..."
git am --signoff < ~/7420_patches-lineage-18.1/batteryextender-eleven/device_lineage_sepolicy/add-hal_lineage_batterylifeextender.patch
cd ../../../

cd device/samsung_slsi/sepolicy
echo "Applying patches to device/samsung_slsi/sepolicy..."
git am --signoff < ~/7420_patches-lineage-18.1/batteryextender-eleven/device_samsung_slsi_sepolicy/add-hal_lineage_batterylifeextender.patch
cd ../../../

cd hardware/lineage/interfaces
echo "Applying patches to hardware/lineage/interfaces..."
git am --signoff < ~/7420_patches-lineage-18.1/batteryextender-eleven/hardware_lineage_interfaces/add-batterylifeextender-HAL.patch
cd ../../../

cd hardware/samsung
echo "Applying patches to hardware/samsung..."
git am --signoff < ~/7420_patches-lineage-18.1/batteryextender-eleven/hardware_samsung/add-batterylifeextender-implementation.patch
cd ../../

cd packages/apps/Settings
echo "Applying patches to packages/apps/Settings..."
git am --signoff < ~/7420_patches-lineage-18.1/batteryextender-eleven/packages_apps_Settings/add-Protect-battery-toggle.patch
cd ../../../

echo "\n End of batteryextender-eleven patches."
