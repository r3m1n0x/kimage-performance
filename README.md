## kimage-performance

**kimage-performance** is a Docker image designed for capturing test and performance data in Kubernetes environments. It provides a comprehensive set of tools for benchmarking, network performance testing, and database performance evaluation.

### Features

**Pre-installed tools:** The image comes pre-installed with a variety of tools for performance testing, including:

* `sysbench`: A versatile tool for benchmarking CPU, memory, file I/O, and database performance.
* `speedtest-cli`: A command-line tool for measuring internet bandwidth.
* `fio`: A high-performance I/O benchmarking tool.
* `ffmpeg`: A powerful multimedia framework for encoding, decoding, and transcoding audio and video.
* `wrk`: A HTTP benchmarking tool for measuring the performance of web servers.
* `iperf`: A tool for measuring the maximum achievable bandwidth on IP networks.
* `apache2-utils`: A collection of utilities for managing Apache web servers but here installed for `ap` (Apache Bench).

**Easy to use:** The image is easy to use and can be run with a simple `kubectl run` command.

**Customizable:** The image can be customized to meet your specific needs by adding additional tools or modifying the configuration.

### Usage

To use the kimage-performance image, you can run the following command:

```bash
kubectl run performance-test-pod -ti --rm --restart=Never --image=ghcr.io/r3m1n0x/kimage -- $COMMAND
```

or you probably want to use ist as a manifest:

```yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: performance-pod
  name: performance-pod
  namespace: testing
spec:
  containers:
  - image: ghcr.io/r3m1n0x/kimage-performance:latest
    name: perfromance-pod
    resources:
      limits:
        memory: 2Gi
        cpu: 1000m
      requests:
        memory: 2Gi
        cpu: 1000m
    command: [ "/bin/bash", "-c", "--" ]
    args: [ "while true; do sleep 60; done;" ]
    securityContext:
      allowPrivilegeEscalation: true
    imagePullPolicy: Always
  dnsPolicy: ClusterFirst
  restartPolicy: Never
status: {}
```

This will start a container based on the image and you can then use the pre-installed tools to perform your tests.

### Examples

For example, to run a CPU benchmark using sysbench, you can run the following command:

```
sysbench cpu --cpu-count 4 --threads 8 --time 60
```

To measure your internet bandwidth using speedtest-cli, you can run the following command:

```
speedtest-cli
```

### Contributing

We welcome contributions to the kimage-performance project. If you have any suggestions or improvements, please feel free to create an issue or pull request.

### License

The kimage-performance project is licensed under the MIT License. For more information, please see the LICENSE file.

### Additional Notes

We hope you find the kimage-performance image useful for your performance testing needs. Please let us know if you have any questions or feedback.