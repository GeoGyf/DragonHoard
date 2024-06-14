// Tome of Gem Utilities
// ----------------------

// Function to enchant a gem with magical properties
function enchantGem(gem) {
    /**
     * Enchant the given gem with magical properties.
     *
     * @param {string} gem - The name of the gem to enchant.
     * @returns {string} A mystical incantation confirming the gem's enchantment.
     */
    return `The ${gem} glows with ancient magic, radiating mystical energies.`;
}

// Function to transmute gems into ASCII treasures
function transmuteToAscii(gems) {
    /**
     * Transmute the provided gems into ASCII art treasures.
     *
     * @param {Array<string>} gems - List of gems to transmute.
     * @returns {string} ASCII representation of the transformed treasures.
     */
    return gems.map(gem => {
        return `
         ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
        @@/   &@@(  &@@@@@@  @@@@@@@  @@@   @@#  @@@@@@/  @@@@@@@  @@@@    @@@@  @@@
        @@@@/@@@@@  @@@  @@@  @@  @@@  @@@*  @@@  @@      @@  @@@  @@@@    @@@@  @@@
        @@@@@@@@@@  @@@  @@@  @@  @@@  @@@@  @@@  @@/@@@@  @@@  @@@  @@@  &@@@   @@@
        @@@+  &@@@  @@@@@@/  @@@@@@@  @@@@  @@@  @@@@@@&  @@@  @@@   @@@@@@@   @@@
        @@@@  @@@@  @@@ @@@  @@  @@@  @@@@@  @@@  @@  @@@  @@@  @@@    @@@@@    @@@
         @@@@&@@@,  @@@ @@@  @@  @@@  @@@@@@ @@  @@@  @@@  @@@@@@@     @@@     @@@
           @@@@.    @@#  @@  @@  @@@  @@ @@&@@  @@@  @@@  @@ @@@@     /@@@     @@@
        &*@@@@@@     @@@@@   @@@@@@   @@  @@@  @@@@@@&  @@@  @@@     @@@(     @@@
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''`
    }).join('');
}

// End of Tome
// -----------
