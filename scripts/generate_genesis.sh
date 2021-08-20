DIR=`dirname "$0"`

rm -rf ~/.bc

# initial new node
bcd init validator --chain-id consumer
echo "lock nasty suffer dirt dream fine fall deal curtain plate husband sound tower mom crew crawl guard rack snake before fragile course bacon range" \
    | bcd keys add validator --recover --keyring-backend test
echo "smile stem oven genius cave resource better lunar nasty moon company ridge brass rather supply used horn three panic put venue analyst leader comic" \
    | bcd keys add requester --recover --keyring-backend test


# add accounts to genesis
bcd add-genesis-account validator 10000000000000stake --keyring-backend test
bcd add-genesis-account requester 10000000000000stake --keyring-backend test


# register initial validators
bcd gentx validator 100000000stake \
    --chain-id consumer \
    --keyring-backend test

# collect genesis transactions
bcd collect-gentxs


