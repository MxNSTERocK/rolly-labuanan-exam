<?php

$channelId = 'UC_x5XG1OV2P6uZZ5FSM9Ttw';

$pdo = new PDO('mysql:host=localhost;dbname=youtube_db', 'root', '');

$stmt = $pdo->prepare("SELECT * FROM youtube_channels WHERE channel_id = ?");
$stmt->execute([$channelId]);
$channel = $stmt->fetch(PDO::FETCH_ASSOC);

$stmt = $pdo->prepare("SELECT * FROM youtube_channel_videos WHERE channel_id = ? ORDER BY id DESC LIMIT 100");
$stmt->execute([$channelId]);
$videos = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Combine data
$data = [
    'channel' => $channel,
    'videos' => $videos
];

// Output JSON
header('Content-Type: application/json');
echo json_encode($data);

?>