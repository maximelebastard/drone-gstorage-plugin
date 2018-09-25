[ -z "$PLUGIN_SOURCE" ] && echo "Please set the \"source\" parameter" && exit 1;
[ -z "$PLUGIN_DEST" ] && echo "Please set the \"dest\" parameter" && exit 1;

sh /bin/plugin/auth.sh && \

set -o xtrace && \

gsutil cp -r ${PLUGIN_SOURCE} ${PLUGIN_DEST}