namespace MLManagementServer.Forms
{
    partial class formStartupManager
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
            System.Windows.Forms.ListViewGroup listViewGroup1 = new System.Windows.Forms.ListViewGroup("HKEY_CURRENT_USER", System.Windows.Forms.HorizontalAlignment.Left);
            System.Windows.Forms.ListViewGroup listViewGroup2 = new System.Windows.Forms.ListViewGroup("HKEY_CURRENT_USER (Run Once)", System.Windows.Forms.HorizontalAlignment.Left);
            System.Windows.Forms.ListViewGroup listViewGroup3 = new System.Windows.Forms.ListViewGroup("HKEY_LOCAL_MACHINE", System.Windows.Forms.HorizontalAlignment.Left);
            System.Windows.Forms.ListViewGroup listViewGroup4 = new System.Windows.Forms.ListViewGroup("HKEY_LOCAL_MACHINE (Run Once)", System.Windows.Forms.HorizontalAlignment.Left);
            this.lvStartup = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SuspendLayout();
            // 
            // lvStartup
            // 
            this.lvStartup.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lvStartup.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2});
            this.lvStartup.FullRowSelect = true;
            this.lvStartup.GridLines = true;
            listViewGroup1.Header = "HKEY_CURRENT_USER";
            listViewGroup1.Name = "HKCU";
            listViewGroup2.Header = "HKEY_CURRENT_USER (Run Once)";
            listViewGroup2.Name = "HKCUO";
            listViewGroup3.Header = "HKEY_LOCAL_MACHINE";
            listViewGroup3.Name = "HKLM";
            listViewGroup4.Header = "HKEY_LOCAL_MACHINE (Run Once)";
            listViewGroup4.Name = "HKLMO";
            this.lvStartup.Groups.AddRange(new System.Windows.Forms.ListViewGroup[] {
            listViewGroup1,
            listViewGroup2,
            listViewGroup3,
            listViewGroup4});
            this.lvStartup.Location = new System.Drawing.Point(12, 12);
            this.lvStartup.Name = "lvStartup";
            this.lvStartup.Size = new System.Drawing.Size(545, 284);
            this.lvStartup.TabIndex = 0;
            this.lvStartup.UseCompatibleStateImageBehavior = false;
            this.lvStartup.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Name";
            this.columnHeader1.Width = 140;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Path";
            this.columnHeader2.Width = 372;
            // 
            // formStartupManager
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(569, 308);
            this.Controls.Add(this.lvStartup);
            this.Name = "formStartupManager";
            this.Text = "Startup Manager";
            this.Load += new System.EventHandler(this.formStartupManager_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListView lvStartup;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
    }
}