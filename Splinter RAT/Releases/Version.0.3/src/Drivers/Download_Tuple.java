/**
 * @author Solomon Sonya
 */

package Drivers;

public class Download_Tuple 
{
	
	public volatile String VERSION = null;
	public volatile String BINARY_DOWNLOAD_LINK = null;
	public volatile String UPDATE_DATE = null;
	public volatile String BINARY_NAME = null;
	
	public Download_Tuple(){}
	
	public Download_Tuple(String first, String second, String third, String fourth)
	{
		VERSION 				= 	first; 
		BINARY_DOWNLOAD_LINK 	= 	second;
		UPDATE_DATE 			= 	third;
		BINARY_NAME 			= 	fourth;
	}
	
}
