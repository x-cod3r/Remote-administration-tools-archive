using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Mono.Cecil;
using Mono.Cecil.Cil;
using Mono.Collections.Generic;

namespace NINGALINET
{
	// Token: 0x02000045 RID: 69
	public class Obfoscator
	{
		// Token: 0x06000988 RID: 2440 RVA: 0x00004ECD File Offset: 0x000030CD
		public Obfoscator()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.orn = new List<string>();
		}

		// Token: 0x06000989 RID: 2441 RVA: 0x000526B8 File Offset: 0x000508B8
		public Array RandArray(Array a)
		{
			List<object> list = new List<object>();
			list.AddRange((IEnumerable<object>)a);
			List<object> list2 = new List<object>();
			while (list.Count != 0)
			{
				int index = this.rnd(0, checked(list.Count - 1));
				list2.Add(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(list[index]))));
				list.RemoveAt(index);
			}
			return list2.ToArray();
		}

		// Token: 0x0600098A RID: 2442 RVA: 0x00052728 File Offset: 0x00050928
		public string randz(string f)
		{
			f = f.Replace("\"", "");
			if (File.Exists(f + ".il"))
			{
				File.Delete(f + ".il");
			}
			File.Move(f, f + ".il");
			AssemblyDefinition assemblyDefinition = AssemblyDefinition.ReadAssembly(f + ".il");
			checked
			{
				try
				{
					Collection<ModuleDefinition>.Enumerator enumerator = assemblyDefinition.Modules.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ModuleDefinition current = enumerator.Current;
						this.wrt("Module: " + current.Name);
						try
						{
							Collection<TypeDefinition>.Enumerator enumerator2 = current.Types.GetEnumerator();
							while (enumerator2.MoveNext())
							{
								TypeDefinition current2 = enumerator2.Current;
								string text = this.RN();
								this.wrt("CLASS: " + current2.Name + " > " + text);
								current2.Name = text;
								try
								{
									Collection<PropertyDefinition>.Enumerator enumerator3 = current2.Properties.GetEnumerator();
									while (enumerator3.MoveNext())
									{
										PropertyDefinition current3 = enumerator3.Current;
										text = this.RN();
										this.wrt("Properties: " + current3.Name + " > " + text);
										current3.Name = text;
										text = this.RN();
										current3.PropertyType = current.Import(typeof(object));
										this.wrt("*Type " + current3.PropertyType.Name + " > " + text);
										current3.PropertyType.Name = text;
									}
								}
								finally
								{
									Collection<PropertyDefinition>.Enumerator enumerator3;
									((IDisposable)enumerator3).Dispose();
								}
								if (current2.Properties.Count > 0)
								{
									Array array = this.RandArray(current2.Properties.ToArray());
									current2.Properties.Clear();
									try
									{
										IEnumerator enumerator4 = array.GetEnumerator();
										while (enumerator4.MoveNext())
										{
											object objectValue = RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(enumerator4.Current)));
											current2.Properties.Add((PropertyDefinition)objectValue);
										}
									}
									finally
									{
										IEnumerator enumerator4;
										if (enumerator4 is IDisposable)
										{
											(enumerator4 as IDisposable).Dispose();
										}
									}
								}
								try
								{
									Collection<EventDefinition>.Enumerator enumerator5 = current2.Events.GetEnumerator();
									while (enumerator5.MoveNext())
									{
										EventDefinition current4 = enumerator5.Current;
										text = this.RN();
										this.wrt("Event " + current4.Name + " > " + text);
										current4.Name = text;
										current4.EventType = current.Import(typeof(object));
										text = this.RN();
										this.wrt("*Type " + current4.EventType.Name + " > " + text);
										current4.EventType.Name = text;
									}
								}
								finally
								{
									Collection<EventDefinition>.Enumerator enumerator5;
									((IDisposable)enumerator5).Dispose();
								}
								if (current2.Events.Count > 0)
								{
									Array array2 = this.RandArray(current2.Events.ToArray());
									current2.Events.Clear();
									try
									{
										IEnumerator enumerator6 = array2.GetEnumerator();
										while (enumerator6.MoveNext())
										{
											object objectValue2 = RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(enumerator6.Current)));
											current2.Events.Add((EventDefinition)objectValue2);
										}
									}
									finally
									{
										IEnumerator enumerator6;
										if (enumerator6 is IDisposable)
										{
											(enumerator6 as IDisposable).Dispose();
										}
									}
								}
								try
								{
									Collection<FieldDefinition>.Enumerator enumerator7 = current2.Fields.GetEnumerator();
									while (enumerator7.MoveNext())
									{
										FieldDefinition current5 = enumerator7.Current;
										text = this.RN();
										this.wrt("Field " + current5.Name + " > " + text);
										text = this.RN();
										this.wrt("*Type " + current5.FieldType.Name + " > " + text);
										current5.FieldType = current.Import(typeof(object));
										current5.FieldType.Name = text;
										current5.Name = text;
									}
								}
								finally
								{
									Collection<FieldDefinition>.Enumerator enumerator7;
									((IDisposable)enumerator7).Dispose();
								}
								if (current2.Fields.Count > 0)
								{
									Array array3 = this.RandArray(current2.Fields.ToArray());
									current2.Fields.Clear();
									try
									{
										IEnumerator enumerator8 = array3.GetEnumerator();
										while (enumerator8.MoveNext())
										{
											object objectValue3 = RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(enumerator8.Current)));
											current2.Fields.Add((FieldDefinition)objectValue3);
										}
									}
									finally
									{
										IEnumerator enumerator8;
										if (enumerator8 is IDisposable)
										{
											(enumerator8 as IDisposable).Dispose();
										}
									}
								}
								try
								{
									Collection<MethodDefinition>.Enumerator enumerator9 = current2.Methods.GetEnumerator();
									while (enumerator9.MoveNext())
									{
										MethodDefinition current6 = enumerator9.Current;
										if (!current6.ToString().Contains("."))
										{
											text = this.RN();
											this.wrt("Method " + current6.Name + " > " + text);
											current6.Name = text;
											if (current6.HasBody)
											{
												try
												{
													Collection<Instruction>.Enumerator enumerator10 = current6.Body.Instructions.GetEnumerator();
													while (enumerator10.MoveNext())
													{
														Instruction current7 = enumerator10.Current;
														Instruction instruction = current7;
														instruction.Offset += -1;
													}
												}
												finally
												{
													Collection<Instruction>.Enumerator enumerator10;
													((IDisposable)enumerator10).Dispose();
												}
											}
											try
											{
												Collection<ParameterDefinition>.Enumerator enumerator11 = current6.Parameters.GetEnumerator();
												while (enumerator11.MoveNext())
												{
													ParameterDefinition current8 = enumerator11.Current;
													text = this.RN();
													this.wrt("*Param " + current8.Name + " > " + text);
													current8.Name = text;
												}
											}
											finally
											{
												Collection<ParameterDefinition>.Enumerator enumerator11;
												((IDisposable)enumerator11).Dispose();
											}
										}
									}
								}
								finally
								{
									Collection<MethodDefinition>.Enumerator enumerator9;
									((IDisposable)enumerator9).Dispose();
								}
								if (current2.Methods.Count > 0)
								{
									Array array4 = this.RandArray(current2.Methods.ToArray());
									current2.Methods.Clear();
									try
									{
										IEnumerator enumerator12 = array4.GetEnumerator();
										while (enumerator12.MoveNext())
										{
											object objectValue4 = RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(enumerator12.Current)));
											current2.Methods.Add((MethodDefinition)objectValue4);
										}
									}
									finally
									{
										IEnumerator enumerator12;
										if (enumerator12 is IDisposable)
										{
											(enumerator12 as IDisposable).Dispose();
										}
									}
								}
							}
						}
						finally
						{
							Collection<TypeDefinition>.Enumerator enumerator2;
							((IDisposable)enumerator2).Dispose();
						}
					}
				}
				finally
				{
					Collection<ModuleDefinition>.Enumerator enumerator;
					((IDisposable)enumerator).Dispose();
				}
				assemblyDefinition.Write(f);
				File.Delete(f + ".il");
				string result;
				return result;
			}
		}

		// Token: 0x0600098B RID: 2443 RVA: 0x00052F08 File Offset: 0x00051108
		public string RN()
		{
			string text = "☺☻♥♦♣♠•◘○◙♀♪♫☼►◄↕‼¶§▬↨חצמצמנלמןםרכגרסעלטצףטךךנץצןךקהזהרבעשךזפףץמנמץטךטכ↑↓→←∟↔▲▼ أآؤءئةابتثجحخدذرزسشصض크ᅡяонръЧннкридияркторниееънектиняеППитънъиояъПкеъП쇼ᅦᄋᄅᄂᄀ에레퓨ᅥᅮᄌ이ᅧᅮᅮᅮᄃ호ᅧᄀ두ᅣᅳᄌ두ᄎᄋᄇ크ᄋ브타퓨ᅥ네ᄇᄏطظعغفقكلمنهـو表ใさ<ᅡませаMφพᄆεไHیำบᅵน&حらᄋсγผпTѕᅡᄅKیพس<ะگ_yλ#ะوC7開れрي";
			checked
			{
				string text2;
				do
				{
					Random random = new Random();
					text2 = "";
					int num = random.Next(1, 3);
					for (int i = 1; i <= num; i++)
					{
						text2 += Convert.ToString(text[random.Next(0, text.Length)]);
					}
				}
				while (this.orn.Contains(text2));
				this.orn.Add(text2);
				return text2;
			}
		}

		// Token: 0x0600098C RID: 2444 RVA: 0x00052F88 File Offset: 0x00051188
		public int rnd(int min, int max)
		{
			Random random = new Random();
			return random.Next(min, checked(max + 1));
		}

		// Token: 0x0600098D RID: 2445 RVA: 0x00004EE5 File Offset: 0x000030E5
		public void wrt(string t)
		{
			this.T1.AppendText(t + "\r\n");
			this.T1.ScrollToCaret();
			Application.DoEvents();
		}

		// Token: 0x0400049E RID: 1182
		public List<string> orn;

		// Token: 0x0400049F RID: 1183
		public TextBox T1;
	}
}
