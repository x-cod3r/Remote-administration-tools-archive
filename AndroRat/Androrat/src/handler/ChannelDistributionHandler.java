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



import java.util.HashMap;
import java.util.Map;
import Packet.CommandPacket;
import Packet.Packet;


public class ChannelDistributionHandler
{

	
	//map des interface de gestions des donn�es
	private HashMap<Integer,Packet> packetMap;
	//map des espaces de stockage
	private Map<Integer,TemporaryStorage> tempDataMap;
	//map des gestionnaires des packets
	private Map<Integer,PacketHandler> packetHandlerMap;
	
	public ChannelDistributionHandler()
	{
		//cr�ation des maps de donn�es
		packetMap = new HashMap<Integer, Packet>() ;
		tempDataMap = new HashMap<Integer,TemporaryStorage>();
		packetHandlerMap = new HashMap<Integer,PacketHandler>();
		
		//inscription du cannal 0 pour les commandes
		registerListener(0,new CommandPacket());
		tempDataMap.put(0, new TemporaryStorage());
		packetHandlerMap.put(0, new CommandHandler());
		
	}
	
	

	public boolean registerListener(int chan, Packet packet)
	{
		if(!(packetMap.containsKey(chan)))
		{
			packetMap.put(chan, packet);
			tempDataMap.put(chan, new TemporaryStorage());
			return true;
		}
		else
			return false;
	}
	
	public boolean registerHandler(int chan, PacketHandler han) {
		if(!(packetHandlerMap.containsKey(chan)))
		{
			packetHandlerMap.put(chan, han);
			return true;
		}
		else return false;
	}

	public boolean removeListener(int chan)
	{
		try
		{
			if((packetMap.containsKey(chan)))
			{
				packetMap.remove(chan);
				tempDataMap.remove(chan);
				packetHandlerMap.remove(chan);
				return true;
			}
		}catch(NullPointerException e)
		{
			return false;
		}
		return false;
		
	}

	public int getFreeChannel()
	{
		int i = (int) (Math.random() * 1000);
		while(packetMap.containsKey(i))
		{
			i = (int) (Math.random() * 1000);
		}
		return i ;
	}

	public Packet getPacketMap(int chan)
	{
		return packetMap.get(chan);
	}
	
	public PacketHandler getPacketHandlerMap(int chan)
	{
		return packetHandlerMap.get(chan);
	}
	
	public TemporaryStorage getStorage(int chan)
	{
		return tempDataMap.get(chan);
	}
	
	
}
