#!/bin/bash

cd packages/modules/NetworkStack
echo "Applying patches to NetworkStack"
git am --signoff < ~/7420_patches-lineage-20.0/packages_modules_NetworkStack/0001-Revert-Enable-parsing-netlink-events-from-kernel-sin.patch
cd ../../../
cd system/security
echo "Applying patches to security"
git am --signoff < ~/7420_patches-lineage-20.0/system_security/0001-keystore-hackup.patch
cd ../../
cd frameworks/base
echo "Applying patches to frameworks/base"
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_base/0001-Revert-fp-always-on-changes.patch
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_base/0002-hwui-reset-to-android-13.0.0_r13.patch
cd ../../
cd packages/apps/Nfc
echo "Applying patches to Packages/apps/Nfc..."
git am --signoff < ~/7420_patches-lineage-20.0/packages_apps_Nfc/Add_sysprop_to_prevent_FW_download.patch
cd ../../../
