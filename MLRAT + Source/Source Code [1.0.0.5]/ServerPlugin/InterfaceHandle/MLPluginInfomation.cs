namespace ServerPlugin.InterfaceHandle
{
    public class MLPluginInfomation
    {
        public MLPluginInfomation(string name)
        {
            PluginName = name;
        }
        public string PluginName { get; private set; }
        public string Developer { get; set; }
        public string Description { get; set; }
    }
}
