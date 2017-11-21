package com.amit.QrCodeGenerator;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.BevelBorder;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.Graphics;

import javax.swing.SwingConstants;
import java.awt.Color;
import javax.swing.JTextField;
import javax.imageio.ImageIO;
import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.awt.event.ActionEvent;
import javax.swing.border.CompoundBorder;
import javax.swing.border.TitledBorder;

import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;

import javax.swing.UIManager;
import java.awt.Toolkit;

public class QrCodeGeneratorDemo extends JFrame {

	private JPanel contentPane;
	private JTextField textField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					QrCodeGeneratorDemo frame = new QrCodeGeneratorDemo();
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
	public QrCodeGeneratorDemo() {
		setIconImage(Toolkit.getDefaultToolkit().getImage("C:\\Users\\AMIT JHA\\workspace\\QRJENERATOR\\QRImage.JPG"));
		setBackground(Color.DARK_GRAY);
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 528, 404);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblQrCode = new JLabel("QR CODE");
		lblQrCode.setHorizontalAlignment(SwingConstants.CENTER);
		lblQrCode.setToolTipText("");
		lblQrCode.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblQrCode.setBounds(271, 11, 136, 27);
		contentPane.add(lblQrCode);
		
		JLabel lblEnterStringHere = new JLabel("ENTER STRING HERE");
		lblEnterStringHere.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblEnterStringHere.setHorizontalAlignment(SwingConstants.CENTER);
		lblEnterStringHere.setLabelFor(this);
		lblEnterStringHere.setBounds(36, 15, 196, 19);
		contentPane.add(lblEnterStringHere);
		
		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setBackground(Color.MAGENTA);
		lblNewLabel.setToolTipText("");
		lblNewLabel.setLabelFor(this);
		Border border = BorderFactory.createLineBorder(Color.BLUE, 2);
		lblNewLabel.setBorder(border);
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setForeground(Color.BLACK);
		lblNewLabel.setBounds(259, 83, 200, 200);
		contentPane.add(lblNewLabel);
		
		textField = new JTextField();
		textField.setForeground(Color.BLUE);
		textField.setBackground(Color.PINK);
		textField.setFont(new Font("Tahoma", Font.BOLD, 13));
		textField.setBounds(38, 83, 211, 27);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JButton btnNewButton = new JButton("QR GENERATOR");
		btnNewButton.setFont(new Font("Tahoma", Font.BOLD, 11));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				try{
					String s=textField.getText();
					ByteArrayOutputStream baos=QRCode.from(s).withSize(260,260).to(ImageType.JPG).stream();
					File f=new File("QRCODE.jpg");
					FileOutputStream fos=new FileOutputStream(f);
					fos.write(baos.toByteArray());
					fos.flush();
					BufferedImage bfi=ImageIO.read(f);
					lblNewLabel.setIcon(new ImageIcon(bfi));
					Graphics g=lblNewLabel.getGraphics();
					g.drawImage(bfi,WIDTH,WIDTH,lblNewLabel);
				}
				catch(Exception e){
					JOptionPane.showMessageDialog(null, e.getMessage());
				}
				
			}
		});
		btnNewButton.setBounds(38, 236, 211, 42);
		contentPane.add(btnNewButton);
		
		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(new TitledBorder(UIManager.getBorder("TitledBorder.border"), "", TitledBorder.LEADING, TitledBorder.TOP, null, new Color(0, 0, 0)), "QR CODE GENERATOR", TitledBorder.LEADING, TitledBorder.TOP, null, Color.RED));
		panel.setBounds(20, 45, 479, 277);
		contentPane.add(panel);
	}
}
