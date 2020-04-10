all: CaveMUSH.svg CaveMUSH.png

CaveMUSH.svg: CaveMUSH.dot
	dot CaveMUSH.dot -Tsvg -oCaveMUSH.svg

CaveMUSH.png: CaveMUSH.dot
	dot CaveMUSH.dot -Tpng -oCaveMUSH.png

CaveMUSH.dot: CaveMUSH.dot.m4 house_0.dot redwolf_house.dot nrgland.dot thoran_tower.dot
	m4 CaveMUSH.dot.m4 >CaveMUSH.dot

publish: CaveMUSH.png CaveMUSH.svg
	scp CaveMUSH.{svg,png} civilfritz.net:public_html/

clean:
	rm -f CaveMUSH.{dot,png,svg}

.PHONY: all publish clean
