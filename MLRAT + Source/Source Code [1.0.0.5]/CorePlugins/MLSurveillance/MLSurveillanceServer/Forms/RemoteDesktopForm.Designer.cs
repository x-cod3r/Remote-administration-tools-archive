namespace MLSurveillanceServer.Forms
{
    partial class RemoteDesktopForm
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
            this.pbScreen = new System.Windows.Forms.PictureBox();
            this.btnStart = new System.Windows.Forms.Button();
            this.btnStop = new System.Windows.Forms.Button();
            this.cbMonitors = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.pbScreen)).BeginInit();
            this.SuspendLayout();
            // 
            // pbScreen
            // 
            this.pbScreen.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pbScreen.Location = new System.Drawing.Point(1, 1);
            this.pbScreen.Name = "pbScreen";
            this.pbScreen.Size = new System.Drawing.Size(488, 231);
            this.pbScreen.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pbScreen.TabIndex = 0;
            this.pbScreen.TabStop = false;
            // 
            // btnStart
            // 
            this.btnStart.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnStart.Location = new System.Drawing.Point(1, 233);
            this.btnStart.Name = "btnStart";
            this.btnStart.Size = new System.Drawing.Size(103, 27);
            this.btnStart.TabIndex = 1;
            this.btnStart.Text = "Start";
            this.btnStart.UseVisualStyleBackColor = true;
            this.btnStart.Click += new System.EventHandler(this.btnStart_Click);
            // 
            // btnStop
            // 
            this.btnStop.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnStop.Enabled = false;
            this.btnStop.Location = new System.Drawing.Point(110, 233);
            this.btnStop.Name = "btnStop";
            this.btnStop.Size = new System.Drawing.Size(103, 27);
            this.btnStop.TabIndex = 2;
            this.btnStop.Text = "Stop";
            this.btnStop.UseVisualStyleBackColor = true;
            this.btnStop.Click += new System.EventHandler(this.btnStop_Click);
            // 
            // cbMonitors
            // 
            this.cbMonitors.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.cbMonitors.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbMonitors.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.cbMonitors.FormattingEnabled = true;
            this.cbMonitors.Location = new System.Drawing.Point(219, 237);
            this.cbMonitors.Name = "cbMonitors";
            this.cbMonitors.Size = new System.Drawing.Size(141, 21);
            this.cbMonitors.TabIndex = 4;
            this.cbMonitors.SelectedIndexChanged += new System.EventHandler(this.cbMonitors_SelectedIndexChanged);
            // 
            // RemoteDesktopForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(491, 261);
            this.Controls.Add(this.cbMonitors);
            this.Controls.Add(this.btnStop);
            this.Controls.Add(this.btnStart);
            this.Controls.Add(this.pbScreen);
            this.Name = "RemoteDesktopForm";
            this.Text = "RemoteDesktopForm";
            this.Load += new System.EventHandler(this.RemoteDesktopForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pbScreen)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pbScreen;
        private System.Windows.Forms.Button btnStart;
        private System.Windows.Forms.Button btnStop;
        private System.Windows.Forms.ComboBox cbMonitors;
    }
}