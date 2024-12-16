#!/bin/bash

cd packages/modules/Connectivity
echo "Applying patches to packages/modules/Connectivity"
git am --signoff < ~/7420_patches-lineage-20.0/packages_modules_Connectivity/0004-Bring-back-traffic-indicators-for-legacy-devices.patch
cd ../
cd NetworkStack
echo "Applying patches to NetworkStack"
git am --signoff < ~/7420_patches-lineage-20.0/packages_modules_NetworkStack/0001-Revert-Enable-parsing-netlink-events-from-kernel-sin.patch
cd ../
cd adb
echo "Applying patches to adb"
git am --signoff < ~/7420_patches-lineage-20.0/packages_modules_adb/0001-adb-Bring-back-support-for-legacy-FunctionFS.patch
cd ../../../
cd security
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
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_base/0001-Revert-CachedAppOptimizer-use-new-cgroup-api-for-fre.patch
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_base/0002-Revert-CachedAppOptimizer-remove-native-freezer-enab.patch
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_base/0003-Revert-CachedAppOptimizer-don-t-hardcode-freezer-pat.patch
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_base/0004-CachedAppOptimizer-revert-freezer-to-cgroups-v1.patch
cd ../../
cd art
echo "Applying patches to art"
git am --signoff < ~/7420_patches-lineage-20.0/android_art/0001-art-Conditionally-remove-version-check-for-memfd_cre.patch
git am --signoff < ~/7420_patches-lineage-20.0/android_art/0002-Cache-operations-dont-segfault-on-our-kernel.patch
cd ../
cd external/perfetto
echo "Applying patches to external/perfetto"
git am --signoff < ~/7420_patches-lineage-20.0/external_perfetto/0001-perfetto-Conditionally-remove-version-check-for-memf.patch
cd ../../
cd system/core
echo "Applying patches to system/core"
git am --signoff < ~/7420_patches-lineage-20.0/system_core/0001-Fix-support-for-devices-without-cgroupv2-support.patch
git am --signoff < ~/7420_patches-lineage-20.0/system_core/0002-Revert-libprocessgroup-switch-freezer-to-cgroup-v2.patch
cd ../../
cd hardware/lineage/interfaces
echo "Applying patches to hardware/lineage/interfaces"
git am --signoff < ~/7420_patches-lineage-20.0/hardware_lineage_interfaces/0001-wifi-1.0-legacy-Add-provision-to-create-remove-dynam.patch
git am --signoff < ~/7420_patches-lineage-20.0/hardware_lineage_interfaces/0002-wifi-fix-legacy-HIDL-for-T.patch
git am --signoff < ~/7420_patches-lineage-20.0/hardware_lineage_interfaces/0003-wifi-hidl_struct_util.cpp-convertLegacyWifiChannelWi.patch
git am --signoff < ~/7420_patches-lineage-20.0/hardware_lineage_interfaces/0004-wifi-wifi.h-fix-build-undef-NAN.patch
cd ../../../
cd vendor/lineage
echo "Applying patches to vendor/lineage"
git am --signoff < ~/7420_patches-lineage-20.0/vendor_lineage/0001-Forcibly-disable-secure-adb-in-all-circumstances.patch
git am --signoff < ~/7420_patches-lineage-20.0/vendor_lineage/0002-Add-back-TARGET_HAS_MEMFD_BACKPORT.patch
cd ../../

