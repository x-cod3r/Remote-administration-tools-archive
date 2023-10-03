/*
  Part of the Androrat project - https://github.com/RobinDavid/androrat

  Copyright (c) 2012 Robin David

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation, version 3.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General
  Public License along with this library; if not, write to the
  Free Software Foundation, Inc., 59 Temple Place, Suite 330,
  Boston, MA  02111-1307  USA
*/
package gui.panel;

import javax.swing.*;
import javax.swing.text.*;
import java.awt.Color;

public class ColorPane extends JTextPane {

    public void append(Color c, String s) {
    StyleContext sc = StyleContext.getDefaultStyleContext();
    AttributeSet aset = sc.addAttribute(SimpleAttributeSet.EMPTY, StyleConstants.Foreground, c);

    int len = getDocument().getLength();
    setCaretPosition(len);
    setCharacterAttributes(aset, false);
    replaceSelection(s);
  }
}
