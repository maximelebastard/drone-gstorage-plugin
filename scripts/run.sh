#! /bin/bash

[ -z "$PLUGIN_SOURCE" ] && echo "Please set the \"source\" parameter" && exit 1;
[ -z "$PLUGIN_DEST" ] && echo "Please set the \"dest\" parameter" && exit 1;

sh /bin/plugin/auth.sh && \

set -o xtrace && \

if [ "$PLUGIN_CLEANDEST" = true ] ; then
  if [[ $PLUGIN_DEST = 'gs://'* ]] ; then
    gsutil rm -r ${PLUGIN_DEST}
  fi

  if [[ ! $PLUGIN_DEST = 'gs://'* ]] ; then
    rm -rf ${PLUGIN_DEST}
  fi
fi && \

gsutil cp -r ${PLUGIN_SOURCE} ${PLUGIN_DEST}