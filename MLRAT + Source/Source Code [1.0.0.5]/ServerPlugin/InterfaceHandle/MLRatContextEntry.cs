namespace MLRat.Server
{
    public delegate void OnContextEntryClick(IClient[] clients);
    public class MLRatContextEntry
    {
        public OnContextEntryClick OnClick { get; set; }
        public string Text { get; set; }
        public MLRatContextEntry[] SubMenus { get; set; }
        public string Icon { get; set; }
    }


}
