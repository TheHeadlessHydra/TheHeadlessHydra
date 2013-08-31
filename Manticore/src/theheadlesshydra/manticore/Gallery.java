package theheadlesshydra.manticore;

public class Gallery {

	private Gallery(){}
	
	public static class types{
		private static String galleryName;
		private static String galleryDescription;
		
		public static void setGalleryName(String s){galleryName=s;}
		public static void setGalleryDescription(String s){galleryDescription=s;}
		
		public static String getGalleryName(){return galleryName;}
		public static String getGalleryDescription(){return galleryDescription;}
		
		public static void reset(){galleryName=null;galleryDescription=null;}
	};
	
}
