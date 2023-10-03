using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000058 RID: 88
	internal abstract class ThemeContainer154 : ContainerControl
	{
		// Token: 0x06000A2B RID: 2603 RVA: 0x0005649C File Offset: 0x0005469C
		public ThemeContainer154()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.Messages = new Message[9];
			this._SmartBounds = true;
			this._Movable = true;
			this._Sizable = true;
			this.Items = new Dictionary<string, Color>();
			this._Header = 24;
			this.SetStyle(ControlStyles.UserPaint | ControlStyles.Opaque | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer, true);
			this._ImageSize = Size.Empty;
			this.Font = new Font("Verdana", 8f);
			this.MeasureBitmap = new Bitmap(1, 1);
			this.MeasureGraphics = Graphics.FromImage(this.MeasureBitmap);
			this.DrawRadialPath = new GraphicsPath();
			this.InvalidateCustimization();
		}

		// Token: 0x06000A2C RID: 2604 RVA: 0x00056544 File Offset: 0x00054744
		protected sealed override void OnHandleCreated(EventArgs e)
		{
			if (this.DoneCreation)
			{
				this.InitializeMessages();
			}
			this.InvalidateCustimization();
			this.ColorHook();
			if (this._LockWidth != 0)
			{
				this.Width = this._LockWidth;
			}
			if (this._LockHeight != 0)
			{
				this.Height = this._LockHeight;
			}
			if (!this._ControlMode)
			{
				base.Dock = DockStyle.None;
			}
			this.Transparent = this._Transparent;
			if (this._Transparent && this._BackColor)
			{
				this.BackColor = Color.Transparent;
			}
			base.OnHandleCreated(e);
		}

		// Token: 0x06000A2D RID: 2605 RVA: 0x000565E8 File Offset: 0x000547E8
		protected sealed override void OnParentChanged(EventArgs e)
		{
			base.OnParentChanged(e);
			if (this.Parent != null)
			{
				this._IsParentForm = (this.Parent is Form);
				if (!this._ControlMode)
				{
					this.InitializeMessages();
					if (this._IsParentForm)
					{
						this.ParentForm.FormBorderStyle = this._BorderStyle;
						this.ParentForm.TransparencyKey = this._TransparencyKey;
						if (!this.DesignMode)
						{
							this.ParentForm.Shown += new EventHandler(this.FormShown);
						}
					}
					this.Parent.BackColor = this.BackColor;
				}
				this.OnCreation();
				this.DoneCreation = true;
				this.InvalidateTimer();
			}
		}

		// Token: 0x06000A2E RID: 2606 RVA: 0x0000545D File Offset: 0x0000365D
		private void DoAnimation(bool i)
		{
			this.OnAnimation();
			if (i)
			{
				this.Invalidate();
			}
		}

		// Token: 0x06000A2F RID: 2607 RVA: 0x000566A0 File Offset: 0x000548A0
		protected sealed override void OnPaint(PaintEventArgs e)
		{
			if (this.Width != 0 && this.Height != 0)
			{
				if (this._Transparent && this._ControlMode)
				{
					this.PaintHook();
					e.Graphics.DrawImage(this.B, 0, 0);
				}
				else
				{
					this.G = e.Graphics;
					this.PaintHook();
				}
			}
		}

		// Token: 0x06000A30 RID: 2608 RVA: 0x0000546E File Offset: 0x0000366E
		protected override void OnHandleDestroyed(EventArgs e)
		{
			ThemeShare.RemoveAnimationCallback(new ThemeShare.AnimationDelegate(this.DoAnimation));
			base.OnHandleDestroyed(e);
		}

		// Token: 0x06000A31 RID: 2609 RVA: 0x00056708 File Offset: 0x00054908
		private void FormShown(object sender, EventArgs e)
		{
			if (!this._ControlMode && !this.HasShown)
			{
				if (this._StartPosition == FormStartPosition.CenterParent || this._StartPosition == FormStartPosition.CenterScreen)
				{
					Rectangle bounds = Screen.PrimaryScreen.Bounds;
					Rectangle bounds2 = this.ParentForm.Bounds;
					Form arg_79_0 = this.ParentForm;
					Point location = checked(new Point(bounds.Width / 2 - bounds2.Width / 2, bounds.Height / 2 - bounds2.Width / 2));
					arg_79_0.Location = location;
				}
				this.HasShown = true;
			}
		}

		// Token: 0x06000A32 RID: 2610 RVA: 0x0005679C File Offset: 0x0005499C
		protected sealed override void OnSizeChanged(EventArgs e)
		{
			if (this._Movable && !this._ControlMode)
			{
				this.Frame = checked(new Rectangle(7, 7, this.Width - 14, this._Header - 7));
			}
			this.InvalidateBitmap();
			this.Invalidate();
			base.OnSizeChanged(e);
		}

		// Token: 0x06000A33 RID: 2611 RVA: 0x00005489 File Offset: 0x00003689
		protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
		{
			if (this._LockWidth != 0)
			{
				width = this._LockWidth;
			}
			if (this._LockHeight != 0)
			{
				height = this._LockHeight;
			}
			base.SetBoundsCore(x, y, width, height, specified);
		}

		// Token: 0x06000A34 RID: 2612 RVA: 0x000054C4 File Offset: 0x000036C4
		private void SetState(MouseState current)
		{
			this.State = current;
			this.Invalidate();
		}

		// Token: 0x06000A35 RID: 2613 RVA: 0x000567F0 File Offset: 0x000549F0
		protected override void OnMouseMove(MouseEventArgs e)
		{
			if ((!this._IsParentForm || this.ParentForm.WindowState != FormWindowState.Maximized) && (this._Sizable && !this._ControlMode))
			{
				this.InvalidateMouse();
			}
			base.OnMouseMove(e);
		}

		// Token: 0x06000A36 RID: 2614 RVA: 0x000054D3 File Offset: 0x000036D3
		protected override void OnEnabledChanged(EventArgs e)
		{
			if (this.Enabled)
			{
				this.SetState(MouseState.None);
			}
			else
			{
				this.SetState(MouseState.Block);
			}
			base.OnEnabledChanged(e);
		}

		// Token: 0x06000A37 RID: 2615 RVA: 0x000054F4 File Offset: 0x000036F4
		protected override void OnMouseEnter(EventArgs e)
		{
			this.SetState(MouseState.Over);
			base.OnMouseEnter(e);
		}

		// Token: 0x06000A38 RID: 2616 RVA: 0x00005504 File Offset: 0x00003704
		protected override void OnMouseUp(MouseEventArgs e)
		{
			this.SetState(MouseState.Over);
			base.OnMouseUp(e);
		}

		// Token: 0x06000A39 RID: 2617 RVA: 0x0005683C File Offset: 0x00054A3C
		protected override void OnMouseLeave(EventArgs e)
		{
			this.SetState(MouseState.None);
			if (this.GetChildAtPoint(this.PointToClient(Control.MousePosition)) != null && (this._Sizable && !this._ControlMode))
			{
				this.Cursor = Cursors.Default;
				this.Previous = 0;
			}
			base.OnMouseLeave(e);
		}

		// Token: 0x06000A3A RID: 2618 RVA: 0x00056898 File Offset: 0x00054A98
		protected override void OnMouseDown(MouseEventArgs e)
		{
			if (e.Button == MouseButtons.Left)
			{
				this.SetState(MouseState.Down);
			}
			if ((!this._IsParentForm || this.ParentForm.WindowState != FormWindowState.Maximized) && !this._ControlMode)
			{
				if (this._Movable && this.Frame.Contains(e.Location))
				{
					this.Capture = false;
					this.WM_LMBUTTONDOWN = true;
					this.DefWndProc(ref this.Messages[0]);
				}
				else
				{
					bool arg_97_0;
					if (this._Sizable)
					{
						if (this.Previous != 0)
						{
							arg_97_0 = true;
							goto IL_97;
						}
					}
					arg_97_0 = false;
					IL_97:
					if (arg_97_0)
					{
						this.Capture = false;
						this.WM_LMBUTTONDOWN = true;
						this.DefWndProc(ref this.Messages[this.Previous]);
					}
				}
			}
			base.OnMouseDown(e);
		}

		// Token: 0x06000A3B RID: 2619 RVA: 0x0005696C File Offset: 0x00054B6C
		protected override void WndProc(ref Message m)
		{
			base.WndProc(ref m);
			bool arg_22_0;
			if (this.WM_LMBUTTONDOWN)
			{
				if (m.Msg == 513)
				{
					arg_22_0 = true;
					goto IL_22;
				}
			}
			arg_22_0 = false;
			IL_22:
			if (arg_22_0)
			{
				this.WM_LMBUTTONDOWN = false;
				this.SetState(MouseState.Over);
				if (this._SmartBounds)
				{
					if (this.IsParentMdi)
					{
						Rectangle bounds = new Rectangle(Point.Empty, this.Parent.Parent.Size);
						this.CorrectBounds(bounds);
					}
					else
					{
						this.CorrectBounds(Screen.FromControl(this.Parent).WorkingArea);
					}
				}
			}
		}

		// Token: 0x06000A3C RID: 2620 RVA: 0x000569FC File Offset: 0x00054BFC
		private int GetIndex()
		{
			this.GetIndexPoint = this.PointToClient(Control.MousePosition);
			this.B1 = (this.GetIndexPoint.X < 7);
			checked
			{
				this.B2 = (this.GetIndexPoint.X > this.Width - 7);
				this.B3 = (this.GetIndexPoint.Y < 7);
				this.B4 = (this.GetIndexPoint.Y > this.Height - 7);
				int result;
				if (this.B1 && this.B3)
				{
					result = 4;
				}
				else if (this.B1 && this.B4)
				{
					result = 7;
				}
				else if (this.B2 && this.B3)
				{
					result = 5;
				}
				else if (this.B2 && this.B4)
				{
					result = 8;
				}
				else if (this.B1)
				{
					result = 1;
				}
				else if (this.B2)
				{
					result = 2;
				}
				else if (this.B3)
				{
					result = 3;
				}
				else if (this.B4)
				{
					result = 6;
				}
				else
				{
					result = 0;
				}
				return result;
			}
		}

		// Token: 0x06000A3D RID: 2621 RVA: 0x00056B18 File Offset: 0x00054D18
		private void InvalidateMouse()
		{
			this.Current = this.GetIndex();
			if (this.Current != this.Previous)
			{
				this.Previous = this.Current;
				switch (this.Previous)
				{
				case 0:
					this.Cursor = Cursors.Default;
					break;
				case 1:
				case 2:
					this.Cursor = Cursors.SizeWE;
					break;
				case 3:
				case 6:
					this.Cursor = Cursors.SizeNS;
					break;
				case 4:
				case 8:
					this.Cursor = Cursors.SizeNWSE;
					break;
				case 5:
				case 7:
					this.Cursor = Cursors.SizeNESW;
					break;
				}
			}
		}

		// Token: 0x06000A3E RID: 2622 RVA: 0x00056BC0 File Offset: 0x00054DC0
		private void InitializeMessages()
		{
			Message[] arg_2F_0_cp_0 = this.Messages;
			int arg_2F_0_cp_1 = 0;
			IntPtr arg_2A_0 = this.Parent.Handle;
			int arg_2A_1 = 161;
			IntPtr wparam = new IntPtr(2);
			arg_2F_0_cp_0[arg_2F_0_cp_1] = Message.Create(arg_2A_0, arg_2A_1, wparam, IntPtr.Zero);
			int num = 1;
			checked
			{
				do
				{
					Message[] arg_68_0_cp_0 = this.Messages;
					int arg_68_0_cp_1 = num;
					IntPtr arg_63_0 = this.Parent.Handle;
					int arg_63_1 = 161;
					wparam = new IntPtr(num + 9);
					arg_68_0_cp_0[arg_68_0_cp_1] = Message.Create(arg_63_0, arg_63_1, wparam, IntPtr.Zero);
					num++;
				}
				while (num <= 8);
			}
		}

		// Token: 0x06000A3F RID: 2623 RVA: 0x00056C44 File Offset: 0x00054E44
		private void CorrectBounds(Rectangle bounds)
		{
			if (this.Parent.Width > bounds.Width)
			{
				this.Parent.Width = bounds.Width;
			}
			if (this.Parent.Height > bounds.Height)
			{
				this.Parent.Height = bounds.Height;
			}
			int num = this.Parent.Location.X;
			Point location = this.Parent.Location;
			int num2 = location.Y;
			if (num < bounds.X)
			{
				num = bounds.X;
			}
			if (num2 < bounds.Y)
			{
				num2 = bounds.Y;
			}
			checked
			{
				int num3 = bounds.X + bounds.Width;
				int num4 = bounds.Y + bounds.Height;
				if (num + this.Parent.Width > num3)
				{
					num = num3 - this.Parent.Width;
				}
				if (num2 + this.Parent.Height > num4)
				{
					num2 = num4 - this.Parent.Height;
				}
				Control arg_113_0 = this.Parent;
				location = new Point(num, num2);
				arg_113_0.Location = location;
			}
		}

		// Token: 0x17000387 RID: 903
		// (get) Token: 0x06000A40 RID: 2624 RVA: 0x00056D6C File Offset: 0x00054F6C
		// (set) Token: 0x06000A41 RID: 2625 RVA: 0x00005514 File Offset: 0x00003714
		public override DockStyle Dock
		{
			get
			{
				return base.Dock;
			}
			set
			{
				if (this._ControlMode)
				{
					base.Dock = value;
				}
			}
		}

		// Token: 0x17000388 RID: 904
		// (get) Token: 0x06000A42 RID: 2626 RVA: 0x00056D84 File Offset: 0x00054F84
		// (set) Token: 0x06000A43 RID: 2627 RVA: 0x00056D9C File Offset: 0x00054F9C
		[Category("Misc")]
		public override Color BackColor
		{
			get
			{
				return base.BackColor;
			}
			set
			{
				if (!(value == base.BackColor))
				{
					if (!this.IsHandleCreated && this._ControlMode && value == Color.Transparent)
					{
						this._BackColor = true;
					}
					else
					{
						base.BackColor = value;
						if (this.Parent != null)
						{
							if (!this._ControlMode)
							{
								this.Parent.BackColor = value;
							}
							this.ColorHook();
						}
					}
				}
			}
		}

		// Token: 0x17000389 RID: 905
		// (get) Token: 0x06000A44 RID: 2628 RVA: 0x00056E18 File Offset: 0x00055018
		// (set) Token: 0x06000A45 RID: 2629 RVA: 0x00056E30 File Offset: 0x00055030
		public override Size MinimumSize
		{
			get
			{
				return base.MinimumSize;
			}
			set
			{
				base.MinimumSize = value;
				if (this.Parent != null)
				{
					this.Parent.MinimumSize = value;
				}
			}
		}

		// Token: 0x1700038A RID: 906
		// (get) Token: 0x06000A46 RID: 2630 RVA: 0x00056E60 File Offset: 0x00055060
		// (set) Token: 0x06000A47 RID: 2631 RVA: 0x00056E78 File Offset: 0x00055078
		public override Size MaximumSize
		{
			get
			{
				return base.MaximumSize;
			}
			set
			{
				base.MaximumSize = value;
				if (this.Parent != null)
				{
					this.Parent.MaximumSize = value;
				}
			}
		}

		// Token: 0x1700038B RID: 907
		// (get) Token: 0x06000A48 RID: 2632 RVA: 0x00054190 File Offset: 0x00052390
		// (set) Token: 0x06000A49 RID: 2633 RVA: 0x00004F59 File Offset: 0x00003159
		public override string Text
		{
			get
			{
				return base.Text;
			}
			set
			{
				base.Text = value;
				this.Invalidate();
			}
		}

		// Token: 0x1700038C RID: 908
		// (get) Token: 0x06000A4A RID: 2634 RVA: 0x00056EA8 File Offset: 0x000550A8
		// (set) Token: 0x06000A4B RID: 2635 RVA: 0x00005528 File Offset: 0x00003728
		public override Font Font
		{
			get
			{
				return base.Font;
			}
			set
			{
				base.Font = value;
				this.Invalidate();
			}
		}

		// Token: 0x1700038D RID: 909
		// (get) Token: 0x06000A4C RID: 2636 RVA: 0x00056EC0 File Offset: 0x000550C0
		// (set) Token: 0x06000A4D RID: 2637 RVA: 0x00002F54 File Offset: 0x00001154
		[EditorBrowsable(EditorBrowsableState.Never), Browsable(false), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
		public override Color ForeColor
		{
			get
			{
				return Color.Empty;
			}
			set
			{
			}
		}

		// Token: 0x1700038E RID: 910
		// (get) Token: 0x06000A4E RID: 2638 RVA: 0x00056ED4 File Offset: 0x000550D4
		// (set) Token: 0x06000A4F RID: 2639 RVA: 0x00002F54 File Offset: 0x00001154
		[Browsable(false), EditorBrowsable(EditorBrowsableState.Never), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
		public override Image BackgroundImage
		{
			get
			{
				return null;
			}
			set
			{
			}
		}

		// Token: 0x1700038F RID: 911
		// (get) Token: 0x06000A50 RID: 2640 RVA: 0x00056EE4 File Offset: 0x000550E4
		// (set) Token: 0x06000A51 RID: 2641 RVA: 0x00002F54 File Offset: 0x00001154
		[EditorBrowsable(EditorBrowsableState.Never), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden), Browsable(false)]
		public override ImageLayout BackgroundImageLayout
		{
			get
			{
				return ImageLayout.None;
			}
			set
			{
			}
		}

		// Token: 0x17000390 RID: 912
		// (get) Token: 0x06000A52 RID: 2642 RVA: 0x00005537 File Offset: 0x00003737
		// (set) Token: 0x06000A53 RID: 2643 RVA: 0x0000553F File Offset: 0x0000373F
		public bool SmartBounds
		{
			get
			{
				return this._SmartBounds;
			}
			set
			{
				this._SmartBounds = value;
			}
		}

		// Token: 0x17000391 RID: 913
		// (get) Token: 0x06000A54 RID: 2644 RVA: 0x00005548 File Offset: 0x00003748
		// (set) Token: 0x06000A55 RID: 2645 RVA: 0x00005550 File Offset: 0x00003750
		public bool Movable
		{
			get
			{
				return this._Movable;
			}
			set
			{
				this._Movable = value;
			}
		}

		// Token: 0x17000392 RID: 914
		// (get) Token: 0x06000A56 RID: 2646 RVA: 0x00005559 File Offset: 0x00003759
		// (set) Token: 0x06000A57 RID: 2647 RVA: 0x00005561 File Offset: 0x00003761
		public bool Sizable
		{
			get
			{
				return this._Sizable;
			}
			set
			{
				this._Sizable = value;
			}
		}

		// Token: 0x17000393 RID: 915
		// (get) Token: 0x06000A58 RID: 2648 RVA: 0x00056EF4 File Offset: 0x000550F4
		// (set) Token: 0x06000A59 RID: 2649 RVA: 0x00056F30 File Offset: 0x00055130
		public Color TransparencyKey
		{
			get
			{
				Color transparencyKey;
				if (this._IsParentForm && !this._ControlMode)
				{
					transparencyKey = this.ParentForm.TransparencyKey;
				}
				else
				{
					transparencyKey = this._TransparencyKey;
				}
				return transparencyKey;
			}
			set
			{
				if (!(value == this._TransparencyKey))
				{
					this._TransparencyKey = value;
					if (this._IsParentForm && !this._ControlMode)
					{
						this.ParentForm.TransparencyKey = value;
						this.ColorHook();
					}
				}
			}
		}

		// Token: 0x17000394 RID: 916
		// (get) Token: 0x06000A5A RID: 2650 RVA: 0x00056F7C File Offset: 0x0005517C
		// (set) Token: 0x06000A5B RID: 2651 RVA: 0x00056FB8 File Offset: 0x000551B8
		public FormBorderStyle BorderStyle
		{
			get
			{
				FormBorderStyle result;
				if (this._IsParentForm && !this._ControlMode)
				{
					result = this.ParentForm.FormBorderStyle;
				}
				else
				{
					result = this._BorderStyle;
				}
				return result;
			}
			set
			{
				this._BorderStyle = value;
				if (this._IsParentForm && !this._ControlMode)
				{
					this.ParentForm.FormBorderStyle = value;
					if (value != FormBorderStyle.None)
					{
						this.Movable = false;
						this.Sizable = false;
					}
				}
			}
		}

		// Token: 0x17000395 RID: 917
		// (get) Token: 0x06000A5C RID: 2652 RVA: 0x00057008 File Offset: 0x00055208
		// (set) Token: 0x06000A5D RID: 2653 RVA: 0x0000556A File Offset: 0x0000376A
		public FormStartPosition StartPosition
		{
			get
			{
				FormStartPosition startPosition;
				if (this._IsParentForm && !this._ControlMode)
				{
					startPosition = this.ParentForm.StartPosition;
				}
				else
				{
					startPosition = this._StartPosition;
				}
				return startPosition;
			}
			set
			{
				this._StartPosition = value;
				if (this._IsParentForm && !this._ControlMode)
				{
					this.ParentForm.StartPosition = value;
				}
			}
		}

		// Token: 0x17000396 RID: 918
		// (get) Token: 0x06000A5E RID: 2654 RVA: 0x00005595 File Offset: 0x00003795
		// (set) Token: 0x06000A5F RID: 2655 RVA: 0x0000559D File Offset: 0x0000379D
		public bool NoRounding
		{
			get
			{
				return this._NoRounding;
			}
			set
			{
				this._NoRounding = value;
				this.Invalidate();
			}
		}

		// Token: 0x17000397 RID: 919
		// (get) Token: 0x06000A60 RID: 2656 RVA: 0x00057044 File Offset: 0x00055244
		// (set) Token: 0x06000A61 RID: 2657 RVA: 0x000055AC File Offset: 0x000037AC
		public Image Image
		{
			get
			{
				return this._Image;
			}
			set
			{
				if (value == null)
				{
					this._ImageSize = Size.Empty;
				}
				else
				{
					this._ImageSize = value.Size;
				}
				this._Image = value;
				this.Invalidate();
			}
		}

		// Token: 0x17000398 RID: 920
		// (get) Token: 0x06000A62 RID: 2658 RVA: 0x0005705C File Offset: 0x0005525C
		// (set) Token: 0x06000A63 RID: 2659 RVA: 0x000570C0 File Offset: 0x000552C0
		public Bloom[] Colors
		{
			get
			{
				List<Bloom> list = new List<Bloom>();
				Dictionary<string, Color>.Enumerator enumerator = this.Items.GetEnumerator();
				while (enumerator.MoveNext())
				{
					List<Bloom> arg_3C_0 = list;
					KeyValuePair<string, Color> current = enumerator.Current;
					string arg_36_1 = current.Key;
					KeyValuePair<string, Color> current2 = enumerator.Current;
					Bloom item = new Bloom(arg_36_1, current2.Value);
					arg_3C_0.Add(item);
				}
				return list.ToArray();
			}
			set
			{
				checked
				{
					for (int i = 0; i < value.Length; i++)
					{
						Bloom bloom = value[i];
						if (this.Items.ContainsKey(bloom.Name))
						{
							this.Items[bloom.Name] = bloom.Value;
						}
					}
					this.InvalidateCustimization();
					this.ColorHook();
					this.Invalidate();
				}
			}
		}

		// Token: 0x17000399 RID: 921
		// (get) Token: 0x06000A64 RID: 2660 RVA: 0x0005712C File Offset: 0x0005532C
		// (set) Token: 0x06000A65 RID: 2661 RVA: 0x00057144 File Offset: 0x00055344
		public string Customization
		{
			get
			{
				return this._Customization;
			}
			set
			{
				checked
				{
					if (Operators.CompareString(value, this._Customization, false) != 0)
					{
						Bloom[] colors = this.Colors;
						try
						{
							byte[] value2 = Convert.FromBase64String(value);
							int arg_27_0 = 0;
							int num = colors.Length - 1;
							int num2 = arg_27_0;
							while (true)
							{
								int arg_4E_0 = num2;
								int num3 = num;
								if (arg_4E_0 > num3)
								{
									break;
								}
								colors[num2].Value = Color.FromArgb(BitConverter.ToInt32(value2, num2 * 4));
								num2++;
							}
						}
						catch (Exception arg_52_0)
						{
							ProjectData.SetProjectError(arg_52_0);
							ProjectData.ClearProjectError();
							return;
						}
						this._Customization = value;
						this.Colors = colors;
						this.ColorHook();
						this.Invalidate();
					}
				}
			}
		}

		// Token: 0x1700039A RID: 922
		// (get) Token: 0x06000A66 RID: 2662 RVA: 0x000055DA File Offset: 0x000037DA
		// (set) Token: 0x06000A67 RID: 2663 RVA: 0x000571DC File Offset: 0x000553DC
		public bool Transparent
		{
			get
			{
				return this._Transparent;
			}
			set
			{
				this._Transparent = value;
				if (this.IsHandleCreated || this._ControlMode)
				{
					bool arg_3B_0;
					if (!value)
					{
						if (this.BackColor.A != 255)
						{
							arg_3B_0 = true;
							goto IL_3B;
						}
					}
					arg_3B_0 = false;
					IL_3B:
					if (arg_3B_0)
					{
						throw new Exception("Unable to change value to false while a transparent BackColor is in use.");
					}
					this.SetStyle(ControlStyles.Opaque, !value);
					this.SetStyle(ControlStyles.SupportsTransparentBackColor, value);
					this.InvalidateBitmap();
					this.Invalidate();
				}
			}
		}

		// Token: 0x1700039B RID: 923
		// (get) Token: 0x06000A68 RID: 2664 RVA: 0x00057254 File Offset: 0x00055454
		protected Size ImageSize
		{
			get
			{
				return this._ImageSize;
			}
		}

		// Token: 0x1700039C RID: 924
		// (get) Token: 0x06000A69 RID: 2665 RVA: 0x000055E2 File Offset: 0x000037E2
		protected bool IsParentForm
		{
			get
			{
				return this._IsParentForm;
			}
		}

		// Token: 0x1700039D RID: 925
		// (get) Token: 0x06000A6A RID: 2666 RVA: 0x0005726C File Offset: 0x0005546C
		protected bool IsParentMdi
		{
			get
			{
				return this.Parent != null && this.Parent.Parent != null;
			}
		}

		// Token: 0x1700039E RID: 926
		// (get) Token: 0x06000A6B RID: 2667 RVA: 0x0005729C File Offset: 0x0005549C
		// (set) Token: 0x06000A6C RID: 2668 RVA: 0x000055EA File Offset: 0x000037EA
		protected int LockWidth
		{
			get
			{
				return this._LockWidth;
			}
			set
			{
				this._LockWidth = value;
				if (this.LockWidth != 0 && this.IsHandleCreated)
				{
					this.Width = this.LockWidth;
				}
			}
		}

		// Token: 0x1700039F RID: 927
		// (get) Token: 0x06000A6D RID: 2669 RVA: 0x000572B4 File Offset: 0x000554B4
		// (set) Token: 0x06000A6E RID: 2670 RVA: 0x00005616 File Offset: 0x00003816
		protected int LockHeight
		{
			get
			{
				return this._LockHeight;
			}
			set
			{
				this._LockHeight = value;
				if (this.LockHeight != 0 && this.IsHandleCreated)
				{
					this.Height = this.LockHeight;
				}
			}
		}

		// Token: 0x170003A0 RID: 928
		// (get) Token: 0x06000A6F RID: 2671 RVA: 0x000572CC File Offset: 0x000554CC
		// (set) Token: 0x06000A70 RID: 2672 RVA: 0x00005642 File Offset: 0x00003842
		protected int Header
		{
			get
			{
				return this._Header;
			}
			set
			{
				this._Header = value;
				if (!this._ControlMode)
				{
					this.Frame = checked(new Rectangle(7, 7, this.Width - 14, value - 7));
					this.Invalidate();
				}
			}
		}

		// Token: 0x170003A1 RID: 929
		// (get) Token: 0x06000A71 RID: 2673 RVA: 0x00005675 File Offset: 0x00003875
		// (set) Token: 0x06000A72 RID: 2674 RVA: 0x000572E4 File Offset: 0x000554E4
		protected bool ControlMode
		{
			get
			{
				return this._ControlMode;
			}
			set
			{
				this._ControlMode = value;
				this.Transparent = this._Transparent;
				if (this._Transparent && this._BackColor)
				{
					this.BackColor = Color.Transparent;
				}
				this.InvalidateBitmap();
				this.Invalidate();
			}
		}

		// Token: 0x170003A2 RID: 930
		// (get) Token: 0x06000A73 RID: 2675 RVA: 0x0000567D File Offset: 0x0000387D
		// (set) Token: 0x06000A74 RID: 2676 RVA: 0x00005685 File Offset: 0x00003885
		protected bool IsAnimated
		{
			get
			{
				return this._IsAnimated;
			}
			set
			{
				this._IsAnimated = value;
				this.InvalidateTimer();
			}
		}

		// Token: 0x06000A75 RID: 2677 RVA: 0x00057334 File Offset: 0x00055534
		protected Pen GetPen(string name)
		{
			return new Pen(this.Items[name]);
		}

		// Token: 0x06000A76 RID: 2678 RVA: 0x00057354 File Offset: 0x00055554
		protected Pen GetPen(string name, float width)
		{
			return new Pen(this.Items[name], width);
		}

		// Token: 0x06000A77 RID: 2679 RVA: 0x00057378 File Offset: 0x00055578
		protected SolidBrush GetBrush(string name)
		{
			return new SolidBrush(this.Items[name]);
		}

		// Token: 0x06000A78 RID: 2680 RVA: 0x00057398 File Offset: 0x00055598
		protected Color GetColor(string name)
		{
			return this.Items[name];
		}

		// Token: 0x06000A79 RID: 2681 RVA: 0x000573B4 File Offset: 0x000555B4
		protected void SetColor(string name, Color value)
		{
			if (this.Items.ContainsKey(name))
			{
				this.Items[name] = value;
			}
			else
			{
				this.Items.Add(name, value);
			}
		}

		// Token: 0x06000A7A RID: 2682 RVA: 0x00005694 File Offset: 0x00003894
		protected void SetColor(string name, byte r, byte g, byte b)
		{
			this.SetColor(name, Color.FromArgb((int)r, (int)g, (int)b));
		}

		// Token: 0x06000A7B RID: 2683 RVA: 0x000056A6 File Offset: 0x000038A6
		protected void SetColor(string name, byte a, byte r, byte g, byte b)
		{
			this.SetColor(name, Color.FromArgb((int)a, (int)r, (int)g, (int)b));
		}

		// Token: 0x06000A7C RID: 2684 RVA: 0x000056BA File Offset: 0x000038BA
		protected void SetColor(string name, byte a, Color value)
		{
			this.SetColor(name, Color.FromArgb((int)a, value));
		}

		// Token: 0x06000A7D RID: 2685 RVA: 0x000573EC File Offset: 0x000555EC
		private void InvalidateBitmap()
		{
			if (this._Transparent && this._ControlMode)
			{
				if (this.Width != 0 && this.Height != 0)
				{
					this.B = new Bitmap(this.Width, this.Height, PixelFormat.Format32bppPArgb);
					this.G = Graphics.FromImage(this.B);
				}
			}
			else
			{
				this.G = null;
				this.B = null;
			}
		}

		// Token: 0x06000A7E RID: 2686 RVA: 0x00057464 File Offset: 0x00055664
		private void InvalidateCustimization()
		{
			checked
			{
				MemoryStream memoryStream = new MemoryStream(this.Items.Count * 4);
				Bloom[] colors = this.Colors;
				for (int i = 0; i < colors.Length; i++)
				{
					Bloom bloom = colors[i];
					memoryStream.Write(BitConverter.GetBytes(bloom.Value.ToArgb()), 0, 4);
				}
				memoryStream.Close();
				this._Customization = Convert.ToBase64String(memoryStream.ToArray());
			}
		}

		// Token: 0x06000A7F RID: 2687 RVA: 0x000574DC File Offset: 0x000556DC
		private void InvalidateTimer()
		{
			if (!this.DesignMode && this.DoneCreation)
			{
				if (this._IsAnimated)
				{
					ThemeShare.AddAnimationCallback(new ThemeShare.AnimationDelegate(this.DoAnimation));
				}
				else
				{
					ThemeShare.RemoveAnimationCallback(new ThemeShare.AnimationDelegate(this.DoAnimation));
				}
			}
		}

		// Token: 0x06000A80 RID: 2688
		protected abstract void ColorHook();

		// Token: 0x06000A81 RID: 2689
		protected abstract void PaintHook();

		// Token: 0x06000A82 RID: 2690 RVA: 0x00002F54 File Offset: 0x00001154
		protected virtual void OnCreation()
		{
		}

		// Token: 0x06000A83 RID: 2691 RVA: 0x00002F54 File Offset: 0x00001154
		protected virtual void OnAnimation()
		{
		}

		// Token: 0x06000A84 RID: 2692 RVA: 0x00057530 File Offset: 0x00055730
		protected Rectangle Offset(Rectangle r, int amount)
		{
			this.OffsetReturnRectangle = checked(new Rectangle(r.X + amount, r.Y + amount, r.Width - amount * 2, r.Height - amount * 2));
			return this.OffsetReturnRectangle;
		}

		// Token: 0x06000A85 RID: 2693 RVA: 0x00057578 File Offset: 0x00055778
		protected Size Offset(Size s, int amount)
		{
			this.OffsetReturnSize = checked(new Size(s.Width + amount, s.Height + amount));
			return this.OffsetReturnSize;
		}

		// Token: 0x06000A86 RID: 2694 RVA: 0x000575AC File Offset: 0x000557AC
		protected Point Offset(Point p, int amount)
		{
			this.OffsetReturnPoint = checked(new Point(p.X + amount, p.Y + amount));
			return this.OffsetReturnPoint;
		}

		// Token: 0x06000A87 RID: 2695 RVA: 0x000575E0 File Offset: 0x000557E0
		protected Point Center(Rectangle p, Rectangle c)
		{
			this.CenterReturn = checked(new Point(p.Width / 2 - c.Width / 2 + p.X + c.X, p.Height / 2 - c.Height / 2 + p.Y + c.Y));
			return this.CenterReturn;
		}

		// Token: 0x06000A88 RID: 2696 RVA: 0x00057648 File Offset: 0x00055848
		protected Point Center(Rectangle p, Size c)
		{
			this.CenterReturn = checked(new Point(p.Width / 2 - c.Width / 2 + p.X, p.Height / 2 - c.Height / 2 + p.Y));
			return this.CenterReturn;
		}

		// Token: 0x06000A89 RID: 2697 RVA: 0x000576A0 File Offset: 0x000558A0
		protected Point Center(Rectangle child)
		{
			return this.Center(this.Width, this.Height, child.Width, child.Height);
		}

		// Token: 0x06000A8A RID: 2698 RVA: 0x000576D0 File Offset: 0x000558D0
		protected Point Center(Size child)
		{
			return this.Center(this.Width, this.Height, child.Width, child.Height);
		}

		// Token: 0x06000A8B RID: 2699 RVA: 0x00057700 File Offset: 0x00055900
		protected Point Center(int childWidth, int childHeight)
		{
			return this.Center(this.Width, this.Height, childWidth, childHeight);
		}

		// Token: 0x06000A8C RID: 2700 RVA: 0x00057724 File Offset: 0x00055924
		protected Point Center(Size p, Size c)
		{
			return this.Center(p.Width, p.Height, c.Width, c.Height);
		}

		// Token: 0x06000A8D RID: 2701 RVA: 0x00057758 File Offset: 0x00055958
		protected Point Center(int pWidth, int pHeight, int cWidth, int cHeight)
		{
			this.CenterReturn = checked(new Point(pWidth / 2 - cWidth / 2, pHeight / 2 - cHeight / 2));
			return this.CenterReturn;
		}

		// Token: 0x06000A8E RID: 2702 RVA: 0x00057788 File Offset: 0x00055988
		protected Size Measure()
		{
			Graphics measureGraphics = this.MeasureGraphics;
			Size result;
			lock (measureGraphics)
			{
				result = this.MeasureGraphics.MeasureString(this.Text, this.Font, this.Width).ToSize();
			}
			return result;
		}

		// Token: 0x06000A8F RID: 2703 RVA: 0x000577E4 File Offset: 0x000559E4
		protected Size Measure(string text)
		{
			Graphics measureGraphics = this.MeasureGraphics;
			Size result;
			lock (measureGraphics)
			{
				result = this.MeasureGraphics.MeasureString(text, this.Font, this.Width).ToSize();
			}
			return result;
		}

		// Token: 0x06000A90 RID: 2704 RVA: 0x000056CA File Offset: 0x000038CA
		protected void DrawPixel(Color c1, int x, int y)
		{
			if (this._Transparent)
			{
				this.B.SetPixel(x, y, c1);
			}
			else
			{
				this.DrawPixelBrush = new SolidBrush(c1);
				this.G.FillRectangle(this.DrawPixelBrush, x, y, 1, 1);
			}
		}

		// Token: 0x06000A91 RID: 2705 RVA: 0x00005705 File Offset: 0x00003905
		protected void DrawCorners(Color c1, int offset)
		{
			this.DrawCorners(c1, 0, 0, this.Width, this.Height, offset);
		}

		// Token: 0x06000A92 RID: 2706 RVA: 0x0000571D File Offset: 0x0000391D
		protected void DrawCorners(Color c1, Rectangle r1, int offset)
		{
			this.DrawCorners(c1, r1.X, r1.Y, r1.Width, r1.Height, offset);
		}

		// Token: 0x06000A93 RID: 2707 RVA: 0x00005743 File Offset: 0x00003943
		protected void DrawCorners(Color c1, int x, int y, int width, int height, int offset)
		{
			checked
			{
				this.DrawCorners(c1, x + offset, y + offset, width - offset * 2, height - offset * 2);
			}
		}

		// Token: 0x06000A94 RID: 2708 RVA: 0x00005762 File Offset: 0x00003962
		protected void DrawCorners(Color c1)
		{
			this.DrawCorners(c1, 0, 0, this.Width, this.Height);
		}

		// Token: 0x06000A95 RID: 2709 RVA: 0x00005779 File Offset: 0x00003979
		protected void DrawCorners(Color c1, Rectangle r1)
		{
			this.DrawCorners(c1, r1.X, r1.Y, r1.Width, r1.Height);
		}

		// Token: 0x06000A96 RID: 2710 RVA: 0x0005783C File Offset: 0x00055A3C
		protected void DrawCorners(Color c1, int x, int y, int width, int height)
		{
			checked
			{
				if (!this._NoRounding)
				{
					if (this._Transparent)
					{
						this.B.SetPixel(x, y, c1);
						this.B.SetPixel(x + (width - 1), y, c1);
						this.B.SetPixel(x, y + (height - 1), c1);
						this.B.SetPixel(x + (width - 1), y + (height - 1), c1);
					}
					else
					{
						this.DrawCornersBrush = new SolidBrush(c1);
						this.G.FillRectangle(this.DrawCornersBrush, x, y, 1, 1);
						this.G.FillRectangle(this.DrawCornersBrush, x + (width - 1), y, 1, 1);
						this.G.FillRectangle(this.DrawCornersBrush, x, y + (height - 1), 1, 1);
						this.G.FillRectangle(this.DrawCornersBrush, x + (width - 1), y + (height - 1), 1, 1);
					}
				}
			}
		}

		// Token: 0x06000A97 RID: 2711 RVA: 0x0000579E File Offset: 0x0000399E
		protected void DrawBorders(Pen p1, int offset)
		{
			this.DrawBorders(p1, 0, 0, this.Width, this.Height, offset);
		}

		// Token: 0x06000A98 RID: 2712 RVA: 0x000057B6 File Offset: 0x000039B6
		protected void DrawBorders(Pen p1, Rectangle r, int offset)
		{
			this.DrawBorders(p1, r.X, r.Y, r.Width, r.Height, offset);
		}

		// Token: 0x06000A99 RID: 2713 RVA: 0x000057DC File Offset: 0x000039DC
		protected void DrawBorders(Pen p1, int x, int y, int width, int height, int offset)
		{
			checked
			{
				this.DrawBorders(p1, x + offset, y + offset, width - offset * 2, height - offset * 2);
			}
		}

		// Token: 0x06000A9A RID: 2714 RVA: 0x000057FB File Offset: 0x000039FB
		protected void DrawBorders(Pen p1)
		{
			this.DrawBorders(p1, 0, 0, this.Width, this.Height);
		}

		// Token: 0x06000A9B RID: 2715 RVA: 0x00005812 File Offset: 0x00003A12
		protected void DrawBorders(Pen p1, Rectangle r)
		{
			this.DrawBorders(p1, r.X, r.Y, r.Width, r.Height);
		}

		// Token: 0x06000A9C RID: 2716 RVA: 0x00005837 File Offset: 0x00003A37
		protected void DrawBorders(Pen p1, int x, int y, int width, int height)
		{
			checked
			{
				this.G.DrawRectangle(p1, x, y, width - 1, height - 1);
			}
		}

		// Token: 0x06000A9D RID: 2717 RVA: 0x0000584F File Offset: 0x00003A4F
		protected void DrawText(Brush b1, HorizontalAlignment a, int x, int y)
		{
			this.DrawText(b1, this.Text, a, x, y);
		}

		// Token: 0x06000A9E RID: 2718 RVA: 0x00057920 File Offset: 0x00055B20
		protected void DrawText(Brush b1, string text, HorizontalAlignment a, int x, int y)
		{
			checked
			{
				if (text.Length != 0)
				{
					this.DrawTextSize = this.Measure(text);
					this.DrawTextPoint = new Point(this.Width / 2 - this.DrawTextSize.Width / 2, this.Header / 2 - this.DrawTextSize.Height / 2);
					switch (a)
					{
					case HorizontalAlignment.Left:
						this.G.DrawString(text, this.Font, b1, (float)x, (float)(this.DrawTextPoint.Y + y));
						break;
					case HorizontalAlignment.Right:
						this.G.DrawString(text, this.Font, b1, (float)(this.Width - this.DrawTextSize.Width - x), (float)(this.DrawTextPoint.Y + y));
						break;
					case HorizontalAlignment.Center:
						this.G.DrawString(text, this.Font, b1, (float)(this.DrawTextPoint.X + x), (float)(this.DrawTextPoint.Y + y));
						break;
					}
				}
			}
		}

		// Token: 0x06000A9F RID: 2719 RVA: 0x00005862 File Offset: 0x00003A62
		protected void DrawText(Brush b1, Point p1)
		{
			if (this.Text.Length != 0)
			{
				this.G.DrawString(this.Text, this.Font, b1, p1);
			}
		}

		// Token: 0x06000AA0 RID: 2720 RVA: 0x00005892 File Offset: 0x00003A92
		protected void DrawText(Brush b1, int x, int y)
		{
			if (this.Text.Length != 0)
			{
				this.G.DrawString(this.Text, this.Font, b1, (float)x, (float)y);
			}
		}

		// Token: 0x06000AA1 RID: 2721 RVA: 0x000058C0 File Offset: 0x00003AC0
		protected void DrawImage(HorizontalAlignment a, int x, int y)
		{
			this.DrawImage(this._Image, a, x, y);
		}

		// Token: 0x06000AA2 RID: 2722 RVA: 0x00057A2C File Offset: 0x00055C2C
		protected void DrawImage(Image image, HorizontalAlignment a, int x, int y)
		{
			checked
			{
				if (image != null)
				{
					this.DrawImagePoint = new Point(this.Width / 2 - image.Width / 2, this.Header / 2 - image.Height / 2);
					switch (a)
					{
					case HorizontalAlignment.Left:
						this.G.DrawImage(image, x, this.DrawImagePoint.Y + y, image.Width, image.Height);
						break;
					case HorizontalAlignment.Right:
						this.G.DrawImage(image, this.Width - image.Width - x, this.DrawImagePoint.Y + y, image.Width, image.Height);
						break;
					case HorizontalAlignment.Center:
						this.G.DrawImage(image, this.DrawImagePoint.X + x, this.DrawImagePoint.Y + y, image.Width, image.Height);
						break;
					}
				}
			}
		}

		// Token: 0x06000AA3 RID: 2723 RVA: 0x000058D1 File Offset: 0x00003AD1
		protected void DrawImage(Point p1)
		{
			this.DrawImage(this._Image, p1.X, p1.Y);
		}

		// Token: 0x06000AA4 RID: 2724 RVA: 0x000058ED File Offset: 0x00003AED
		protected void DrawImage(int x, int y)
		{
			this.DrawImage(this._Image, x, y);
		}

		// Token: 0x06000AA5 RID: 2725 RVA: 0x000058FD File Offset: 0x00003AFD
		protected void DrawImage(Image image, Point p1)
		{
			this.DrawImage(image, p1.X, p1.Y);
		}

		// Token: 0x06000AA6 RID: 2726 RVA: 0x00005914 File Offset: 0x00003B14
		protected void DrawImage(Image image, int x, int y)
		{
			if (image != null)
			{
				this.G.DrawImage(image, x, y, image.Width, image.Height);
			}
		}

		// Token: 0x06000AA7 RID: 2727 RVA: 0x00005936 File Offset: 0x00003B36
		protected void DrawGradient(ColorBlend blend, int x, int y, int width, int height)
		{
			this.DrawGradientRectangle = new Rectangle(x, y, width, height);
			this.DrawGradient(blend, this.DrawGradientRectangle);
		}

		// Token: 0x06000AA8 RID: 2728 RVA: 0x00005956 File Offset: 0x00003B56
		protected void DrawGradient(ColorBlend blend, int x, int y, int width, int height, float angle)
		{
			this.DrawGradientRectangle = new Rectangle(x, y, width, height);
			this.DrawGradient(blend, this.DrawGradientRectangle, angle);
		}

		// Token: 0x06000AA9 RID: 2729 RVA: 0x00005978 File Offset: 0x00003B78
		protected void DrawGradient(ColorBlend blend, Rectangle r)
		{
			this.DrawGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, 90f);
			this.DrawGradientBrush.InterpolationColors = blend;
			this.G.FillRectangle(this.DrawGradientBrush, r);
		}

		// Token: 0x06000AAA RID: 2730 RVA: 0x000059B3 File Offset: 0x00003BB3
		protected void DrawGradient(ColorBlend blend, Rectangle r, float angle)
		{
			this.DrawGradientBrush = new LinearGradientBrush(r, Color.Empty, Color.Empty, angle);
			this.DrawGradientBrush.InterpolationColors = blend;
			this.G.FillRectangle(this.DrawGradientBrush, r);
		}

		// Token: 0x06000AAB RID: 2731 RVA: 0x000059EA File Offset: 0x00003BEA
		protected void DrawGradient(Color c1, Color c2, int x, int y, int width, int height)
		{
			this.DrawGradientRectangle = new Rectangle(x, y, width, height);
			this.DrawGradient(c1, c2, this.DrawGradientRectangle);
		}

		// Token: 0x06000AAC RID: 2732 RVA: 0x00005A0C File Offset: 0x00003C0C
		protected void DrawGradient(Color c1, Color c2, int x, int y, int width, int height, float angle)
		{
			this.DrawGradientRectangle = new Rectangle(x, y, width, height);
			this.DrawGradient(c1, c2, this.DrawGradientRectangle, angle);
		}

		// Token: 0x06000AAD RID: 2733 RVA: 0x00005A30 File Offset: 0x00003C30
		protected void DrawGradient(Color c1, Color c2, Rectangle r)
		{
			this.DrawGradientBrush = new LinearGradientBrush(r, c1, c2, 90f);
			this.G.FillRectangle(this.DrawGradientBrush, r);
		}

		// Token: 0x06000AAE RID: 2734 RVA: 0x00005A57 File Offset: 0x00003C57
		protected void DrawGradient(Color c1, Color c2, Rectangle r, float angle)
		{
			this.DrawGradientBrush = new LinearGradientBrush(r, c1, c2, angle);
			this.G.FillRectangle(this.DrawGradientBrush, r);
		}

		// Token: 0x06000AAF RID: 2735 RVA: 0x00005A7B File Offset: 0x00003C7B
		public void DrawRadial(ColorBlend blend, int x, int y, int width, int height)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(blend, this.DrawRadialRectangle, width / 2, height / 2);
		}

		// Token: 0x06000AB0 RID: 2736 RVA: 0x00005AA3 File Offset: 0x00003CA3
		public void DrawRadial(ColorBlend blend, int x, int y, int width, int height, Point center)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(blend, this.DrawRadialRectangle, center.X, center.Y);
		}

		// Token: 0x06000AB1 RID: 2737 RVA: 0x00005AD1 File Offset: 0x00003CD1
		public void DrawRadial(ColorBlend blend, int x, int y, int width, int height, int cx, int cy)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(blend, this.DrawRadialRectangle, cx, cy);
		}

		// Token: 0x06000AB2 RID: 2738 RVA: 0x00005AF5 File Offset: 0x00003CF5
		public void DrawRadial(ColorBlend blend, Rectangle r)
		{
			this.DrawRadial(blend, r, r.Width / 2, r.Height / 2);
		}

		// Token: 0x06000AB3 RID: 2739 RVA: 0x00005B11 File Offset: 0x00003D11
		public void DrawRadial(ColorBlend blend, Rectangle r, Point center)
		{
			this.DrawRadial(blend, r, center.X, center.Y);
		}

		// Token: 0x06000AB4 RID: 2740 RVA: 0x00057B1C File Offset: 0x00055D1C
		public void DrawRadial(ColorBlend blend, Rectangle r, int cx, int cy)
		{
			this.DrawRadialPath.Reset();
			checked
			{
				this.DrawRadialPath.AddEllipse(r.X, r.Y, r.Width - 1, r.Height - 1);
				this.DrawRadialBrush1 = new PathGradientBrush(this.DrawRadialPath);
				PathGradientBrush arg_6D_0 = this.DrawRadialBrush1;
				Point p = new Point(r.X + cx, r.Y + cy);
				arg_6D_0.CenterPoint = p;
				this.DrawRadialBrush1.InterpolationColors = blend;
				if (this.G.SmoothingMode == SmoothingMode.AntiAlias)
				{
					this.G.FillEllipse(this.DrawRadialBrush1, r.X + 1, r.Y + 1, r.Width - 3, r.Height - 3);
				}
				else
				{
					this.G.FillEllipse(this.DrawRadialBrush1, r);
				}
			}
		}

		// Token: 0x06000AB5 RID: 2741 RVA: 0x00005B29 File Offset: 0x00003D29
		protected void DrawRadial(Color c1, Color c2, int x, int y, int width, int height)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(c1, c2, this.DrawGradientRectangle);
		}

		// Token: 0x06000AB6 RID: 2742 RVA: 0x00005B4B File Offset: 0x00003D4B
		protected void DrawRadial(Color c1, Color c2, int x, int y, int width, int height, float angle)
		{
			this.DrawRadialRectangle = new Rectangle(x, y, width, height);
			this.DrawRadial(c1, c2, this.DrawGradientRectangle, angle);
		}

		// Token: 0x06000AB7 RID: 2743 RVA: 0x00005B6F File Offset: 0x00003D6F
		protected void DrawRadial(Color c1, Color c2, Rectangle r)
		{
			this.DrawRadialBrush2 = new LinearGradientBrush(r, c1, c2, 90f);
			this.G.FillRectangle(this.DrawGradientBrush, r);
		}

		// Token: 0x06000AB8 RID: 2744 RVA: 0x00005B96 File Offset: 0x00003D96
		protected void DrawRadial(Color c1, Color c2, Rectangle r, float angle)
		{
			this.DrawRadialBrush2 = new LinearGradientBrush(r, c1, c2, angle);
			this.G.FillEllipse(this.DrawGradientBrush, r);
		}

		// Token: 0x06000AB9 RID: 2745 RVA: 0x00057C00 File Offset: 0x00055E00
		public GraphicsPath CreateRound(int x, int y, int width, int height, int slope)
		{
			this.CreateRoundRectangle = new Rectangle(x, y, width, height);
			return this.CreateRound(this.CreateRoundRectangle, slope);
		}

		// Token: 0x06000ABA RID: 2746 RVA: 0x00057C30 File Offset: 0x00055E30
		public GraphicsPath CreateRound(Rectangle r, int slope)
		{
			this.CreateRoundPath = new GraphicsPath(FillMode.Winding);
			this.CreateRoundPath.AddArc(r.X, r.Y, slope, slope, 180f, 90f);
			checked
			{
				this.CreateRoundPath.AddArc(r.Right - slope, r.Y, slope, slope, 270f, 90f);
				this.CreateRoundPath.AddArc(r.Right - slope, r.Bottom - slope, slope, slope, 0f, 90f);
				this.CreateRoundPath.AddArc(r.X, r.Bottom - slope, slope, slope, 90f, 90f);
				this.CreateRoundPath.CloseFigure();
				return this.CreateRoundPath;
			}
		}

		// Token: 0x040004E5 RID: 1253
		protected Graphics G;

		// Token: 0x040004E6 RID: 1254
		protected Bitmap B;

		// Token: 0x040004E7 RID: 1255
		private bool DoneCreation;

		// Token: 0x040004E8 RID: 1256
		private bool HasShown;

		// Token: 0x040004E9 RID: 1257
		private Rectangle Frame;

		// Token: 0x040004EA RID: 1258
		protected MouseState State;

		// Token: 0x040004EB RID: 1259
		private bool WM_LMBUTTONDOWN;

		// Token: 0x040004EC RID: 1260
		private Point GetIndexPoint;

		// Token: 0x040004ED RID: 1261
		private bool B1;

		// Token: 0x040004EE RID: 1262
		private bool B2;

		// Token: 0x040004EF RID: 1263
		private bool B3;

		// Token: 0x040004F0 RID: 1264
		private bool B4;

		// Token: 0x040004F1 RID: 1265
		private int Current;

		// Token: 0x040004F2 RID: 1266
		private int Previous;

		// Token: 0x040004F3 RID: 1267
		private Message[] Messages;

		// Token: 0x040004F4 RID: 1268
		private bool _BackColor;

		// Token: 0x040004F5 RID: 1269
		private bool _SmartBounds;

		// Token: 0x040004F6 RID: 1270
		private bool _Movable;

		// Token: 0x040004F7 RID: 1271
		private bool _Sizable;

		// Token: 0x040004F8 RID: 1272
		private Color _TransparencyKey;

		// Token: 0x040004F9 RID: 1273
		private FormBorderStyle _BorderStyle;

		// Token: 0x040004FA RID: 1274
		private FormStartPosition _StartPosition;

		// Token: 0x040004FB RID: 1275
		private bool _NoRounding;

		// Token: 0x040004FC RID: 1276
		private Image _Image;

		// Token: 0x040004FD RID: 1277
		private Dictionary<string, Color> Items;

		// Token: 0x040004FE RID: 1278
		private string _Customization;

		// Token: 0x040004FF RID: 1279
		private bool _Transparent;

		// Token: 0x04000500 RID: 1280
		private Size _ImageSize;

		// Token: 0x04000501 RID: 1281
		private bool _IsParentForm;

		// Token: 0x04000502 RID: 1282
		private int _LockWidth;

		// Token: 0x04000503 RID: 1283
		private int _LockHeight;

		// Token: 0x04000504 RID: 1284
		private int _Header;

		// Token: 0x04000505 RID: 1285
		private bool _ControlMode;

		// Token: 0x04000506 RID: 1286
		private bool _IsAnimated;

		// Token: 0x04000507 RID: 1287
		private Rectangle OffsetReturnRectangle;

		// Token: 0x04000508 RID: 1288
		private Size OffsetReturnSize;

		// Token: 0x04000509 RID: 1289
		private Point OffsetReturnPoint;

		// Token: 0x0400050A RID: 1290
		private Point CenterReturn;

		// Token: 0x0400050B RID: 1291
		private Bitmap MeasureBitmap;

		// Token: 0x0400050C RID: 1292
		private Graphics MeasureGraphics;

		// Token: 0x0400050D RID: 1293
		private SolidBrush DrawPixelBrush;

		// Token: 0x0400050E RID: 1294
		private SolidBrush DrawCornersBrush;

		// Token: 0x0400050F RID: 1295
		private Point DrawTextPoint;

		// Token: 0x04000510 RID: 1296
		private Size DrawTextSize;

		// Token: 0x04000511 RID: 1297
		private Point DrawImagePoint;

		// Token: 0x04000512 RID: 1298
		private LinearGradientBrush DrawGradientBrush;

		// Token: 0x04000513 RID: 1299
		private Rectangle DrawGradientRectangle;

		// Token: 0x04000514 RID: 1300
		private GraphicsPath DrawRadialPath;

		// Token: 0x04000515 RID: 1301
		private PathGradientBrush DrawRadialBrush1;

		// Token: 0x04000516 RID: 1302
		private LinearGradientBrush DrawRadialBrush2;

		// Token: 0x04000517 RID: 1303
		private Rectangle DrawRadialRectangle;

		// Token: 0x04000518 RID: 1304
		private GraphicsPath CreateRoundPath;

		// Token: 0x04000519 RID: 1305
		private Rectangle CreateRoundRectangle;
	}
}
