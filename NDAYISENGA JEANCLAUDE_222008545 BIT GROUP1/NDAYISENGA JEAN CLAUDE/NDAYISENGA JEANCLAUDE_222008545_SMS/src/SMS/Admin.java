package SMS;

import java.sql.Connection;
import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JTextField;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.awt.event.ActionEvent;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JPasswordField;

public class Admin extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	
	Connection con;
	PreparedStatement pet;
    ResultSet res;
    private JPasswordField passwordField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Admin frame = new Admin();
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
	public Admin() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblAdmin = new JLabel("Admin");
		lblAdmin.setBounds(193, 10, 49, 14);
		contentPane.add(lblAdmin);
		
		JLabel lblNewLabel = new JLabel("Firstname");
		lblNewLabel.setBounds(33, 53, 49, 14);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Lastname");
		lblNewLabel_1.setBounds(33, 85, 49, 14);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblEmail = new JLabel("Email");
		lblEmail.setBounds(33, 116, 49, 14);
		contentPane.add(lblEmail);
		
		JLabel lblNewLabel_2 = new JLabel("Phone");
		lblNewLabel_2.setBounds(33, 157, 49, 14);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Password");
		lblNewLabel_3.setBounds(33, 195, 49, 14);
		contentPane.add(lblNewLabel_3);
		
		JButton btnNewButton = new JButton("INSERT");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
	                //Creating Connection Object
	                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/seeds_management_system","root","");
	               
	                //Prepared Statement
	                PreparedStatement pet=con.prepareStatement("insert into admin(Firstname,Lastname,Email,Phone,Password) values(?,?,?,?,?)");
	                //Specifying the values of it's parameter
	                pet.setString(1,textField.getText());
	                pet.setString(2,textField_1.getText());
	                pet.setString(3,textField_2.getText());
	                pet.setString(4,textField_3.getText());
	                pet.setString(5,passwordField.getText());
	                
	                //Checking for the Password match
	            
	                {
	                    //Executing query
	                    pet.executeUpdate();
	                    JOptionPane.showMessageDialog(null,"Data Registered Successfully");
	                }
	             
	 
	            } catch (SQLException e1) {
	                e1.printStackTrace();
	            }
			}
	
		});
		btnNewButton.setBounds(43, 220, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("DELETE");
		btnNewButton_1.setBounds(142, 220, 89, 23);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("UPDATE");
		btnNewButton_2.setBounds(235, 220, 89, 23);
		contentPane.add(btnNewButton_2);
		
		textField = new JTextField();
		textField.setBounds(117, 50, 240, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(117, 82, 240, 20);
		contentPane.add(textField_1);
		
		textField_2 = new JTextField();
		textField_2.setColumns(10);
		textField_2.setBounds(117, 113, 240, 20);
		contentPane.add(textField_2);
		
		textField_3 = new JTextField();
		textField_3.setColumns(10);
		textField_3.setBounds(117, 154, 240, 20);
		contentPane.add(textField_3);
		
		JButton btnNewButton_3 = new JButton("SELECT");
		btnNewButton_3.setBounds(319, 220, 89, 23);
		contentPane.add(btnNewButton_3);
		
		passwordField = new JPasswordField();
		passwordField.setBounds(117, 192, 240, 20);
		contentPane.add(passwordField);
	}
}
