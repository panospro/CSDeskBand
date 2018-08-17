﻿using System;
using System.Collections.Generic;

namespace CSDeskBand
{
    /// <summary>
    /// Base class for deskband menu items.
    /// </summary>
    public abstract class CSDeskBandMenuItem
    {
        // This is used instead of an interface so that the methods can be kept internal
        internal abstract void AddToMenu(IntPtr menu, uint pos, ref uint firstCmdId, Dictionary<uint, CSDeskBandMenuAction> callbacks);
    }
}