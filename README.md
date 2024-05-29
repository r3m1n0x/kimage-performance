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
    * `apache2-utils`: A collection of utilities for managing Apache web servers.

* **Easy to use:** The image is easy to use and can be run with a simple `kubectl run` command.
* **Customizable:** The image can be customized to meet your specific needs by adding additional tools or modifying the configuration.

### Usage

To use the kimage-performance image, you can run the following command:

```
kubectl run debug-pod -ti --rm --restart=Never --image=ghcr.io/r3m1n0x/kimage -- $COMMAND
```

This will start a container based on the image and mount your current directory to the `/root` directory inside the container. You can then use the pre-installed tools to perform your tests.

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