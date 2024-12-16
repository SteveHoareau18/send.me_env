FROM ubuntu:latest

RUN apt update -y && apt upgrade -y
RUN apt install -y \
    git \
    openssh-server \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    zip \
    screen

RUN curl -fsSL https://fnm.vercel.app/install | bash && \
    export FNM_DIR="/root/.local/share/fnm" && \
    export PATH="$FNM_DIR:$PATH" && \
    eval "`$FNM_DIR/fnm env`" && \
    fnm install 18 && \
    fnm default 18

ENV FNM_DIR="/root/.local/share/fnm"
ENV PATH="$FNM_DIR:/root/.local/share/fnm/node-versions/v18.20.5/installation/bin:$PATH"

RUN ssh-keygen -A
RUN mkdir /var/run/sshd && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config && \
    echo "AllowTcpForwarding yes" >> /etc/ssh/sshd_config && \
    sed -i '/^UsePAM/d' /etc/ssh/sshd_config && \
    echo "root:root" | chpasswd

WORKDIR /home

RUN rm -rf send.me

RUN git clone https://github.com/SteveHoareau18/send.me

WORKDIR /home/send.me/sendme_front

RUN git pull

EXPOSE 22 3000 80 443

CMD /usr/sbin/sshd -D