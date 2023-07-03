local Translations = {
    error = {
        already_looted = 'crate already looted!',
        no_item = 'you don\'t have that item',
    },
    success = {
        lootcrate_reset = 'loot crates reset',
    },
    primary = {
        primary_var = 'Example Text',
    },
    menu = {
        check = 'Check ',
        open_lootbag = 'Opening Loot Bag',
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
