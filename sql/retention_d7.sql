-- Users who returned within 7 days

-- First play timestamp per user
CREATE TEMP VIEW fp AS
SELECT user_id, MIN(event_time) AS first_play_time
FROM events
WHERE event_name='first_song_played'
GROUP BY user_id;

-- Returned within 7 days
CREATE TEMP VIEW returned_d7 AS
SELECT DISTINCT f.user_id
FROM fp f
JOIN events e
  ON e.user_id=f.user_id
 AND julianday(e.event_time) - julianday(f.first_play_time) BETWEEN 1 AND 7;

-- Retention summary
SELECT COUNT(*) AS total_first_players,
       (SELECT COUNT(*) FROM returned_d7) AS retained_d7,
       ROUND(100.0 * (SELECT COUNT(*) FROM returned_d7) / COUNT(*), 2) AS retained_d7_pct
FROM fp;
