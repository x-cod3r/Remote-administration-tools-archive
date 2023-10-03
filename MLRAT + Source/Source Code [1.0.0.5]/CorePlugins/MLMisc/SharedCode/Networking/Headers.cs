using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SharedCode.Networking
{
    public enum NetworkCommand : byte
    {
        BlockInput,
        AllowInput,
        ShowTasbar,
        HideTaskbar,
        TextToSpeech,
        ComputerPower
    }
}
