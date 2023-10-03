namespace MLManagementServer.Forms
{
    partial class TaskManagerForm
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
            System.Windows.Forms.ListViewGroup listViewGroup1 = new System.Windows.Forms.ListViewGroup("Apps", System.Windows.Forms.HorizontalAlignment.Left);
            System.Windows.Forms.ListViewGroup listViewGroup2 = new System.Windows.Forms.ListViewGroup("Background Processes", System.Windows.Forms.HorizontalAlignment.Left);
            this.lvProcessList = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.cmTasks = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.refreshToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.killToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.threadsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.suspendToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.resumeToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.windowToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.hideToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.editMemoryToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cmTasks.SuspendLayout();
            this.SuspendLayout();
            // 
            // lvProcessList
            // 
            this.lvProcessList.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3});
            this.lvProcessList.ContextMenuStrip = this.cmTasks;
            this.lvProcessList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lvProcessList.FullRowSelect = true;
            this.lvProcessList.GridLines = true;
            listViewGroup1.Header = "Apps";
            listViewGroup1.Name = "app";
            listViewGroup2.Header = "Background Processes";
            listViewGroup2.Name = "background";
            this.lvProcessList.Groups.AddRange(new System.Windows.Forms.ListViewGroup[] {
            listViewGroup1,
            listViewGroup2});
            this.lvProcessList.Location = new System.Drawing.Point(0, 0);
            this.lvProcessList.Name = "lvProcessList";
            this.lvProcessList.Size = new System.Drawing.Size(481, 374);
            this.lvProcessList.TabIndex = 0;
            this.lvProcessList.UseCompatibleStateImageBehavior = false;
            this.lvProcessList.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Window";
            this.columnHeader1.Width = 192;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "ID";
            this.columnHeader2.Width = 80;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Name";
            this.columnHeader3.Width = 149;
            // 
            // cmTasks
            // 
            this.cmTasks.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.refreshToolStripMenuItem,
            this.killToolStripMenuItem,
            this.threadsToolStripMenuItem,
            this.windowToolStripMenuItem,
            this.editMemoryToolStripMenuItem});
            this.cmTasks.Name = "cmTasks";
            this.cmTasks.Size = new System.Drawing.Size(153, 136);
            // 
            // refreshToolStripMenuItem
            // 
            this.refreshToolStripMenuItem.Name = "refreshToolStripMenuItem";
            this.refreshToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.refreshToolStripMenuItem.Text = "Refresh";
            this.refreshToolStripMenuItem.Click += new System.EventHandler(this.refreshToolStripMenuItem_Click);
            // 
            // killToolStripMenuItem
            // 
            this.killToolStripMenuItem.Name = "killToolStripMenuItem";
            this.killToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.killToolStripMenuItem.Text = "Kill";
            this.killToolStripMenuItem.Click += new System.EventHandler(this.killToolStripMenuItem_Click);
            // 
            // threadsToolStripMenuItem
            // 
            this.threadsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.suspendToolStripMenuItem,
            this.resumeToolStripMenuItem});
            this.threadsToolStripMenuItem.Name = "threadsToolStripMenuItem";
            this.threadsToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.threadsToolStripMenuItem.Text = "Threads";
            // 
            // suspendToolStripMenuItem
            // 
            this.suspendToolStripMenuItem.Name = "suspendToolStripMenuItem";
            this.suspendToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.suspendToolStripMenuItem.Text = "Suspend";
            this.suspendToolStripMenuItem.Click += new System.EventHandler(this.suspendToolStripMenuItem_Click);
            // 
            // resumeToolStripMenuItem
            // 
            this.resumeToolStripMenuItem.Name = "resumeToolStripMenuItem";
            this.resumeToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.resumeToolStripMenuItem.Text = "Resume";
            this.resumeToolStripMenuItem.Click += new System.EventHandler(this.resumeToolStripMenuItem_Click);
            // 
            // windowToolStripMenuItem
            // 
            this.windowToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.hideToolStripMenuItem});
            this.windowToolStripMenuItem.Name = "windowToolStripMenuItem";
            this.windowToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.windowToolStripMenuItem.Text = "Window";
            // 
            // hideToolStripMenuItem
            // 
            this.hideToolStripMenuItem.Name = "hideToolStripMenuItem";
            this.hideToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.hideToolStripMenuItem.Text = "Hide";
            this.hideToolStripMenuItem.Click += new System.EventHandler(this.hideToolStripMenuItem_Click);
            // 
            // gToolStripMenuItem
            // 
            this.gToolStripMenuItem.Name = "gToolStripMenuItem";
            this.gToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.gToolStripMenuItem.Text = "g";
            // 
            // editMemoryToolStripMenuItem
            // 
            this.editMemoryToolStripMenuItem.Name = "editMemoryToolStripMenuItem";
            this.editMemoryToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.editMemoryToolStripMenuItem.Text = "Edit Memory";
            this.editMemoryToolStripMenuItem.Click += new System.EventHandler(this.editMemoryToolStripMenuItem_Click);
            // 
            // TaskManagerForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(481, 374);
            this.Controls.Add(this.lvProcessList);
            this.Name = "TaskManagerForm";
            this.Text = "TaskManagerForm";
            this.Load += new System.EventHandler(this.TaskManagerForm_Load);
            this.cmTasks.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListView lvProcessList;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ContextMenuStrip cmTasks;
        private System.Windows.Forms.ToolStripMenuItem refreshToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem killToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem suspendToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem resumeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem threadsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem windowToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem hideToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem editMemoryToolStripMenuItem;
    }
}