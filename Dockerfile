FROM theteamultroid/ultroid:main

WORKDIR /root
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && apt-get update && apt upgrade -y && apt install ffmpeg mediainfo neofetch -y

COPY . .

RUN chmod u+x chandni
RUN apt install sudo -y
RUN ls /root
RUN ls
RUN git clone https://github.com/https-github-com-rooted-cyber/Ultroid /root;cd root/Ult*;pip install -r req*;pip install -r res*/st*/opt*

CMD ["./chandni"]
