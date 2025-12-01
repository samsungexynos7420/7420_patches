#!/bin/bash

cd packages/modules/NetworkStack
echo "Applying patches to NetworkStack"
git am --signoff < ~/7420_patches-lineage-20.0/packages_modules_NetworkStack/0001-Revert-Enable-parsing-netlink-events-from-kernel-sin.patch
cd ../../../
cd system/security
echo "Applying patches to security"
git am --signoff < ~/7420_patches-lineage-20.0/system_security/0001-keystore-hackup.patch
cd ../../
cd frameworks/native
echo "Applying patches to frameworks/native"
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_native/0001-Disable-gpu-service.patch
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_native/0001-Revert-Remove-obsolete-debug-option.patch
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_native/0002-Add-back-pre-S-createEventQueue-function.patch
cd ../../
cd frameworks/base
echo "Applying patches to frameworks/base"
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_base/0001-Revert-fp-always-on-changes.patch
cd ../../
