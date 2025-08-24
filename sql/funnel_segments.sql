-- Playlist conversion by device
SELECT device,
       COUNT(DISTINCT CASE WHEN event_name='first_song_played' THEN user_id END) AS users_played,
       COUNT(DISTINCT CASE WHEN event_name='song_added_playlist' THEN user_id END) AS users_playlist,
       ROUND(100.0 * COUNT(DISTINCT CASE WHEN event_name='song_added_playlist' THEN user_id END) /
             COUNT(DISTINCT CASE WHEN event_name='first_song_played' THEN user_id END), 2) AS conv_pct
FROM events
GROUP BY device;

-- Playlist conversion by channel
SELECT channel,
       COUNT(DISTINCT CASE WHEN event_name='first_song_played' THEN user_id END) AS users_played,
       COUNT(DISTINCT CASE WHEN event_name='song_added_playlist' THEN user_id END) AS users_playlist,
       ROUND(100.0 * COUNT(DISTINCT CASE WHEN event_name='song_added_playlist' THEN user_id END) /
             COUNT(DISTINCT CASE WHEN event_name='first_song_played' THEN user_id END), 2) AS conv_pct
FROM events
GROUP BY channel;
