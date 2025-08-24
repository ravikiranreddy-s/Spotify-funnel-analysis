-- Funnel step counts
SELECT 'signup_started' AS step, COUNT(DISTINCT user_id) AS users
FROM events WHERE event_name = 'signup_started'
UNION ALL
SELECT 'signup_completed', COUNT(DISTINCT user_id) FROM events WHERE event_name = 'signup_completed'
UNION ALL
SELECT 'first_song_played', COUNT(DISTINCT user_id) FROM events WHERE event_name = 'first_song_played'
UNION ALL
SELECT 'song_added_playlist', COUNT(DISTINCT user_id) FROM events WHERE event_name = 'song_added_playlist'
UNION ALL
SELECT 'upgraded_premium', COUNT(DISTINCT user_id) FROM events WHERE event_name = 'upgraded_premium';
