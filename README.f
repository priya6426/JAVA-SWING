import javax.swing.*;
import java.awt.*;


/*
<applet code ="Table" width=500 height=500>
</applet>
*/

public class Table extends JApplet{

	
	JFrame jf = new JFrame("TABLE");

	String col[]={"USN","NAME","BRANCH","SEM","SECTION"};


	String value[][]={
		 	 {"4A18CS056","","cse","4th","B"},
		 	 {"4A18CS062","Pratibha","cse","4th","B"}
			 };

	public void init()
	{
		try
		{
			SwingUtilities.invokeLater(new Runnable()
			{
				public void run()
				{
					makeGUI();
				}
			}
			);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}


		public void makeGUI()
		{
			setLayout(new FlowLayout());

			JTable jt=new JTable(value,col);

			JScrollPane js=new JScrollPane(jt);
			add(js);

		}
}
