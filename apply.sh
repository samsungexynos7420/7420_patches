#!/bin/bash

cd art
echo "Applying patches to art..."
git am --signoff < ~/7420_patches-lineage-18.1/android_art/0001-Ignore-checking-for-cache-segfaults-based-on-kernel-.patch
cd ../
cd packages/apps/Nfc
echo "Applying patches to Packages/apps/Nfc..."
git am --signoff < ~/7420_patches-lineage-18.1/packages_apps_Nfc/Add_sysprop_to_prevent_FW_download.patch
cd ../../../
