namespace MLManagementServer.Forms
{
    partial class formConnections
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
            this.lvConnections = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SuspendLayout();
            // 
            // lvConnections
            // 
            this.lvConnections.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4});
            this.lvConnections.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lvConnections.FullRowSelect = true;
            this.lvConnections.GridLines = true;
            this.lvConnections.Location = new System.Drawing.Point(0, 0);
            this.lvConnections.Name = "lvConnections";
            this.lvConnections.Size = new System.Drawing.Size(472, 325);
            this.lvConnections.TabIndex = 0;
            this.lvConnections.UseCompatibleStateImageBehavior = false;
            this.lvConnections.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Process";
            this.columnHeader1.Width = 97;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Local Address";
            this.columnHeader2.Width = 114;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Remote Address";
            this.columnHeader3.Width = 136;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Status";
            this.columnHeader4.Width = 92;
            // 
            // formConnections
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(472, 325);
            this.Controls.Add(this.lvConnections);
            this.Name = "formConnections";
            this.Text = "Connections";
            this.Load += new System.EventHandler(this.formConnections_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListView lvConnections;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ColumnHeader columnHeader4;
    }
}