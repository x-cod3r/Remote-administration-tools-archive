namespace MLMiscServer.Forms
{
    partial class formComputerPower
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
            this.rbShutdown = new System.Windows.Forms.RadioButton();
            this.rbRestart = new System.Windows.Forms.RadioButton();
            this.rbLogOff = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            this.SuspendLayout();
            // 
            // rbShutdown
            // 
            this.rbShutdown.AutoSize = true;
            this.rbShutdown.Checked = true;
            this.rbShutdown.Location = new System.Drawing.Point(12, 12);
            this.rbShutdown.Name = "rbShutdown";
            this.rbShutdown.Size = new System.Drawing.Size(73, 17);
            this.rbShutdown.TabIndex = 0;
            this.rbShutdown.TabStop = true;
            this.rbShutdown.Text = "Shutdown";
            this.rbShutdown.UseVisualStyleBackColor = true;
            // 
            // rbRestart
            // 
            this.rbRestart.AutoSize = true;
            this.rbRestart.Location = new System.Drawing.Point(91, 12);
            this.rbRestart.Name = "rbRestart";
            this.rbRestart.Size = new System.Drawing.Size(59, 17);
            this.rbRestart.TabIndex = 1;
            this.rbRestart.TabStop = true;
            this.rbRestart.Text = "Restart";
            this.rbRestart.UseVisualStyleBackColor = true;
            // 
            // rbLogOff
            // 
            this.rbLogOff.AutoSize = true;
            this.rbLogOff.Location = new System.Drawing.Point(156, 12);
            this.rbLogOff.Name = "rbLogOff";
            this.rbLogOff.Size = new System.Drawing.Size(57, 17);
            this.rbLogOff.TabIndex = 2;
            this.rbLogOff.TabStop = true;
            this.rbLogOff.Text = "LogOff";
            this.rbLogOff.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 41);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(37, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Delay:";
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(52, 39);
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(160, 20);
            this.numericUpDown1.TabIndex = 4;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(70, 72);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 5;
            this.button1.Text = "OK";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // formComputerPower
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(224, 103);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.numericUpDown1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.rbLogOff);
            this.Controls.Add(this.rbRestart);
            this.Controls.Add(this.rbShutdown);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "formComputerPower";
            this.Text = "Computer Power";
            this.Load += new System.EventHandler(this.formComputerPower_Load);
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.RadioButton rbShutdown;
        private System.Windows.Forms.RadioButton rbRestart;
        private System.Windows.Forms.RadioButton rbLogOff;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.Button button1;
    }
}