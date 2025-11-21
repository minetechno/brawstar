<?php
require_once 'config.php';

// Buscar todos os Brawlers
function getAllBrawlers() {
    $conn = getConnection();
    $sql = "SELECT * FROM brawlers ORDER BY name ASC";
    $result = $conn->query($sql);

    $brawlers = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $brawlers[] = $row;
        }
    }

    $conn->close();
    return $brawlers;
}

// Buscar skins de um Brawler
function getSkinsByBrawler($brawler_id) {
    $conn = getConnection();
    $sql = "SELECT * FROM skins WHERE brawler_id = ? ORDER BY name ASC";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $brawler_id);
    $stmt->execute();
    $result = $stmt->get_result();

    $skins = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $skins[] = $row;
        }
    }

    $stmt->close();
    $conn->close();
    return $skins;
}

// Buscar todos os ícones
function getAllIcons() {
    $conn = getConnection();
    $sql = "SELECT * FROM icons ORDER BY category ASC, name ASC";
    $result = $conn->query($sql);

    $icons = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $icons[] = $row;
        }
    }

    $conn->close();
    return $icons;
}

// Buscar ícones por categoria
function getIconsByCategory($category) {
    $conn = getConnection();
    $sql = "SELECT * FROM icons WHERE category = ? ORDER BY name ASC";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $category);
    $stmt->execute();
    $result = $stmt->get_result();

    $icons = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $icons[] = $row;
        }
    }

    $stmt->close();
    $conn->close();
    return $icons;
}
?>
