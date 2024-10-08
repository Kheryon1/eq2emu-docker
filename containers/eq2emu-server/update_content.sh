cd /eq2emu/eq2emu-content
content_update=$(git pull)
if [[ $content_update != *"Already up to date."* ]]; then
  cp -rf ItemScripts Quests RegionScripts SpawnScripts Spells ZoneScripts /eq2emu/eq2emu/server/
  sudo chmod -R 777 ItemScripts Quests RegionScripts SpawnScripts Spells ZoneScripts # allows eq2emu-editor container to write files
fi
cd /eq2emu/eq2emu-maps
maps_update=$(git pull)
if [[ $maps_update != *"Already up to date."* ]]; then
  cp -rf Maps Regions /eq2emu/eq2emu/server/
fi