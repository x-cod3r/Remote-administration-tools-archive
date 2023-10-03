namespace MLManagementServer.Forms
{
    partial class formFileProperties
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tbPath = new System.Windows.Forms.TextBox();
            this.tbName = new System.Windows.Forms.TextBox();
            this.tbCreation = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.tbModified = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.lbReadOnly = new System.Windows.Forms.Label();
            this.lbSystem = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.lbSize = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(4, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Name:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(5, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(32, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Path:";
            // 
            // tbPath
            // 
            this.tbPath.Location = new System.Drawing.Point(60, 48);
            this.tbPath.Name = "tbPath";
            this.tbPath.ReadOnly = true;
            this.tbPath.Size = new System.Drawing.Size(237, 20);
            this.tbPath.TabIndex = 2;
            // 
            // tbName
            // 
            this.tbName.Location = new System.Drawing.Point(60, 22);
            this.tbName.Name = "tbName";
            this.tbName.ReadOnly = true;
            this.tbName.Size = new System.Drawing.Size(237, 20);
            this.tbName.TabIndex = 3;
            this.tbName.Text = "Loading...";
            // 
            // tbCreation
            // 
            this.tbCreation.Location = new System.Drawing.Point(60, 74);
            this.tbCreation.Name = "tbCreation";
            this.tbCreation.ReadOnly = true;
            this.tbCreation.Size = new System.Drawing.Size(237, 20);
            this.tbCreation.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(5, 77);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(49, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Creation:";
            // 
            // tbModified
            // 
            this.tbModified.Location = new System.Drawing.Point(60, 100);
            this.tbModified.Name = "tbModified";
            this.tbModified.ReadOnly = true;
            this.tbModified.Size = new System.Drawing.Size(237, 20);
            this.tbModified.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(4, 103);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(50, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Modified:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(5, 152);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(60, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Read Only:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(5, 181);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(63, 13);
            this.label6.TabIndex = 9;
            this.label6.Text = "System File:";
            // 
            // lbReadOnly
            // 
            this.lbReadOnly.AutoSize = true;
            this.lbReadOnly.Location = new System.Drawing.Point(71, 152);
            this.lbReadOnly.Name = "lbReadOnly";
            this.lbReadOnly.Size = new System.Drawing.Size(32, 13);
            this.lbReadOnly.TabIndex = 10;
            this.lbReadOnly.Text = "False";
            // 
            // lbSystem
            // 
            this.lbSystem.AutoSize = true;
            this.lbSystem.Location = new System.Drawing.Point(71, 181);
            this.lbSystem.Name = "lbSystem";
            this.lbSystem.Size = new System.Drawing.Size(32, 13);
            this.lbSystem.TabIndex = 11;
            this.lbSystem.Text = "False";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(5, 129);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(30, 13);
            this.label7.TabIndex = 12;
            this.label7.Text = "Size:";
            // 
            // lbSize
            // 
            this.lbSize.AutoSize = true;
            this.lbSize.Location = new System.Drawing.Point(71, 129);
            this.lbSize.Name = "lbSize";
            this.lbSize.Size = new System.Drawing.Size(22, 13);
            this.lbSize.TabIndex = 13;
            this.lbSize.Text = "0 b";
            // 
            // formFileProperties
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(302, 203);
            this.Controls.Add(this.lbSize);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.lbSystem);
            this.Controls.Add(this.lbReadOnly);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.tbModified);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.tbCreation);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.tbName);
            this.Controls.Add(this.tbPath);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "formFileProperties";
            this.Text = "Properties";
            this.Load += new System.EventHandler(this.formFileProperties_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tbPath;
        private System.Windows.Forms.TextBox tbName;
        private System.Windows.Forms.TextBox tbCreation;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbModified;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lbReadOnly;
        private System.Windows.Forms.Label lbSystem;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label lbSize;
    }
}