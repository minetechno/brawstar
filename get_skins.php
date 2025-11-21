<?php
require_once 'includes/functions.php';

header('Content-Type: application/json');

if (isset($_GET['brawler_id'])) {
    $brawler_id = intval($_GET['brawler_id']);
    $skins = getSkinsByBrawler($brawler_id);
    echo json_encode($skins);
} else {
    echo json_encode([]);
}
?>
