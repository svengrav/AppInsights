﻿using AppInsights.Extensions;
using Microsoft.ApplicationInsights.DataContracts;
using System;
using System.Collections;

namespace AppInsights.Telemetry
{
    public class ExceptionTelemetryBuilder
    {
        private readonly ExceptionTelemetry _telemetry;

        private ExceptionTelemetryBuilder(Exception exception)
        {
            _telemetry = new ExceptionTelemetry(exception);
        }

        internal static ExceptionTelemetryBuilder Create(Exception exception)
            => new ExceptionTelemetryBuilder(exception);

        internal ExceptionTelemetry Build()
             => _telemetry;

        internal ExceptionTelemetryBuilder AddCommandContext(CommandContext commandContext)
        {
            _telemetry.Extension = commandContext;
            return this;
        }

        internal ExceptionTelemetryBuilder AddMessage(string message)
        {
            _telemetry.Message = message;
            return this;
        }

        internal ExceptionTelemetryBuilder AddProblemId(string problemId)
        {
            _telemetry.ProblemId = problemId;
            return this;
        }

        internal ExceptionTelemetryBuilder AddTimestamp(DateTimeOffset timestamp)
        {
            _telemetry.Timestamp = timestamp;
            return this;
        }

        internal ExceptionTelemetryBuilder AddSeverity(SeverityLevel severity)
        {
            _telemetry.SeverityLevel = severity;
            return this;
        }

        internal ExceptionTelemetryBuilder AddProperties(Hashtable properties)
        {
            _telemetry.Properties.MergeDictionary(properties.ToPropertyDictionary());
            return this;
        }

        internal ExceptionTelemetryBuilder AddMetrics (Hashtable metrics)
        {
            _telemetry.Metrics.MergeDictionary(metrics.ToMetricDictionary());
            return this;
        }
    }
}
