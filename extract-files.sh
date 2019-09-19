set -e

# Required!
export DEVICE=ef52l
export DEVICE_COMMON=iron-common
export VENDOR=pantech

export DEVICE_BRINGUP_YEAR=2013

GOODIX="$LINEAGE_ROOT"/vendor/"$VENDOR"/"$DEVICE"/proprietary/vendor/lib64/libgf_ca.so
sed -i "s|/system/etc/firmware|/vendor/firmware\x0\x0\x0\x0|g" $GOODIX

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
