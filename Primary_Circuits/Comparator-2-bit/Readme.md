A comparator compares two binary numbers and gives outputs indicating whether:
A = B
A > B
A < B

For a 2-bit comparator, we compare:

𝐴=𝐴1𝐴0 and 𝐵=𝐵1𝐵0

where 𝐴1,𝐵1 are MSBs and 𝐴0,𝐵0 are LSBs.

Outputs
Equal (E): 1 if A=B
Greater (G): 1 if 𝐴>𝐵
Less (L): 1 if 𝐴<𝐵


Equality (E): E=(A1​⊙B1​)(A0​⊙B0​)

Greater (G):
Case 1: If MSB decides → 𝐴1=1, 𝐵1=0
Case 2: If MSB equal → 𝐴1=𝐵1, then check LSB.

Less(L): 
Case 1: If MSB decides → A1=0, B1=1
Case 2: If MSB equal → check LSB.
