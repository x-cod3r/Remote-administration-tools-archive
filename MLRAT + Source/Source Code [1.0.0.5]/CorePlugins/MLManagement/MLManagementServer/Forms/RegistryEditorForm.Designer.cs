namespace MLManagementServer.Forms
{
    partial class RegistryEditorForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.tvRegistryNavigator = new NativeTreeView();
            this.navLabel = new System.Windows.Forms.Label();
            this.lvKeyDisplay = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.nodeContextMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.refreshToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cmValueContext = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.refreshToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.newToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.deleteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nodeContextMenu.SuspendLayout();
            this.cmValueContext.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tvRegistryNavigator
            // 
            this.tvRegistryNavigator.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tvRegistryNavigator.Location = new System.Drawing.Point(0, 0);
            this.tvRegistryNavigator.Name = "tvRegistryNavigator";
            this.tvRegistryNavigator.Size = new System.Drawing.Size(244, 356);
            this.tvRegistryNavigator.TabIndex = 0;
            // 
            // navLabel
            // 
            this.navLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.navLabel.AutoSize = true;
            this.navLabel.Location = new System.Drawing.Point(7, 360);
            this.navLabel.Name = "navLabel";
            this.navLabel.Size = new System.Drawing.Size(12, 13);
            this.navLabel.TabIndex = 1;
            this.navLabel.Text = "\\";
            // 
            // lvKeyDisplay
            // 
            this.lvKeyDisplay.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2});
            this.lvKeyDisplay.ContextMenuStrip = this.cmValueContext;
            this.lvKeyDisplay.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lvKeyDisplay.FullRowSelect = true;
            this.lvKeyDisplay.GridLines = true;
            this.lvKeyDisplay.Location = new System.Drawing.Point(0, 0);
            this.lvKeyDisplay.MultiSelect = false;
            this.lvKeyDisplay.Name = "lvKeyDisplay";
            this.lvKeyDisplay.Size = new System.Drawing.Size(486, 356);
            this.lvKeyDisplay.TabIndex = 2;
            this.lvKeyDisplay.UseCompatibleStateImageBehavior = false;
            this.lvKeyDisplay.View = System.Windows.Forms.View.Details;
            this.lvKeyDisplay.SelectedIndexChanged += new System.EventHandler(this.lvKeyDisplay_SelectedIndexChanged);
            this.lvKeyDisplay.DoubleClick += new System.EventHandler(this.lvKeyDisplay_DoubleClick);
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Name";
            this.columnHeader1.Width = 169;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Data";
            this.columnHeader2.Width = 253;
            // 
            // nodeContextMenu
            // 
            this.nodeContextMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.refreshToolStripMenuItem});
            this.nodeContextMenu.Name = "nodeContextMenu";
            this.nodeContextMenu.Size = new System.Drawing.Size(114, 26);
            this.nodeContextMenu.Opening += new System.ComponentModel.CancelEventHandler(this.nodeContextMenu_Opening);
            // 
            // refreshToolStripMenuItem
            // 
            this.refreshToolStripMenuItem.Name = "refreshToolStripMenuItem";
            this.refreshToolStripMenuItem.Size = new System.Drawing.Size(113, 22);
            this.refreshToolStripMenuItem.Text = "Refresh";
            this.refreshToolStripMenuItem.Click += new System.EventHandler(this.refreshToolStripMenuItem_Click);
            // 
            // cmValueContext
            // 
            this.cmValueContext.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.refreshToolStripMenuItem1,
            this.newToolStripMenuItem,
            this.deleteToolStripMenuItem});
            this.cmValueContext.Name = "cmValueContext";
            this.cmValueContext.Size = new System.Drawing.Size(153, 92);
            // 
            // refreshToolStripMenuItem1
            // 
            this.refreshToolStripMenuItem1.Name = "refreshToolStripMenuItem1";
            this.refreshToolStripMenuItem1.Size = new System.Drawing.Size(152, 22);
            this.refreshToolStripMenuItem1.Text = "Refresh";
            this.refreshToolStripMenuItem1.Click += new System.EventHandler(this.refreshToolStripMenuItem1_Click);
            // 
            // splitContainer1
            // 
            this.splitContainer1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.splitContainer1.Location = new System.Drawing.Point(0, 1);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.tvRegistryNavigator);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.lvKeyDisplay);
            this.splitContainer1.Size = new System.Drawing.Size(734, 356);
            this.splitContainer1.SplitterDistance = 244;
            this.splitContainer1.TabIndex = 5;
            // 
            // newToolStripMenuItem
            // 
            this.newToolStripMenuItem.Name = "newToolStripMenuItem";
            this.newToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.newToolStripMenuItem.Text = "New";
            this.newToolStripMenuItem.Click += new System.EventHandler(this.newToolStripMenuItem_Click);
            // 
            // deleteToolStripMenuItem
            // 
            this.deleteToolStripMenuItem.Name = "deleteToolStripMenuItem";
            this.deleteToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.deleteToolStripMenuItem.Text = "Delete";
            this.deleteToolStripMenuItem.Click += new System.EventHandler(this.deleteToolStripMenuItem_Click);
            // 
            // RegistryEditorForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(736, 380);
            this.Controls.Add(this.splitContainer1);
            this.Controls.Add(this.navLabel);
            this.Name = "RegistryEditorForm";
            this.Text = "RegistryEditorForm";
            this.Load += new System.EventHandler(this.RegistryEditorForm_Load);
            this.nodeContextMenu.ResumeLayout(false);
            this.cmValueContext.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TreeView tvRegistryNavigator;
        private System.Windows.Forms.Label navLabel;
        private System.Windows.Forms.ListView lvKeyDisplay;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ContextMenuStrip nodeContextMenu;
        private System.Windows.Forms.ToolStripMenuItem refreshToolStripMenuItem;
        private System.Windows.Forms.ContextMenuStrip cmValueContext;
        private System.Windows.Forms.ToolStripMenuItem refreshToolStripMenuItem1;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.ToolStripMenuItem newToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem deleteToolStripMenuItem;
    }
}