#!/bin/bash

echo 'set main-view   = line-number:yes,interval=1 id:yes date:no author:full commit-title:yes,graph,refs,overflow=no' > $HOME/.tigrc

# copy commit hash to clipboard with y
echo 'bind generic y !@sh -c "echo -n %(commit) | xclip -selection c"' >> $HOME/.tigrc
