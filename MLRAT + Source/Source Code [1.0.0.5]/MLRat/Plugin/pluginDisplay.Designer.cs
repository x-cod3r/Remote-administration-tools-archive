namespace MLRat.Plugin
{
    partial class pluginDisplay
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.pluginName = new System.Windows.Forms.Label();
            this.descLabel = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.devName = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.serverID = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.clientID = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(114, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Plugin Name:";
            // 
            // pluginName
            // 
            this.pluginName.AutoSize = true;
            this.pluginName.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pluginName.Location = new System.Drawing.Point(141, 11);
            this.pluginName.Name = "pluginName";
            this.pluginName.Size = new System.Drawing.Size(56, 18);
            this.pluginName.TabIndex = 1;
            this.pluginName.Text = "-plugin-";
            // 
            // descLabel
            // 
            this.descLabel.AutoSize = true;
            this.descLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.descLabel.Location = new System.Drawing.Point(141, 30);
            this.descLabel.Name = "descLabel";
            this.descLabel.Size = new System.Drawing.Size(41, 15);
            this.descLabel.TabIndex = 3;
            this.descLabel.Text = "-desc-";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(12, 30);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(84, 15);
            this.label3.TabIndex = 2;
            this.label3.Text = "Description:";
            // 
            // devName
            // 
            this.devName.AutoSize = true;
            this.devName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.devName.Location = new System.Drawing.Point(141, 45);
            this.devName.Name = "devName";
            this.devName.Size = new System.Drawing.Size(34, 15);
            this.devName.TabIndex = 5;
            this.devName.Text = "-dev-";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(13, 45);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(76, 15);
            this.label5.TabIndex = 4;
            this.label5.Text = "Developer:";
            // 
            // serverID
            // 
            this.serverID.AutoSize = true;
            this.serverID.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.serverID.Location = new System.Drawing.Point(141, 60);
            this.serverID.Name = "serverID";
            this.serverID.Size = new System.Drawing.Size(38, 15);
            this.serverID.TabIndex = 7;
            this.serverID.Text = "-spid-";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(13, 60);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(111, 15);
            this.label4.TabIndex = 6;
            this.label4.Text = "ServerPlugin ID:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(13, 75);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(107, 15);
            this.label6.TabIndex = 8;
            this.label6.Text = "ClientPlugin ID:";
            // 
            // clientID
            // 
            this.clientID.AutoSize = true;
            this.clientID.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.clientID.Location = new System.Drawing.Point(141, 75);
            this.clientID.Name = "clientID";
            this.clientID.Size = new System.Drawing.Size(34, 15);
            this.clientID.TabIndex = 9;
            this.clientID.Text = "-clid-";
            // 
            // pluginDisplay
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.clientID);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.serverID);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.devName);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.descLabel);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.pluginName);
            this.Controls.Add(this.label1);
            this.Name = "pluginDisplay";
            this.Size = new System.Drawing.Size(443, 99);
            this.Load += new System.EventHandler(this.pluginDisplay_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label pluginName;
        private System.Windows.Forms.Label descLabel;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label devName;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label serverID;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label clientID;
    }
}
