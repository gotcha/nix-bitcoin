set -e
set -o pipefail

BITCOIND_ONION="$(cat /var/lib/tor/onion/bitcoind/hostname)"
CLIGHTNING_NODEID=$(sudo -u clightning lightning-cli --lightning-dir=/var/lib/clightning getinfo | jq -r '.id')
CLIGHTNING_ONION="$(cat /var/lib/tor/onion/clightning/hostname)"
CLIGHTNING_ID="$CLIGHTNING_NODEID@$CLIGHTNING_ONION:9735"

echo BITCOIND_ONION="$BITCOIND_ONION"
echo CLIGHTNING_NODEID="$CLIGHTNING_NODEID"
echo CLIGHTNING_ONION="$CLIGHTNING_ONION"
echo CLIGHTNING_ID="$CLIGHTNING_ID"