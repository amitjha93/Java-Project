

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.Label;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JRadioButton;
import javax.swing.JTable;
import java.awt.Choice;

import javax.swing.AbstractButton;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JLabel;
import java.awt.Color;
import java.awt.Component;
import java.awt.event.ActionListener;
import java.util.Enumeration;
import java.awt.event.ActionEvent;
import javax.swing.JRadioButtonMenuItem;
import java.awt.Font;
import javax.swing.border.TitledBorder;
import javax.swing.border.CompoundBorder;
import javax.swing.UIManager;
import javax.swing.border.EtchedBorder;

public class CalcFrame extends JFrame {

	private JPanel contentPane;
	private JTable table;
	private JTable table_1;
	ButtonGroup bb;
	JLabel label;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					CalcFrame frame = new CalcFrame();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public CalcFrame() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBackground(Color.LIGHT_GRAY);
		contentPane.setBorder(new TitledBorder(null, "CALCULATOR MAIN", TitledBorder.LEADING, TitledBorder.TOP, null, Color.ORANGE));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JRadioButton rdbtnRed = new JRadioButton("Red");
		rdbtnRed.setBounds(41, 17, 109, 23);
		contentPane.add(rdbtnRed);
		
		JRadioButton rdbtnGreen = new JRadioButton("Green");
		rdbtnGreen.setBounds(161, 17, 109, 23);
		contentPane.add(rdbtnGreen);
		
		JRadioButton rdbtnBlue = new JRadioButton("Blue");
		rdbtnBlue.setBounds(285, 17, 109, 23);
		contentPane.add(rdbtnBlue);
		bb=new ButtonGroup();
		bb.add(rdbtnRed);
		bb.add(rdbtnGreen);
		bb.add(rdbtnBlue);
		
		Choice choice = new Choice();
		choice.setBounds(169, 138, 42, 20);
		choice.add("+");
		choice.add("-");
		choice.add("*");
		choice.add("/");
		contentPane.add(choice);
		
		JButton button = new JButton("=");
		
		button.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				int column=0;
				int a=table.getSelectedRow();
				int b=table_1.getSelectedRow();
				String value1 = table.getModel().getValueAt(a, column).toString();
				String value2 = table.getModel().getValueAt(b, column).toString();
				String str=choice.getSelectedItem();
				Enumeration<AbstractButton> bg=bb.getElements();
				String sss="";
				while(bg.hasMoreElements()){
					JRadioButton jrb=(JRadioButton)bg.nextElement();
					if(jrb.isSelected()){
						sss=jrb.getText();	
						if(sss.equals("Red")){
							label.setForeground(Color.red);
						}
						if(sss.equals("Green")){
							label.setForeground(Color.GREEN);
						}
						if(sss.equals("Blue")){
							label.setForeground(Color.BLUE);
						}
					}
				}
					if(str.equals("+")){
						 int c = Integer.parseInt(value1) + Integer.parseInt(value2);
						 label.setText(String.valueOf(c));
					}
					if(str.equals("-")){
						 int c=Integer.parseInt(value1) - Integer.parseInt(value2);
						 label.setText(String.valueOf(c));
					}
					if(str.equals("*")){
						 int c=Integer.parseInt(value1) * Integer.parseInt(value2);
						 label.setText(String.valueOf(c));
					}
					if(str.equals("/")){
						 double c=(double)Integer.parseInt(value1) / Integer.parseInt(value2);
						 label.setText(String.valueOf(c));
					}
				}
				
				
			
			
		});
		button.setBounds(260, 138, 42, 23);
		contentPane.add(button);
		
		label = new JLabel("");
		label.setFont(new Font("Tahoma", Font.BOLD, 14));
		label.setBackground(Color.WHITE);
		label.setBounds(329, 138, 49, 23);
		
		contentPane.add(label);
		String[] column={" "};
		String[][] data={{"1"},{"2"},{"3"},{"4"},{"5"}};
		table = new JTable(data,column);
		table.setBounds(134, 114, 18, 80);
		contentPane.add(table);
		
		table_1 = new JTable(data,column);
		table_1.setBounds(232, 114, 18, 80);
		contentPane.add(table_1);
		
		JPanel panel = new JPanel();
		panel.setBackground(Color.LIGHT_GRAY);
		panel.setToolTipText("");
		panel.setForeground(Color.MAGENTA);
		panel.setBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "CALCULATION", TitledBorder.LEADING, TitledBorder.TOP, null, Color.BLUE));
		panel.setBounds(61, 62, 295, 175);
		contentPane.add(panel);
	}
}
