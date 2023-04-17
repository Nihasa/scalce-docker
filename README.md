# scalce-docker-cwl

This repository provides a [Common Workflow Language (CWL)](https://www.commonwl.org/) tool for running [SCALCE](https://github.com/wdecoster/scalce) (Single Cell ALignment and Error Correction). The tool is packaged in a Docker container, allowing it to run on any system with Docker installed.

## Prerequisites

To use this tool, you must have the following software installed on your system:

- [Docker](https://www.docker.com/)
- [CWL tool](https://github.com/common-workflow-language/cwltool)

## Installation

To install and run the tool, follow these steps:

1. Clone this repository to your local machine.
2. Install Docker and CWL tool, if you haven't already done so.
3. Build the Docker image by running the following command from the root of the repository:

    ```
    docker build -t scalce-cwl .
    ```

4. Run the CWL tool by running the following command from the root of the repository:

    ```
    cwl-runner scalce.cwl scalce.yml
    ```

   This will run SCALCE on the input file(s) specified in the `scalce.yml` file.

## Usage

To use the tool, you will need to create a YAML file specifying the input file(s) and any other parameters you wish to specify. An example YAML file is provided in the `example` directory of this repository.

The `scalce.cwl` file is the main workflow file that describes the steps of the SCALCE analysis. The `scalce.yaml` file is an example input file that specifies the input file(s) and any other options you wish to specify.

The output of the analysis will be written to a directory named `output` in the current working directory.

## Contributing

If you wish to contribute to this project, please follow the standard GitHub workflow:

1. Fork the repository
2. Create a new branch for your changes
3. Make your changes and commit them
4. Push your changes to your fork
5. Submit a pull request to this repository

## License

This project is licensed under the [MIT License](https://github.com/Nihasa/scalce-docker-cwl/blob/main/LICENSE).

## Contact

If you have any questions or feedback, please contact the author via GitHub.
