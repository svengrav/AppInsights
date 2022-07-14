﻿using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;

namespace AppInsights.Context
{
    public class PowerShellCommandContext
    {
        private readonly IPowerShellAdapter _powerShellAdapter;

        private readonly ICollection<PowerShellCommandCall> _callStack;

        private int _contextLevel = 0;

        public PowerShellCommandContext(IPowerShellAdapter powerShellAdapter, int contextLevel = 0)
        {
            _contextLevel = contextLevel;
            _powerShellAdapter = powerShellAdapter;
            _callStack = CreateCallStack();
        }

        public PowerShellCommandCall GetCommandCall(int contextLevel)
             => GetCommandCallFromStack(contextLevel);

        public PowerShellCommandCall GetCommandCall()
            => GetCommandCallFromStack(_contextLevel);

        public PowerShellCommandContext SetCommandLevel(int level)
        {
            _contextLevel = level;
            return this;
        }

        private PowerShellCommandCall GetCommandCallFromStack(int stackRank)
        {
            if (StackRankIsOutOfRange(stackRank))
                return _callStack.Last();

            if (StackRankIsNegative(stackRank))
                return _callStack.First();

            return _callStack.ElementAt(stackRank);
        }

        private bool StackRankIsOutOfRange(int stackRank)
            => stackRank > _callStack.Count;

        private static bool StackRankIsNegative(int stackRank)
            => stackRank < 0;

        private ICollection<PowerShellCommandCall> CreateCallStack()
        {
            var commandCallStack = new Collection<PowerShellCommandCall>();
            foreach (var powerShellCall in _powerShellAdapter.GetCallStack())
                commandCallStack.Add(CreateCommandCall(powerShellCall));

            return commandCallStack;
        }

        private static PowerShellCommandCall CreateCommandCall(PowerShellStackItem powerShellCall)
            => new PowerShellCommandCall(powerShellCall.Command, powerShellCall.ScriptLineNumber)
                .AddArguments(powerShellCall.Arguments);

    }
}
