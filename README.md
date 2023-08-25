# hello-clabi (with NKS)
### git clone 진행
```
git clone https://github.com/clabi-lab/hello-clabi.git
```
### NKS registry 확인
![image](https://github.com/clabi-lab/hello-clabi/assets/138098979/f0db3409-3721-40b0-ad5c-a8744e5fd386)

#### -> clabi-registry.kr.ncr.ntruss.com

### docker build
※ registry 이름을 포함하여 tag 작성
```
cd hello-clabi
docker build -t clabi-registry.kr.ncr.ntruss.com/hello-clabi:1.0 .
```

### docker login
```
docker login
```
※ 계정은 access key/secret key

### docker push
```
docker push clabi-registry.kr.ncr.ntruss.com/hello-clabi:1.0
```

### docker pull test
```
docker pull clabi-registry.kr.ncr.ntruss.com/hello-clabi:1.0
```

### docker start
```
docker run -d --name hello -p8080:80 clabi-registry.kr.ncr.ntruss.com/hello-clabi:1.0
```

