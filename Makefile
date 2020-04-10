world: CaveMUSH.dot

CaveMUSH.dot: CaveMUSH.dot.m4 house_0.dot
	m4 CaveMUSH.dot.m4 >CaveMUSH.dot

clean:
	rm -f CaveMUSH.dot

.PHONY: clean
