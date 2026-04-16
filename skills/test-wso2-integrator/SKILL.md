# WSO2 Integrator

WSO2 Integrator is a visual integration development tool. It lets you build integration services (HTTP APIs, proxies, etc.) through a graphical flow editor rather than writing code by hand.

### Key Characteristics of WSO2 Integrator

- VS Code-based — Runs inside VS Code as an extension with a webview UI (guest frame) alongside VS Code's native chrome (host frame)
- Visual flow editor — You design service logic by adding nodes (Return, If, etc.) to an SVG-based flow diagram, connecting them visually
- Code generation — Behind the scenes it generates Ballerina (.bal) source code from the visual flow
- Connectors — Supports HTTP connections and others via a connector palette
- Integrated run/debug — Has "Run Integration" that compiles and runs the Ballerina project, starting an HTTP listener (default on localhost:9090)
- Ships with a monitoring tool, WSO2 ICP.

### Testing

Use Playwright based cli tool `wso2ipw` to drive Integrator programmatically. Install with user consent (npm install -g wso2ipw).

The goal is to find bugs, limitations and UX issues in WSO2 Integrator.

It's always possible to modify the Ballerina code directly to get the output. Yet, the whole point of this effort the the Integrator **UI**. Try to mimic a real user’s UI actions as much as possible.

You may sometimes need some mocks to write the integrations, prompt users for a couple of options and implement those (e.g. create a hello service in node). The user is not interested in technical minutiae of the mocks, only about issues in ICP, pre pick answers and only get confirmation.

Try to avoid timed wait and sleep, instead use wait-for text.
