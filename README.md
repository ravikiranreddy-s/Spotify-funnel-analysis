# Spotify Funnel Analysis (SQL + Product Analytics Case Study)

## Goal
Simulate a real-world **product analytics project** using SQL and structured thinking:
- Analyze funnels to identify leaks
- Apply frameworks (MAT, AARRR, HEART) to hypothesize *why* drop-offs occur
- Segment users by device & channel
- Measure retention (D1 and D7)
- Provide actionable product recommendations

---

## Funnel Analysis

**Steps (unique users from `funnel_events_v2.csv`):**
- Signup Started → 2,000  
- Signup Completed → 1,336  
- First Song Played → 933  
- Playlist Added → 337  
- Premium Upgrade → 128  

**Step Drop-offs:**
- Signup → Completed: **33.2% lost**  
- Completed → First Song: **30.1% lost**  
- First Song → Playlist: **63.9% lost** ← **major leak**  
- Playlist → Premium: **62.0% lost**  

**Overall Conversion:** 6.4% of signups upgraded to Premium.

---

## Hypotheses (by Funnel Step)

### Signup → First Play
- Motivation: Casual signups (ads/referrals) lack intent.  
- Ability: Users may not know how to start listening.  
- Trigger: Weak onboarding nudges.  
   *Hypothesis:* If onboarding guides users to play their first song, engagement will increase.  

### First Play → Playlist (major leak)
- Motivation: Casual listeners don’t feel value in curating.  
- Ability: Playlist button hidden/confusing.  
- Trigger: No prompt after first play.  
  *Hypothesis:* If we make playlists more visible and nudge users, playlist creation will increase.  

### Playlist → Premium
- Motivation: Not all playlist users are ready to pay.  
- Ability: Premium upsell not tied to playlists.  
- Trigger: Weak prompts highlighting playlist benefits.  
   *Hypothesis:* If Premium upsells emphasize playlist perks (offline access), upgrades will improve.  

---

## Segmentation Insights

**By Device (D7 retention):**
- Desktop: 5.38%  
- Mobile: 2.75%  

**By Channel (D7 retention):**
- Organic: 4.27%  
- Ads: 3.23%  
- Referral: 2.20%  
- Partner: 2.04%  

---

## Retention

- Overall **D7 retention:** ~10%  
- Playlist creators retain better than non-creators → proves playlists are a retention driver.  

---

## Recommendations

1. **Fix Playlist Leak (highest priority):**  
   - Make playlist CTA more visible  
   - Add nudges after first play  
   - Provide onboarding tutorial  

2. **Target Weak Cohorts:**  
   - Mobile: Simplify flows, add guided first play  
   - Referral/Partner: Clarify value in onboarding  

3. **Double Down on Strong Cohorts:**  
   - Invest more in Organic & Desktop acquisition (highest ROI)  

4. **Experimentation:**  
   - A/B test playlist CTA designs  
   - Test nudges after first play  
   - Measure impact on playlist adds → D7 retention → Premium upgrades  


---

## Key Takeaway
Playlist creation is the **biggest retention lever**. Improving the First Play → Playlist step can significantly lift user stickiness and downstream Premium conversions.



