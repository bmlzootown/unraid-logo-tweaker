<?php
// Variables for convenience
$name = "unraid-logo-tweaker";
$pluginDir = "/boot/config/plugins/" . $name;
$logo_url = $_POST["logo_url"];
$logo_img = $_POST["logo_img"];
$logo_css = $_POST["logo_css"];

//Open and write to configuration file
$cfg = fopen($pluginDir . "/" . $name . ".cfg", "w") or die("Configuration file not found. Please reinstall the plugin to create another.");
$cfg_content = 'logo_url="' . $logo_url . '"' . PHP_EOL . 'logo_img="' . $logo_img . '"' . PHP_EOL . 'logo_css="' . $logo_css . '"';
fwrite($cfg, $cfg_content);
fclose($cfg);
?>
