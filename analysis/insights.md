# Insights & Hypotheses – Funnel Analysis Case Study  

## Goal  
Go beyond raw SQL numbers → use product analytics frameworks (MAT, AARRR, HEART) to hypothesize *why* users drop at each funnel stage, and suggest actionable experiments.  

---

## Funnel Overview
**Steps (unique users from `funnel_events_v2.csv`):**  
- Signup Started → 2,000  
- Signup Completed → 1,336  
- First Song Played → 933  
- Playlist Added → 337  
- Premium Upgrade → 128  

**Key Findings:**  
- **Signup → First Play (30% drop)** → small leak  
- **First Play → Playlist (64% drop)** → **major leak**  
- **Playlist → Premium (62% drop)** → expected leak, but important  

---

## Hypotheses by Funnel Step  

### 1. Signup → First Play (minor leak)  
- **Motivation:** Some users sign up casually (ads, referrals) without strong intent.  
- **Ability:** Users may not know where to start listening.  
- **Trigger:** No onboarding nudge to play their first song.  

 *Hypothesis:* If we improve onboarding after signup (auto-play or tutorial), more users will reach first play.  

---

### 2. First Play → Playlist (major leak)  
This is the **largest drop-off** and the most critical retention driver.  

- **Motivation:** Casual listeners don’t see value in playlists.  
- **Ability:** Playlist button is hidden/confusing (vs. "Like" button).  
- **Trigger:** No prompt after first play (“Save this song to your playlist?”).  
- **UX (HEART):** Low task success, engagement weak.  
- **Growth (AARRR):** This is the **Retention stage** — without playlists, users churn faster.  

 *Hypotheses:*  
1. If we make the playlist button more visible, playlist adds will increase.  
2. If we nudge users after first play, playlist adoption will rise.  
3. If we explain playlist benefits, motivation to save songs improves.  

---

### 3. Playlist → Premium (expected leak)  
- **Motivation:** Not all playlist users are ready to pay.  
- **Ability:** Premium upsell not clearly tied to playlists.  
- **Trigger:** Weak prompts connecting playlists to Premium benefits.  

 *Hypothesis:* If Premium upsells highlight playlist perks (e.g., “Download offline”), conversion improves.  

---

##  Segmentation Insights  
- **By Device:** Desktop users retain better (5.38% D7 vs. 2.75% mobile).  
- **By Channel:** Organic retains best (4.27%), referral & partner lowest (~2%).  

---

##  Retention Analysis  
- **Overall D7 Retention:** ~10%  
- Playlist users retain better than non-playlist users → proves playlists drive stickiness.  

---

## Recommendations  
1. **Fix Playlist Leak:** prominent playlist CTA, nudges after first play.  
2. **Improve Mobile Onboarding:** make flows simpler, add tutorials.  
3. **Boost Referral/Partner Retention:** highlight product value early.  
4. **Leverage Organic/Desktop:** invest more in channels that drive high-ROI users.  
5. **Experimentation:** A/B test playlist button, onboarding nudges, and Premium tie-ins.  
