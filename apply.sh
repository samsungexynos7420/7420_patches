#!/bin/bash

cd system/security
echo "Applying patches to security"
git am --signoff < ~/7420_patches-lineage-20.0/system_security/0001-keystore-hackup.patch
cd ../../
cd frameworks/base
echo "Applying patches to frameworks/base"
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_base/0001-Revert-fp-always-on-changes.patch
git am --signoff < ~/7420_patches-lineage-20.0/frameworks_base/0002-hwui-reset-to-android-13.0.0_r13.patch
cd ../../
