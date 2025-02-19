

# Welcome! 👋

## Getting Started

This is the repository for FusionReactor documentation. This repository contains all the source code and Markdown source files we use to build our documentation site.

## About FusionReactor Docs

FusionReactor provides industry-leading Java Application Performance Monitoring (APM) and production debugging tools. Our documentation aims to help developers, DevOps teams, and system administrators make the most of FusionReactor's powerful features to monitor, troubleshoot, and optimize their Java applications.

## Why Open Source?

We believe in the power of community collaboration. By open-sourcing our documentation, we aim to:
- Leverage community expertise and insights
- Ensure our documentation stays current and accurate
- Provide a better experience for FusionReactor users
- Enable quick fixes and improvements from those who use our docs daily

## How to Contribute

We welcome contributions from the community! Whether you're fixing a typo, improving an explanation, or adding new content, here's how you can help:

- Report documentation issues
- Submit pull requests for improvements
- Share your expertise and use cases
- Suggest new documentation topics

For detailed guidelines on contributing, please see our [Contributing Guide](https://github.com/intergral/frdocs/blob/main/docs/Contribute/how-to-contribute.md).

## Running locally

To run the docs locally, you are required to use Docker.

There are two run commands within the project, one for project owners and one for contributors:

### Contributors
Execute the command:
`docker build --no-cache -t frdocs-docs ./local-run && docker run --rm -p 8000:8000 -v $(pwd):/docs frdocs-docs`
### Owners
Execute the command:
`docker build --no-cache -t frdocs-docs-owner . && docker run --rm -p 8000:8000 -v $(pwd):/docs frdocs-docs-owner`


## Support
If you encounter any issues, our support team is here to help Monday to Friday, 8:00–18:00 Central European Time. Reach out using our support form, email us at support@fusion-reactor.com, or start a live chat for assistance


## License

This project is licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0), allowing you to freely use, modify, and distribute the code, subject to the terms of the license.


## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
