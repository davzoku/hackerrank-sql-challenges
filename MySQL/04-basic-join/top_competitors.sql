SELECT HACKERS.HACKER_ID, HACKERS.NAME
FROM HACKERS
JOIN SUBMISSIONS
ON HACKERS.HACKER_ID = SUBMISSIONS.HACKER_ID
JOIN CHALLENGES
ON SUBMISSIONS.CHALLENGE_ID = CHALLENGES.CHALLENGE_ID
JOIN DIFFICULTY
ON CHALLENGES.DIFFICULTY_LEVEL = DIFFICULTY.DIFFICULTY_LEVEL
WHERE SUBMISSIONS.SCORE = DIFFICULTY.SCORE AND CHALLENGES.DIFFICULTY_LEVEL = DIFFICULTY.DIFFICULTY_LEVEL
GROUP BY HACKERS.HACKER_ID, HACKERS.NAME
HAVING COUNT(SUBMISSIONS.HACKER_ID) > 1
ORDER BY COUNT(HACKERS.HACKER_ID) DESC, HACKERS.HACKER_ID ASC;