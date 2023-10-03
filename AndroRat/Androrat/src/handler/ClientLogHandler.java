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
package handler;

import server.Server;
import Packet.LogPacket;
import Packet.Packet;
import gui.GUI;

public class ClientLogHandler implements PacketHandler {
	
	private GUI gui;
	private int channel;
	private String imei;
	
	public ClientLogHandler(int channel, String imei, GUI gui) {
		this.gui = gui;
		this.channel = channel;
		this.imei = imei;
	}

	@Override
	public void receive(Packet p, String imei) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void handlePacket(Packet p, String temp_imei, Server c) {
		c.getChannelHandlerMap().get(imei).getStorage(channel).reset();
		LogPacket packet = (LogPacket) p;
		if(packet.getType() == 0) gui.clientLogTxt(imei, packet.getDate(), packet.getMessage());
		else gui.clientErrLogTxt(imei, packet.getDate(), packet.getMessage());
	}

}
