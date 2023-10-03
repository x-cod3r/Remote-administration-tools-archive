using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000043 RID: 67
	public class LVII : ListView
	{
		// Token: 0x0600097C RID: 2428 RVA: 0x00004EA1 File Offset: 0x000030A1
		[DebuggerNonUserCode]
		static LVII()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			LVII.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600097D RID: 2429 RVA: 0x00051E54 File Offset: 0x00050054
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = LVII.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (LVII.__ENCList.Count == LVII.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = LVII.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = LVII.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									LVII.__ENCList[num] = LVII.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						LVII.__ENCList.RemoveRange(num, LVII.__ENCList.Count - num);
						LVII.__ENCList.Capacity = LVII.__ENCList.Count;
					}
					LVII.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x0600097E RID: 2430 RVA: 0x00051F3C File Offset: 0x0005013C
		public LVII()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			LVII.__ENCAddToList(this);
			base.ColumnClick += new ColumnClickEventHandler(this.cc);
			this.AllowDrop = false;
			this.Font = new Font("arial", 8.25f);
			this.Dock = DockStyle.Fill;
			this.FullRowSelect = true;
			this.View = View.Details;
			this.OwnerDraw = true;
			this.GridLines = false;
			this.SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer, true);
			this.SetStyle(ControlStyles.EnableNotifyMessage, true);
		}

		// Token: 0x0600097F RID: 2431 RVA: 0x00051FC8 File Offset: 0x000501C8
		public void cc(object sender, ColumnClickEventArgs e)
		{
			lock (this)
			{
				try
				{
					object[] arguments = new object[]
					{
						e.Column
					};
					ColumnHeader columnHeader = (ColumnHeader)NewLateBinding.LateGet(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(sender))), null, "Columns", arguments, null, null, null);
					SortOrder sortOrder;
					if (this.m_SortingColumn != null)
					{
						if (!columnHeader.Equals(this.m_SortingColumn))
						{
							sortOrder = SortOrder.Ascending;
						}
						else
						{
							sortOrder = ((!this.m_SortingColumn.Text.StartsWith("+")) ? SortOrder.Ascending : SortOrder.Descending);
						}
						this.m_SortingColumn.Text = this.m_SortingColumn.Text.Substring(1);
					}
					else
					{
						sortOrder = SortOrder.Ascending;
					}
					this.m_SortingColumn = columnHeader;
					if (sortOrder != SortOrder.Ascending)
					{
						this.m_SortingColumn.Text = "-" + this.m_SortingColumn.Text;
					}
					else
					{
						this.m_SortingColumn.Text = "+" + this.m_SortingColumn.Text;
					}
					if (sender != null)
					{
						arguments = new object[]
						{
							new LVII.clsListviewSorter(e.Column, sortOrder)
						};
						NewLateBinding.LateSet(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(sender))), null, "ListViewItemSorter", arguments, null, null);
						NewLateBinding.LateCall(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(sender))), null, "Sort", new object[1], null, null, null, true);
						arguments = new object[]
						{
							null
						};
						NewLateBinding.LateSet(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(sender))), null, "ListViewItemSorter", arguments, null, null);
					}
				}
				catch (Exception expr_18F)
				{
					ProjectData.SetProjectError(expr_18F);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x06000980 RID: 2432 RVA: 0x00004DF4 File Offset: 0x00002FF4
		public void FX()
		{
			if (this.Items.Count != 0)
			{
				this.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize);
			}
			else
			{
				this.Columns[checked(this.Columns.Count - 1)].AutoResize(ColumnHeaderAutoResizeStyle.HeaderSize);
			}
		}

		// Token: 0x06000981 RID: 2433 RVA: 0x00004E30 File Offset: 0x00003030
		protected override void OnColumnWidthChanged(ColumnWidthChangedEventArgs e)
		{
			base.OnColumnWidthChanged(e);
		}

		// Token: 0x06000982 RID: 2434 RVA: 0x000521B0 File Offset: 0x000503B0
		protected override void OnDrawColumnHeader(DrawListViewColumnHeaderEventArgs e)
		{
			IEnumerator enumerator = null;
			int num = 0;
			Graphics graphics = e.Graphics;
			checked
			{
				int alpha = (int)Math.Round(Math.Round(Math.Round((double)(unchecked((float)this.BackColor.A * 0.1f)))));
				int red = (int)Math.Round(Math.Round(Math.Round((double)(unchecked((float)this.BackColor.R * 0.1f)))));
				int green = (int)Math.Round(Math.Round(Math.Round((double)(unchecked((float)this.BackColor.G * 0.1f)))));
				Brush brush = new Pen(Color.FromArgb(alpha, red, green, (int)Math.Round(Math.Round(Math.Round((double)(unchecked((float)this.BackColor.B * 0.1f))))))).Brush;
				int width = e.Header.ListView.Width;
				graphics.FillRectangle(brush, 0, 0, width, (int)Math.Round(Math.Round(Math.Round((double)e.Bounds.Height / 2.0))));
				Graphics graphics2 = e.Graphics;
				int alpha2 = (int)Math.Round(Math.Round(Math.Round((double)(unchecked((float)this.BackColor.A * 0.5f)))));
				int red2 = (int)Math.Round(Math.Round(Math.Round((double)(unchecked((float)this.BackColor.R * 0.5f)))));
				int green2 = (int)Math.Round(Math.Round(Math.Round((double)(unchecked((float)this.BackColor.G * 0.5f)))));
				Brush brush2 = new Pen(Color.FromArgb(alpha2, red2, green2, (int)Math.Round(Math.Round(Math.Round((double)(unchecked((float)this.BackColor.B * 0.5f))))))).Brush;
				int y = (int)Math.Round(Math.Round(Math.Round((double)e.Bounds.Height / 2.0)));
				int width2 = e.Header.ListView.Width;
				graphics2.FillRectangle(brush2, 0, y, width2, (int)Math.Round(Math.Round(Math.Round((double)e.Bounds.Height / 2.0))));
				try
				{
					enumerator = this.Columns.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ColumnHeader columnHeader = (ColumnHeader)enumerator.Current;
						int y2 = e.Bounds.Y;
						int width3 = columnHeader.Width;
						Rectangle r = new Rectangle(num, y2, width3, e.Bounds.Height);
						StringFormat format = new StringFormat
						{
							FormatFlags = StringFormatFlags.LineLimit,
							Trimming = StringTrimming.Character,
							Alignment = StringAlignment.Center
						};
						e.Graphics.DrawString(columnHeader.Text, this.Font, new Pen(this.ForeColor).Brush, r, format);
						Graphics graphics3 = e.Graphics;
						Pen pen = new Pen(this.ForeColor);
						int x = num + columnHeader.Width;
						int y3 = e.Bounds.Y;
						int x2 = num + columnHeader.Width;
						int y4 = e.Bounds.Y;
						graphics3.DrawLine(pen, x, y3, x2, y4 + e.Bounds.Height);
						num += columnHeader.Width;
					}
				}
				finally
				{
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
				e.DrawDefault = false;
				base.OnDrawColumnHeader(e);
			}
		}

		// Token: 0x06000983 RID: 2435 RVA: 0x00004E39 File Offset: 0x00003039
		protected override void OnDrawItem(DrawListViewItemEventArgs e)
		{
			e.DrawDefault = true;
			base.OnDrawItem(e);
		}

		// Token: 0x06000984 RID: 2436 RVA: 0x00004E49 File Offset: 0x00003049
		protected override void OnDrawSubItem(DrawListViewSubItemEventArgs e)
		{
			e.DrawDefault = true;
			base.OnDrawSubItem(e);
		}

		// Token: 0x06000985 RID: 2437 RVA: 0x00004E59 File Offset: 0x00003059
		protected override void OnNotifyMessage(Message m)
		{
			if (m.Msg != 20)
			{
				base.OnNotifyMessage(m);
			}
		}

		// Token: 0x0400049A RID: 1178
		private static List<WeakReference> __ENCList;

		// Token: 0x0400049B RID: 1179
		private ColumnHeader m_SortingColumn;

		// Token: 0x02000044 RID: 68
		public class clsListviewSorter : IComparer
		{
			// Token: 0x06000986 RID: 2438 RVA: 0x00004EB2 File Offset: 0x000030B2
			public clsListviewSorter(int column_number, SortOrder sort_order)
			{
				Class2.zP7eVJHzSiX6G();
				base..ctor();
				this.m_ColumnNumber = column_number;
				this.m_SortOrder = sort_order;
			}

			// Token: 0x06000987 RID: 2439 RVA: 0x00052570 File Offset: 0x00050770
			public int Compare(object x, object y)
			{
				ListViewItem listViewItem = (ListViewItem)x;
				ListViewItem listViewItem2 = (ListViewItem)y;
				string text = (listViewItem.SubItems.Count > this.m_ColumnNumber) ? listViewItem.SubItems[this.m_ColumnNumber].Text : "";
				string text2 = (listViewItem2.SubItems.Count > this.m_ColumnNumber) ? listViewItem2.SubItems[this.m_ColumnNumber].Text : "";
				int result;
				if (this.m_SortOrder == SortOrder.Ascending)
				{
					if (Versioned.IsNumeric(text) & Versioned.IsNumeric(text2))
					{
						result = Conversion.Val(text).CompareTo(Conversion.Val(text2));
					}
					else if (!(Information.IsDate(text) & Information.IsDate(text2)))
					{
						result = string.Compare(text, text2);
					}
					else
					{
						result = DateTime.Parse(text).CompareTo(DateTime.Parse(text2));
					}
				}
				else if (Versioned.IsNumeric(text) & Versioned.IsNumeric(text2))
				{
					result = Conversion.Val(text2).CompareTo(Conversion.Val(text));
				}
				else if (!(Information.IsDate(text) & Information.IsDate(text2)))
				{
					result = string.Compare(text2, text);
				}
				else
				{
					result = DateTime.Parse(text2).CompareTo(DateTime.Parse(text));
				}
				return result;
			}

			// Token: 0x0400049C RID: 1180
			private int m_ColumnNumber;

			// Token: 0x0400049D RID: 1181
			private SortOrder m_SortOrder;
		}
	}
}
