<h1 align="left">
    <p margin="0"><a><img src="https://user-images.githubusercontent.com/33018600/168000100-22be35ce-fc1f-4e52-8c35-44fbd3351bf2.png"></a></p>
    <a><img src="https://komarev.com/ghpvc/?username=reasley-com"></a>
    <a><img src="https://img.shields.io/badge/-reasley-grey?style=flat&logo=github&logoColor=white&link=https://github.com/reasley/"></a>
    <a><img src="https://img.shields.io/badge/-reasley-00acee?style=flat&logo=twitter&logoColor=white&link=https://twitter.com/reasley/"></a>
</h1>


<a href="https://calcs.kr"><img src="https://user-images.githubusercontent.com/33018600/168000201-52a05b19-74ce-4d48-aadb-c6c19d48ecc5.png" align="left" height="240"></a>

<br>


## Things To Prepare
Organize the code of the container you want to use in the source folder.
<pre>$ cd source
$ git clone https://github.com/reasley-com/calcs-fe
$ git clone https://github.com/reasley-com/calcs-be
$ git clone https://github.com/reasley-com/calcs-proxy</pre>

<br>
<br>

## Distribute
Build to service container.
<pre>$ ./build.sh</pre>

<br>

Configure an env file with server information
<pre>
cat &lt;&lt;EOF &gt; .env
WDS_SOCKET_PORT=0
MONGO_INITDB_ROOT_USERNAME=&lt;ID&gt;
MONGO_INITDB_ROOT_PASSWORD=&lt;Password&gt;
REACT_APP_CALCS_HOST=&lt;Domain&gt;
REACT_APP_CALCS_FE=443
REACT_APP_CALCS_BE=8000
REACT_APP_CALCS_DB=27017
EOF
</pre>

<br>

Compose and certificate issued.
<pre>$ ./compose.sh</pre>

<br>
<br>
<br>

## Add Service
Can also add new containers to use.
<br>
First, add a new code to the source.
<pre>$ git clone https://github.com/reasley-com/calcs-servcies</pre>

<br>
And edit to docker-compose.yml.
<pre>-d &lt;Service Doamin&gt;.calcs-kr</pre>

<br>
Edit to source/calcs-proxy/set_default.conf
<pre>
server {
        listen 80 ssl;
        listen 443 ssl;
        server_name &lt;Service Doamin&gt;

        ssl on;
        ssl_certificate     /etc/letsencrypt/live/calcs.kr/fullchain.pem;
        ssl_certificate_key /etc/letsencrypt/live/calcs.kr/privkey.pem;


        error_page 497 @force_https;

        location @force_https {
                return 301 https://$host$request_uri;
        }
        location / {
                proxy_pass http://<Service Name>:3000;
        }
}

server {
        listen 8000 ssl;
        error_page 497 @force_https;

        ssl on;
        ssl_certificate     /etc/letsencrypt/live/calcs.kr/fullchain.pem;
        ssl_certificate_key /etc/letsencrypt/live/calcs.kr/privkey.pem;


        location @force_https {
                return 301 https://$host:$server_port$request_uri;
        }

        location / {
                proxy_pass http://<Service Name>:3000;
        }
}
</pre>

<br>
<br>


## Multilingual Page
Trying to support multiple languages.
Currently, only English is supported.
<p align="center">
  <a href="https://github.com/reasley-com/calcs-distribute">English</a>
   · 
  <a href="/docs/README_kr.md">한국어</a>
</p>



