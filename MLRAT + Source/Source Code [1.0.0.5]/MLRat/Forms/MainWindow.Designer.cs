namespace MLRat.Forms
{
    partial class MainWindow
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
            this.clientList = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.ClientContextStrip = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.nudPortBuild = new System.Windows.Forms.NumericUpDown();
            this.label3 = new System.Windows.Forms.Label();
            this.tbIPBuild = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.gbNetwork = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tabControl2 = new System.Windows.Forms.TabControl();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.pluginPanel = new System.Windows.Forms.Panel();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.rtbPluginLog = new System.Windows.Forms.RichTextBox();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudPortBuild)).BeginInit();
            this.gbNetwork.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            this.tabPage2.SuspendLayout();
            this.tabControl2.SuspendLayout();
            this.tabPage4.SuspendLayout();
            this.tabPage5.SuspendLayout();
            this.SuspendLayout();
            // 
            // clientList
            // 
            this.clientList.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4});
            this.clientList.ContextMenuStrip = this.ClientContextStrip;
            this.clientList.Dock = System.Windows.Forms.DockStyle.Fill;
            this.clientList.FullRowSelect = true;
            this.clientList.GridLines = true;
            this.clientList.Location = new System.Drawing.Point(3, 3);
            this.clientList.Name = "clientList";
            this.clientList.Size = new System.Drawing.Size(681, 215);
            this.clientList.TabIndex = 0;
            this.clientList.UseCompatibleStateImageBehavior = false;
            this.clientList.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Client Name";
            this.columnHeader1.Width = 149;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "IP Address";
            this.columnHeader2.Width = 138;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "OS";
            this.columnHeader3.Width = 107;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Cores";
            this.columnHeader4.Width = 81;
            // 
            // ClientContextStrip
            // 
            this.ClientContextStrip.Name = "ClientContextStrip";
            this.ClientContextStrip.Size = new System.Drawing.Size(61, 4);
            // 
            // tabControl1
            // 
            this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(0, 2);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(695, 247);
            this.tabControl1.TabIndex = 2;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.clientList);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(687, 221);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Main";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.groupBox1);
            this.tabPage3.Controls.Add(this.gbNetwork);
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Size = new System.Drawing.Size(687, 221);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Settings";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.nudPortBuild);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.tbIPBuild);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.button2);
            this.groupBox1.Location = new System.Drawing.Point(198, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(247, 109);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Builder";
            // 
            // nudPortBuild
            // 
            this.nudPortBuild.Location = new System.Drawing.Point(41, 49);
            this.nudPortBuild.Maximum = new decimal(new int[] {
            999999,
            0,
            0,
            0});
            this.nudPortBuild.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.nudPortBuild.Name = "nudPortBuild";
            this.nudPortBuild.Size = new System.Drawing.Size(194, 20);
            this.nudPortBuild.TabIndex = 4;
            this.nudPortBuild.Value = new decimal(new int[] {
            12345,
            0,
            0,
            0});
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 51);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(29, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Port:";
            // 
            // tbIPBuild
            // 
            this.tbIPBuild.Location = new System.Drawing.Point(41, 23);
            this.tbIPBuild.Name = "tbIPBuild";
            this.tbIPBuild.Size = new System.Drawing.Size(194, 20);
            this.tbIPBuild.TabIndex = 2;
            this.tbIPBuild.Text = "127.0.0.1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 26);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(20, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "IP:";
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(9, 75);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(226, 27);
            this.button2.TabIndex = 0;
            this.button2.Text = "Build";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // gbNetwork
            // 
            this.gbNetwork.Controls.Add(this.button1);
            this.gbNetwork.Controls.Add(this.numericUpDown1);
            this.gbNetwork.Controls.Add(this.label1);
            this.gbNetwork.Location = new System.Drawing.Point(8, 3);
            this.gbNetwork.Name = "gbNetwork";
            this.gbNetwork.Size = new System.Drawing.Size(184, 86);
            this.gbNetwork.TabIndex = 0;
            this.gbNetwork.TabStop = false;
            this.gbNetwork.Text = "Network";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(9, 52);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(159, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "Start";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(41, 26);
            this.numericUpDown1.Maximum = new decimal(new int[] {
            999999,
            0,
            0,
            0});
            this.numericUpDown1.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(127, 20);
            this.numericUpDown1.TabIndex = 1;
            this.numericUpDown1.Value = new decimal(new int[] {
            12345,
            0,
            0,
            0});
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Port:";
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.tabControl2);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(687, 221);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Plugins";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tabControl2
            // 
            this.tabControl2.Alignment = System.Windows.Forms.TabAlignment.Bottom;
            this.tabControl2.Controls.Add(this.tabPage4);
            this.tabControl2.Controls.Add(this.tabPage5);
            this.tabControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl2.Location = new System.Drawing.Point(3, 3);
            this.tabControl2.Name = "tabControl2";
            this.tabControl2.SelectedIndex = 0;
            this.tabControl2.Size = new System.Drawing.Size(681, 215);
            this.tabControl2.TabIndex = 1;
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.pluginPanel);
            this.tabPage4.Location = new System.Drawing.Point(4, 4);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage4.Size = new System.Drawing.Size(673, 189);
            this.tabPage4.TabIndex = 0;
            this.tabPage4.Text = "List";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // pluginPanel
            // 
            this.pluginPanel.AutoScroll = true;
            this.pluginPanel.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.pluginPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pluginPanel.Location = new System.Drawing.Point(3, 3);
            this.pluginPanel.Name = "pluginPanel";
            this.pluginPanel.Size = new System.Drawing.Size(667, 183);
            this.pluginPanel.TabIndex = 0;
            // 
            // tabPage5
            // 
            this.tabPage5.Controls.Add(this.rtbPluginLog);
            this.tabPage5.Location = new System.Drawing.Point(4, 4);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage5.Size = new System.Drawing.Size(673, 189);
            this.tabPage5.TabIndex = 1;
            this.tabPage5.Text = "Log";
            this.tabPage5.UseVisualStyleBackColor = true;
            // 
            // rtbPluginLog
            // 
            this.rtbPluginLog.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtbPluginLog.Location = new System.Drawing.Point(3, 3);
            this.rtbPluginLog.Name = "rtbPluginLog";
            this.rtbPluginLog.ReadOnly = true;
            this.rtbPluginLog.Size = new System.Drawing.Size(667, 183);
            this.rtbPluginLog.TabIndex = 0;
            this.rtbPluginLog.Text = "";
            // 
            // MainWindow
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(695, 249);
            this.Controls.Add(this.tabControl1);
            this.MinimumSize = new System.Drawing.Size(711, 288);
            this.Name = "MainWindow";
            this.Text = "MLRat";
            this.Load += new System.EventHandler(this.MainWindow_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage3.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nudPortBuild)).EndInit();
            this.gbNetwork.ResumeLayout(false);
            this.gbNetwork.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.tabPage2.ResumeLayout(false);
            this.tabControl2.ResumeLayout(false);
            this.tabPage4.ResumeLayout(false);
            this.tabPage5.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListView clientList;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ContextMenuStrip ClientContextStrip;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Panel pluginPanel;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.GroupBox gbNetwork;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ColumnHeader columnHeader4;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.NumericUpDown nudPortBuild;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbIPBuild;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.TabControl tabControl2;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.TabPage tabPage5;
        private System.Windows.Forms.RichTextBox rtbPluginLog;
    }
}