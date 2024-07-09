<?php

$apiKey = 'AIzaSyCdrOiB861HQ-wRihe8qbprchTI0FBCv_Q';
$channelId = 'UC_x5XG1OV2P6uZZ5FSM9Ttw';

// Database connection
try {
    $pdo = new PDO('mysql:host=localhost;dbname=youtube_db', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

$channelUrl = "https://www.googleapis.com/youtube/v3/channels?part=snippet&id=$channelId&key=$apiKey";
$channelResponse = file_get_contents($channelUrl);

if ($channelResponse === false) {
    die('Error: Failed to fetch channel info. Check your API key and network connection.');
}

$channelData = json_decode($channelResponse, true);

if (isset($channelData['error'])) {
    die('Error: ' . $channelData['error']['message']);
}

if (!isset($channelData['items']) || empty($channelData['items'])) {
    die('Error: No channel found with the given ID or API response is invalid.');
}

$channel = $channelData['items'][0]['snippet'];
$channelProfilePicture = $channel['thumbnails']['default']['url'] ?? null;
$channelName = $channel['title'] ?? null;
$channelDescription = $channel['description'] ?? null;

if (is_null($channelName)) {
    die('Error: Channel name is missing.');
}

try {
    $stmt = $pdo->prepare("INSERT INTO youtube_channels (channel_id, name, description, profile_picture) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE name = VALUES(name), description = VALUES(description), profile_picture = VALUES(profile_picture)");
    $stmt->execute([$channelId, $channelName, $channelDescription, $channelProfilePicture]);
} catch (PDOException $e) {
    die("Database operation failed: " . $e->getMessage());
}

$videosUrl = "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=$channelId&maxResults=100&order=date&type=video&key=$apiKey";
$videosResponse = file_get_contents($videosUrl);

if ($videosResponse === false) {
    die('Error: Failed to fetch videos. Check your API key and network connection.');
}

$videosData = json_decode($videosResponse, true);

if (isset($videosData['error'])) {
    die('Error: ' . $videosData['error']['message']);
}

$videos = $videosData['items'] ?? [];

foreach ($videos as $video) {
    $videoId = $video['id']['videoId'] ?? null;
    $title = $video['snippet']['title'] ?? null;
    $description = $video['snippet']['description'] ?? null;
    $thumbnail = $video['snippet']['thumbnails']['default']['url'] ?? null;
    $videoLink = $videoId ? "https://www.youtube.com/watch?v=$videoId" : null;

    if (!$videoId || !$title || !$description || !$thumbnail || !$videoLink) {
        continue;
    }

    try {
        $stmt = $pdo->prepare("INSERT INTO youtube_channel_videos (channel_id, video_id, title, description, thumbnail, video_link) VALUES (?, ?, ?, ?, ?, ?) ON DUPLICATE KEY UPDATE title = VALUES(title), description = VALUES(description), thumbnail = VALUES(thumbnail), video_link = VALUES(video_link)");
        $stmt->execute([$channelId, $videoId, $title, $description, $thumbnail, $videoLink]);
    } catch (PDOException $e) {
        echo "Failed to insert video $videoId: " . $e->getMessage() . "\n";
        continue;
    }
}

echo "Sync complete.";
?>
?>