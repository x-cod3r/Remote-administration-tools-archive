namespace MLSurveillanceServer.Forms
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
            this.chatLog = new System.Windows.Forms.RichTextBox();
            this.inputBox = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // chatLog
            // 
            this.chatLog.Location = new System.Drawing.Point(1, 1);
            this.chatLog.Name = "chatLog";
            this.chatLog.ReadOnly = true;
            this.chatLog.Size = new System.Drawing.Size(308, 231);
            this.chatLog.TabIndex = 0;
            this.chatLog.Text = "";
            // 
            // inputBox
            // 
            this.inputBox.Location = new System.Drawing.Point(1, 238);
            this.inputBox.Name = "inputBox";
            this.inputBox.Size = new System.Drawing.Size(308, 20);
            this.inputBox.TabIndex = 1;
            this.inputBox.TextChanged += new System.EventHandler(this.inputBox_TextChanged);
            this.inputBox.KeyDown += new System.Windows.Forms.KeyEventHandler(this.inputBox_KeyDown);
            // 
            // RemoteChatForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(312, 262);
            this.Controls.Add(this.inputBox);
            this.Controls.Add(this.chatLog);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.KeyPreview = true;
            this.Name = "RemoteChatForm";
            this.Text = "Remote Chat";
            this.Load += new System.EventHandler(this.remoteChatForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.RichTextBox chatLog;
        private System.Windows.Forms.TextBox inputBox;
    }
}