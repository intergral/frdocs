# Python

## Introduction
This page shows you how to instrument a simple Python application to ship metrics, traces and logs to FusionReactor Cloud.

There are two steps to this process:

1. [Download Python library dependencies](/frdocs/Monitor-your-data/OpenTelemetry/Instrumentation/Python/#step-1-download-python-library-dependencies)

2. [Instrument your code](/frdocs/Monitor-your-data/OpenTelemetry/Instrumentation/Python/#step-2-instrument-your-code)



## Instrument & run your Python code

Procedure

### **Step 1**: Download Python library dependencies

Install the OpenTelemetry supporting libraries using Pip:

```bash
pip install opentelemetry-api
pip install opentelemetry-sdk
pip install opentelemetry-exporter-otlp-proto-http
```



### **Step 2**: Instrument your code
The following listing can be saved as `fib.py` and run using:

```bash
python fib.py 20
```

The program will output 20 rounds of Fibonacci computation and then exit.

```python

# Fibonacci by Iteration
# Example Python code for FR Cloud integration
# Intergral GmbH 2023

# Required by program
import sys

# Support for instrumentation
import logging

# Instrumentation Libraries
from opentelemetry.sdk.resources import Resource

# Exporters
from opentelemetry.exporter.otlp.proto.http.trace_exporter import OTLPSpanExporter
from opentelemetry.exporter.otlp.proto.http.metric_exporter import OTLPMetricExporter
from opentelemetry.exporter.otlp.proto.http._log_exporter import OTLPLogExporter

# Trace Import
from opentelemetry.trace import set_tracer_provider
from opentelemetry.sdk.trace import TracerProvider, sampling
from opentelemetry.sdk.trace.export import BatchSpanProcessor
from opentelemetry.semconv.resource import ResourceAttributes

# Metric Import
from opentelemetry.sdk.metrics.export import (
    PeriodicExportingMetricReader,
)
from opentelemetry.sdk.metrics import MeterProvider
from opentelemetry.metrics import set_meter_provider, get_meter_provider

# Logs Import
from opentelemetry.sdk._logs import LoggerProvider, LoggingHandler
from opentelemetry.sdk._logs.export import BatchLogRecordProcessor
from opentelemetry._logs import set_logger_provider


def fib(iterations: int):
    total: int = 0
    last: int = [0, 1]
    iteration: int = 0

    tracer = TRACER_PROVIDER.get_tracer("fib_tracer")
    meter = get_meter_provider().get_meter("fib_meter")
    iteration_counter = meter.create_counter(name="fib_iteration_counter",
                                             description="The number of iterations")

    # Start an OTEL span to trace the whole execution
    with tracer.start_as_current_span("fib-outer") as span:
        span.set_attribute("iterations", iterations)

        while iteration < iterations:
            with tracer.start_as_current_span('fib-inner') as inner_span:
                inner_span.set_attribute("iteration", iteration)

                iteration += 1
                iteration_counter.add(amount=1)

                # Find the next number in the sequence by summing the last two
                new_number = sum(last)

                # Push the new number into the last array, discarding the earliest
                last[0] = last[1]
                last[1] = new_number

                logging.info(f'{new_number} ')


def initialize_otel(endpoint: str) -> (TracerProvider, MeterProvider, LoggerProvider):
    logging.debug("Initialize OTEL")

    # Global resources
    resource = Resource.create(
        attributes={ResourceAttributes.SERVICE_NAME: 'fib_by_iteration'})

    # Tracing

    tracer_provider: TracerProvider = TracerProvider(sampler=sampling.ALWAYS_ON, resource=resource)
    set_tracer_provider(tracer_provider)
    tracer_provider.add_span_processor(
        BatchSpanProcessor(
            OTLPSpanExporter(
                endpoint=endpoint + '/v1/traces'
            )
        )
    )

    # Metrics

    exporter = OTLPMetricExporter(endpoint=endpoint + "/v1/metrics")
    reader = PeriodicExportingMetricReader(exporter)
    meter_provider = MeterProvider(metric_readers=[reader], resource=resource)
    set_meter_provider(meter_provider)

    # Logging

    logger_provider = LoggerProvider(resource=resource)
    set_logger_provider(logger_provider)
    logger_provider.add_log_record_processor(
        BatchLogRecordProcessor(OTLPLogExporter(
            endpoint=endpoint + '/v1/logs')
        )
    )
    handler = LoggingHandler(level=logging.NOTSET, logger_provider=logger_provider)

    # Use the OTLP logging handler to send logs.
    logging.getLogger().addHandler(handler)

    # Return the created providers
    return tracer_provider, meter_provider, logger_provider


# Set up our own logging
logging.basicConfig(level="INFO")
logging.info("Starting up")

# Set up the OTEL agent to talk to the collector
TRACER_PROVIDER, METER_PROVIDER, LOG_PROVIDER = initialize_otel("http://localhost:4318")

# Process out command line options and actually run the sequence
iters: int = int(sys.argv[1])
logging.info(f'Fibonacci by Iteration - {iters} rounds\n')
fib(iters)

logging.info("... Fibonacci complete.")
```

### Code commentary

The program above is broken down into two functions and the main body of the script:


1. **def fib(...)**:  
This function calculates a Fibonacci sequence by iterating a given number of times and uses the metric, span and
logging providers to send data to the collector on port 4318. An outer span (`fib-outer`) is created to trace the
overall iteration, while inner spans (`fib-inner`) are created for each iteration. The current iteration number is
set as an attribute (`span.set_attribute(...)`) on the inner span. The current Fibonacci number is written to the
log (`logging.info(...)`) and will be also sent to the Collector implicitly by the Otel log handler. Finally, a
metric counter (`iteration_counter`) is incremented for every iteration the loop processes.

2. **def initialize_otel(...)**:   
This function, which takes the URL of the collector endpoint, creates and returns the three Otel providers required
to ship data:  a `tracer_provider`, a `meter_provider`, and a `logger_provider`. You can see all three providers are
constructed with the same `Resource` object, whose `SERVICE_NAME` is `fib_by_iteration`. This will be transferred to FR Cloud as the `job` key, and used to later find our data.

3. The main body of the script at the bottom of the file simply sets up logging, calls `initialize_otel(...)` in order
to get the providers - which are stored as global variables - and finally calls `fib(...)` to actually do the work.


___


!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.

