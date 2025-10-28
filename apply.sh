#!/bin/bash

cd frameworks/base
git am --signoff < ~/7420_patches-lineage-19.1/frameworks_base/0002-Some-services-should-just-stfu.patch
git am --signoff < ~/7420_patches-lineage-19.1/frameworks_base/0003-Stop-davey-messages-when-using-latch_unsignalled.patch
cd ../../
cd frameworks/native
git am --signoff < ~/7420_patches-lineage-19.1/frameworks_native/0001-Add-back-pre-S-createEventQueue-function.patch
cd ../../
cd hardware/libhardware
git am --signoff < ~/7420_patches-lineage-19.1/hardware_libhardware/0001-keystore-hackup.patch
cd ../../
cd packages/modules/adb
git am --signoff < ~/7420_patches-lineage-19.1/packages_modules_adb/0001-adb-Bring-back-support-for-legacy-FunctionFS.patch
cd ../../../
cd system/bt
git am --signoff < ~/7420_patches-lineage-19.1/system_bt/0001-Revert-Bluetooth-HFP-Use-WBS-by-default-1-5.patch
cd ../../
cd system/security
git am --signoff < ~/7420_patches-lineage-19.1/system_security/0001-keystore-hackup.patch
cd ../../
