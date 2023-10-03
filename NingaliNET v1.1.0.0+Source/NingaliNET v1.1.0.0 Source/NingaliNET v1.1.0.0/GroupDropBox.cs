using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x02000050 RID: 80
	internal class GroupDropBox : ThemeContainerControl
	{
		// Token: 0x17000365 RID: 869
		// (get) Token: 0x060009F1 RID: 2545 RVA: 0x0000535E File Offset: 0x0000355E
		// (set) Token: 0x060009F2 RID: 2546 RVA: 0x00005366 File Offset: 0x00003566
		public bool Checked
		{
			get
			{
				return this._Checked;
			}
			set
			{
				this._Checked = value;
				this.Invalidate();
			}
		}

		// Token: 0x17000366 RID: 870
		// (get) Token: 0x060009F3 RID: 2547 RVA: 0x00055348 File Offset: 0x00053548
		// (set) Token: 0x060009F4 RID: 2548 RVA: 0x00005375 File Offset: 0x00003575
		public Size OpenSize
		{
			get
			{
				return this._OpenedSize;
			}
			set
			{
				this._OpenedSize = value;
				this.Invalidate();
			}
		}

		// Token: 0x060009F5 RID: 2549 RVA: 0x00055360 File Offset: 0x00053560
		public GroupDropBox()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.AllowTransparent();
			Size size = new Size(90, 30);
			this.Size = size;
			size = new Size(5, 30);
			this.MinimumSize = size;
			this._Checked = true;
			this.Resize += new EventHandler(this.GroupDropBox_Resize);
			this.MouseDown += new MouseEventHandler(this.GroupDropBox_MouseDown);
		}

		// Token: 0x060009F6 RID: 2550 RVA: 0x000553D0 File Offset: 0x000535D0
		public override void PaintHook()
		{
			this.Font = new Font("arial", 8f);
			this.ForeColor = Color.FromArgb(245, 245, 245);
			checked
			{
				if (this._Checked)
				{
					this.G.SmoothingMode = SmoothingMode.AntiAlias;
					this.G.Clear(Color.FromArgb(0, 0, 0));
					Graphics arg_81_0 = this.G;
					Brush arg_81_1 = new SolidBrush(Color.FromArgb(10, 10, 10));
					Rectangle rect = new Rectangle(0, 0, this.Width, 30);
					arg_81_0.FillRectangle(arg_81_1, rect);
					this.G.DrawLine(new Pen(Color.FromArgb(15, 15, 15)), 1, 1, this.Width - 2, 1);
					this.G.DrawRectangle(new Pen(Color.FromArgb(0, 0, 0)), 0, 0, this.Width - 1, this.Height - 1);
					this.G.DrawRectangle(new Pen(Color.FromArgb(0, 0, 0)), 0, 0, this.Width - 1, 30);
					this.Size = this._OpenedSize;
					this.G.DrawString("t", new Font("Marlett", 12f), new SolidBrush(this.ForeColor), (float)(this.Width - 25), 5f);
				}
				else
				{
					this.G.SmoothingMode = SmoothingMode.AntiAlias;
					this.G.Clear(Color.FromArgb(0, 0, 0));
					Graphics arg_18B_0 = this.G;
					Brush arg_18B_1 = new SolidBrush(Color.FromArgb(10, 10, 10));
					Rectangle rect = new Rectangle(0, 0, this.Width, 30);
					arg_18B_0.FillRectangle(arg_18B_1, rect);
					this.G.DrawLine(new Pen(Color.FromArgb(15, 15, 15)), 1, 1, this.Width - 2, 1);
					this.G.DrawRectangle(new Pen(Color.FromArgb(0, 0, 0)), 0, 0, this.Width - 1, this.Height - 1);
					this.G.DrawRectangle(new Pen(Color.FromArgb(0, 0, 0)), 0, 0, this.Width - 1, 30);
					Size size = new Size(this.Width, 30);
					this.Size = size;
					this.G.DrawString("u", new Font("Marlett", 12f), new SolidBrush(this.ForeColor), (float)(this.Width - 25), 5f);
				}
				this.G.DrawString(this.Text, this.Font, new SolidBrush(this.ForeColor), 7f, 6f);
			}
		}

		// Token: 0x060009F7 RID: 2551 RVA: 0x00005384 File Offset: 0x00003584
		private void GroupDropBox_Resize(object sender, EventArgs e)
		{
			if (this._Checked)
			{
				this._OpenedSize = this.Size;
			}
		}

		// Token: 0x060009F8 RID: 2552 RVA: 0x0000539A File Offset: 0x0000359A
		protected override void OnMouseMove(MouseEventArgs e)
		{
			base.OnMouseMove(e);
			this.X = e.X;
			this.y = e.Y;
			this.Invalidate();
		}

		// Token: 0x060009F9 RID: 2553 RVA: 0x0005565C File Offset: 0x0005385C
		private void GroupDropBox_MouseDown(object sender, MouseEventArgs e)
		{
			if (this.X >= checked(this.Width - 22) && this.y <= 30)
			{
				switch (this.Checked)
				{
				case false:
					this.Checked = true;
					break;
				case true:
					this.Checked = false;
					break;
				}
			}
		}

		// Token: 0x040004DA RID: 1242
		private bool _Checked;

		// Token: 0x040004DB RID: 1243
		private int X;

		// Token: 0x040004DC RID: 1244
		private int y;

		// Token: 0x040004DD RID: 1245
		private Size _OpenedSize;
	}
}
