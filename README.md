## Description

This is the github repository of the **mod project** folder for my [Playable Aliens mod](https://steamcommunity.com/sharedfiles/filedetails/?id=2850604395). 
This will be the most up to date project folder from the mod, even before it's on steam.

## How to build the mod

### What you will need

- The Modbuddy SDK (Search in the steam's tool sections)
- Follow the wondeful [guide from the Xcom 2 modding subreddit](https://www.reddit.com/r/xcom2mods/wiki/firsttime#wiki_how_to_install_and_set_up_xcom_2_wotc_sdk)
- Start the SDK, go in file then "open mod project" (you will need to extract the project's folder).
- Then do your changes (DO NOT CHANGES the `XcomEditor.ini`, `XcomEngine.ini` and `XcomGame.ini` or the mod will throw in an errors. In general, don't change the content in the `.uc` file unless you know what you are doing)

### Mods used by this mod

#### Required mods (as of September 2022)

- [X2WOTCCommunityHighlander v1.24.0](https://steamcommunity.com/workshop/filedetails/?id=1134256495)
- [Alien Hunters Community Highlander [WOTC]](https://steamcommunity.com/sharedfiles/filedetails/?id=2534737016)
- [[WOTC] Community Promotion Screen](https://steamcommunity.com/workshop/filedetails/?id=2550561145)
- [[WOTC] Iridar's Template Master - Core](https://steamcommunity.com/sharedfiles/filedetails/?id=2363075446)
- [Ketaros 2D Package](https://steamcommunity.com/workshop/filedetails/?id=1557951815)
- [Mitzruti's Perk Pack](https://steamcommunity.com/sharedfiles/filedetails/?id=1561030099)
- [Mitzruti's Perk Pack - DLC Extension](https://steamcommunity.com/workshop/filedetails/?id=2066389408) 
- [Perk Pack - A Better Barracks (WOTC)](https://steamcommunity.com/workshop/filedetails/?id=1993868715)
- [[WOTC] Bstar's Perk Pack](https://steamcommunity.com/workshop/filedetails/?id=2115077818)
- [[WOTC] Extended Perk Pack](https://steamcommunity.com/workshop/filedetails/?id=1546482849) 
- [[WOTC] Shadow Ops Perk Pack](https://steamcommunity.com/workshop/filedetails/?id=1519841231)
- [[WOTC] More Psi Abilities](https://steamcommunity.com/workshop/filedetails/?id=1662114279)
- [[WOTC] Supercharge and Singe Abilities](https://steamcommunity.com/workshop/filedetails/?id=1745325917)
- [Mechatronic Warfare Perk Pack](https://steamcommunity.com/workshop/filedetails/?id=2329989067) - This can be replaced by "mechatronic warfare" overhaul mod, this is just because we use some particular perks for some Aliens
- [[WOTC] Repurpose Abilities](https://steamcommunity.com/workshop/filedetails/?id=1792964849) - Part of the framework to make certain abilities or future abilities work easier, if not installed, can cause weird stuff
- [Playable XCOM 2 Aliens - Viper Class Overhaul](https://steamcommunity.com/workshop/filedetails/?id=1869612587)
- [[WOTC] Alien Elite Pack](https://steamcommunity.com/workshop/filedetails/?id=1563023889) - We use perks from all 3 of these aliens. If you do NOT want these aliens added to your enemys encounters, you can install the "choose your aliens" mod, linked in the "recommended mods" section
- [[WOTC] Muton Centurion Standalone (Pre LW Alien Pack style)](https://steamcommunity.com/workshop/filedetails/?id=1972274071) - Same as above

The above are **hard requirements**, UNLESS they have a note specifying otherwise.

#### Optional and/or highy recommended mods

- [UFOpedia & Bestiary](https://steamcommunity.com/sharedfiles/filedetails/?id=2819129273) - The aliens don't have custom lore for now, but it's a very good mod to have regardless
- [[WOTC] Choose Your Aliens](https://steamcommunity.com/sharedfiles/filedetails/?id=1782917748) - A MCM (and config) based mod that allows you to completely disable a specific alien from appearing in your game. As we use quite a lot of custom alien added abilities, this is a perfect want to make our mod function properly without actually having the enemy alien unit show up in your campaigns. If for whatever reason, you dislike certain enemy units appearing etc.
- [[WOTC] Iridar's Five Tier Weapon Overhaul - Vanilla Balance](https://steamcommunity.com/sharedfiles/filedetails/?id=2406120902) - In short...the original mod was setup for 5 tiers using LWOTC setup. Innately, we have the mod setup for vanilla and ALSO to use this mod.
- [[WotC] UI - Colored Weapon Tiers](https://steamcommunity.com/sharedfiles/filedetails/?id=1949328656) - Gives all weapons tiers from CV - BEAM suitable colours like a RPG loot game, it's a great way to instantly see what's a more powerful version of a weapon/item/armour amidst 100s of modded items you may have. The config we use/have bundled has a lot of things setup already, so use our config if you want built in support. If you want to change the colours of items, use a hex colour code website and or look at the config for help

## FAQ

### Why not post the "ready to use" version of the mod ?
Because it allows you to change the source code and compile the mod as you see fit. If enough people ask, We will release the proper mod to github as well.

### Can I do pull requests ?
**YES**, you can, you can open issues, pull request, discussions...

### Can I fork it ?
Yes you can, just credit the original author (Kiruka), Krakenous and me.

## Plan for the future

We plan to cover most aliens with this mod, via the use of plugins, but if you want to make plugin for this mod, please respect some "rules" : 

- Try to use the same modpreview.jpg image, with some text either at the top / botton to distinguish it from the others mod (kinda like Proficiency does it).
- Use Template Master if you want, as that would make thing really easy to modify / add mod support.
- Try to make CI compatible with your mod without a bridge, it's just 2 .ini file, examples can be found in this mod's config (XcomInfiltration.ini and XcomStrategyTuning.ini)
- If you want to, you can add support for 5TWO, as that would make your addons be more in line with our mods (that's why Template Master is encouraged, it make that process really easy)
