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
	// Token: 0x02000041 RID: 65
	public class LV : ListView
	{
		// Token: 0x0600096F RID: 2415 RVA: 0x00004DE3 File Offset: 0x00002FE3
		[DebuggerNonUserCode]
		static LV()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			LV.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000970 RID: 2416 RVA: 0x0005181C File Offset: 0x0004FA1C
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = LV.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (LV.__ENCList.Count == LV.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = LV.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = LV.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									LV.__ENCList[num] = LV.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						LV.__ENCList.RemoveRange(num, LV.__ENCList.Count - num);
						LV.__ENCList.Capacity = LV.__ENCList.Count;
					}
					LV.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x06000971 RID: 2417 RVA: 0x00051904 File Offset: 0x0004FB04
		public LV()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.KeyDown += new KeyEventHandler(this.LV_KeyDown);
			LV.__ENCAddToList(this);
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

		// Token: 0x06000972 RID: 2418 RVA: 0x000519A4 File Offset: 0x0004FBA4
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
							new LV.clsListviewSorter(e.Column, sortOrder)
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

		// Token: 0x06000973 RID: 2419 RVA: 0x00004DF4 File Offset: 0x00002FF4
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

		// Token: 0x06000974 RID: 2420 RVA: 0x00004E30 File Offset: 0x00003030
		protected override void OnColumnWidthChanged(ColumnWidthChangedEventArgs e)
		{
			base.OnColumnWidthChanged(e);
		}

		// Token: 0x06000975 RID: 2421 RVA: 0x00051B8C File Offset: 0x0004FD8C
		protected override void OnDrawColumnHeader(DrawListViewColumnHeaderEventArgs drawListViewColumnHeaderEventArgs_0)
		{
			try
			{
				StringFormat format = new StringFormat
				{
					FormatFlags = StringFormatFlags.NoWrap,
					Trimming = StringTrimming.EllipsisCharacter,
					Alignment = StringAlignment.Near,
					LineAlignment = StringAlignment.Near
				};
				Rectangle rect = new Rectangle(drawListViewColumnHeaderEventArgs_0.Bounds.X, drawListViewColumnHeaderEventArgs_0.Bounds.Y, drawListViewColumnHeaderEventArgs_0.Bounds.Width, drawListViewColumnHeaderEventArgs_0.Bounds.Height);
				drawListViewColumnHeaderEventArgs_0.Graphics.FillRectangle(new Pen(ControlPaint.Light(this.BackColor, 0.1f)).Brush, rect);
				drawListViewColumnHeaderEventArgs_0.Graphics.DrawString(drawListViewColumnHeaderEventArgs_0.Header.Text, this.Font, new Pen(this.ForeColor).Brush, drawListViewColumnHeaderEventArgs_0.Bounds, format);
				drawListViewColumnHeaderEventArgs_0.Graphics.DrawLine(new Pen(this.ForeColor), drawListViewColumnHeaderEventArgs_0.Bounds.X, drawListViewColumnHeaderEventArgs_0.Bounds.Y, drawListViewColumnHeaderEventArgs_0.Bounds.X, checked(drawListViewColumnHeaderEventArgs_0.Bounds.Y + drawListViewColumnHeaderEventArgs_0.Bounds.Height));
				drawListViewColumnHeaderEventArgs_0.DrawDefault = false;
			}
			catch (Exception expr_134)
			{
				ProjectData.SetProjectError(expr_134);
				Exception projectError = expr_134;
				ProjectData.SetProjectError(projectError);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
			base.OnDrawColumnHeader(drawListViewColumnHeaderEventArgs_0);
		}

		// Token: 0x06000976 RID: 2422 RVA: 0x00004E39 File Offset: 0x00003039
		protected override void OnDrawItem(DrawListViewItemEventArgs e)
		{
			e.DrawDefault = true;
			base.OnDrawItem(e);
		}

		// Token: 0x06000977 RID: 2423 RVA: 0x00004E49 File Offset: 0x00003049
		protected override void OnDrawSubItem(DrawListViewSubItemEventArgs e)
		{
			e.DrawDefault = true;
			base.OnDrawSubItem(e);
		}

		// Token: 0x06000978 RID: 2424 RVA: 0x00004E59 File Offset: 0x00003059
		protected override void OnNotifyMessage(Message m)
		{
			if (m.Msg != 20)
			{
				base.OnNotifyMessage(m);
			}
		}

		// Token: 0x06000979 RID: 2425 RVA: 0x00004E72 File Offset: 0x00003072
		private void LV_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Space)
			{
				this.FX();
			}
		}

		// Token: 0x04000496 RID: 1174
		private static List<WeakReference> __ENCList;

		// Token: 0x04000497 RID: 1175
		private ColumnHeader m_SortingColumn;

		// Token: 0x02000042 RID: 66
		public class clsListviewSorter : IComparer
		{
			// Token: 0x0600097A RID: 2426 RVA: 0x00004E86 File Offset: 0x00003086
			public clsListviewSorter(int column_number, SortOrder sort_order)
			{
				Class2.zP7eVJHzSiX6G();
				base..ctor();
				this.m_ColumnNumber = column_number;
				this.m_SortOrder = sort_order;
			}

			// Token: 0x0600097B RID: 2427 RVA: 0x00051D0C File Offset: 0x0004FF0C
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

			// Token: 0x04000498 RID: 1176
			private int m_ColumnNumber;

			// Token: 0x04000499 RID: 1177
			private SortOrder m_SortOrder;
		}
	}
}
