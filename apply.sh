#!/bin/bash

cd packages/apps/Nfc
echo "Applying patches to Packages/apps/Nfc..."
git am --signoff < ~/7420_patches-lineage-18.1/packages_apps_Nfc/Add_sysprop_to_prevent_FW_download.patch
cd ../../../
