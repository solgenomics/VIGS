
FROM debian:bullseye

EXPOSE 8088

RUN cat /etc/apt/sources.list

RUN apt-get update -y

RUN apt-get install -y apt-utils build-essential

RUN apt-get install -y less procps host lynx ncbi-blast+ ncbi-blast+-legacy cpanminus bioperl bioperl-run libcatalyst-perl bowtie2 libcatalyst-perl libcatalyst-view-mason-perl libcatalyst-action-rest-perl libplack-perl emacs 

RUN cpanm --force Bio::BLAST::Database Plack::Handler::Starman Catalyst::Restarter Catalyst::View::HTML::Mason

COPY ./root /home/VIGS/root
COPY ./lib /home/VIGS/lib
COPY ./mason /home/VIGS/mason
COPY ./script/ /home/VIGS/script
COPY ./vigs_local.conf /home/VIGS/vigs_local.conf
COPY vigs.psgi /home/VIGS

COPY ./entrypoint.sh /entrypoint.sh

ENV  PERL5LIB=/home/VIGS/lib:/perl5/lib/perl5
ENV  comp_root=/home/VIGS/mason

WORKDIR /home/VIGS

ENTRYPOINT ["/entrypoint.sh"]
