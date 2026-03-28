#!/bin/bash

cd frameworks/base
git am --signoff < ~/7420_patches-lineage-19.1/frameworks_base/0002-Some-services-should-just-stfu.patch
git am --signoff < ~/7420_patches-lineage-19.1/frameworks_base/0003-Stop-davey-messages-when-using-latch_unsignalled.patch
cd ../../
cd hardware/libhardware
git am --signoff < ~/7420_patches-lineage-19.1/hardware_libhardware/0001-keystore-hackup.patch
cd ../../
cd system/bt
git am --signoff < ~/7420_patches-lineage-19.1/system_bt/0001-Revert-Bluetooth-HFP-Use-WBS-by-default-1-5.patch
cd ../../
cd system/security
git am --signoff < ~/7420_patches-lineage-19.1/system_security/0001-keystore-hackup.patch
cd ../../
cd packages/apps/Nfc
echo "Applying patches to Packages/apps/Nfc..."
git am --signoff < ~/7420_patches-lineage-19.1/packages_apps_Nfc/Add_sysprop_to_prevent_FW_download.patch
cd ../../../