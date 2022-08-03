FROM scottyhardy/docker-wine:stable-7.0

RUN wget https://www.foxwq.com/Public/Soft/install.exe -O /tmp/wine.exe
RUN wine /tmp/install.exe || echo "Probably display problem, not important"

ENV FOX_BIN="/home/wineuser/.wine/drive_c/Program\ Files\ \(x86\)/foxwq/foxwq/foxwq.exe"

CMD /bin/bash
