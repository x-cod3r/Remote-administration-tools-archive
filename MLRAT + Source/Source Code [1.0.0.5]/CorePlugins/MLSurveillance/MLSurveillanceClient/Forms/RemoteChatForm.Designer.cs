namespace MLSurveillanceClient.Forms
{
    partial class RemoteChatForm
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
            this.inputBox = new System.Windows.Forms.TextBox();
            this.chatLog = new System.Windows.Forms.RichTextBox();
            this.SuspendLayout();
            // 
            // inputBox
            // 
            this.inputBox.Location = new System.Drawing.Point(11, 243);
            this.inputBox.MaxLength = 500;
            this.inputBox.Name = "inputBox";
            this.inputBox.Size = new System.Drawing.Size(308, 20);
            this.inputBox.TabIndex = 3;
            this.inputBox.TextChanged += new System.EventHandler(this.inputBox_TextChanged);
            this.inputBox.KeyDown += new System.Windows.Forms.KeyEventHandler(this.inputBox_KeyDown);
            // 
            // chatLog
            // 
            this.chatLog.Location = new System.Drawing.Point(11, 6);
            this.chatLog.Name = "chatLog";
            this.chatLog.ReadOnly = true;
            this.chatLog.Size = new System.Drawing.Size(308, 231);
            this.chatLog.TabIndex = 2;
            this.chatLog.Text = "";
            // 
            // RemoteChatForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(328, 269);
            this.Controls.Add(this.inputBox);
            this.Controls.Add(this.chatLog);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.KeyPreview = true;
            this.Name = "RemoteChatForm";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.Text = "RemoteChatForm";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.RemoteChatForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox inputBox;
        private System.Windows.Forms.RichTextBox chatLog;
    }
}