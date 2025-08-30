-- Funnel step counts
SELECT event_name, COUNT(DISTINCT user_id) AS users
FROM events
WHERE event_name IN ('signup_started','signup_completed','first_song_played','song_added_playlist','upgraded_premium')
GROUP BY event_name
ORDER BY users DESC;
