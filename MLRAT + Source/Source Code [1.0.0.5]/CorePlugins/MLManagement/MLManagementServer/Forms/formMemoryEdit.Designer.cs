namespace MLManagementServer.Forms
{
    partial class formMemoryEdit
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
            this.cbModules = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.nudValue = new System.Windows.Forms.NumericUpDown();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.nudOffset = new MLManagementServer.Forms.HexUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.nudValue)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudOffset)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(45, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Module:";
            // 
            // cbModules
            // 
            this.cbModules.FormattingEnabled = true;
            this.cbModules.Location = new System.Drawing.Point(63, 6);
            this.cbModules.Name = "cbModules";
            this.cbModules.Size = new System.Drawing.Size(180, 21);
            this.cbModules.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 35);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(38, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Offset:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(13, 62);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Value:";
            // 
            // nudValue
            // 
            this.nudValue.Location = new System.Drawing.Point(63, 60);
            this.nudValue.Maximum = new decimal(new int[] {
            1569325056,
            23283064,
            0,
            0});
            this.nudValue.Name = "nudValue";
            this.nudValue.Size = new System.Drawing.Size(156, 20);
            this.nudValue.TabIndex = 5;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(94, 86);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 6;
            this.button1.Text = "OK";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(225, 57);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(18, 23);
            this.button2.TabIndex = 7;
            this.button2.Text = "R";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // nudOffset
            // 
            this.nudOffset.Hexadecimal = true;
            this.nudOffset.Location = new System.Drawing.Point(63, 33);
            this.nudOffset.Maximum = new decimal(new int[] {
            1000000,
            0,
            0,
            0});
            this.nudOffset.Name = "nudOffset";
            this.nudOffset.Size = new System.Drawing.Size(180, 20);
            this.nudOffset.TabIndex = 3;
            // 
            // formMemoryEdit
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(252, 121);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.nudValue);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.nudOffset);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cbModules);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "formMemoryEdit";
            this.Text = "Edit Memory";
            this.Load += new System.EventHandler(this.formMemoryEdit_Load);
            ((System.ComponentModel.ISupportInitialize)(this.nudValue)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nudOffset)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbModules;
        private System.Windows.Forms.Label label2;
        private HexUpDown nudOffset;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.NumericUpDown nudValue;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
    }
}