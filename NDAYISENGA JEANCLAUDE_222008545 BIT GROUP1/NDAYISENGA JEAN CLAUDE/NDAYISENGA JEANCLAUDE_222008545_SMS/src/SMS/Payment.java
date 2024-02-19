package SMS;

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

public class Payment extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;
	Connection con;
	PreparedStatement pet;
    ResultSet res;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Payment frame = new Payment();
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
	public Payment() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Payment");
		lblNewLabel.setBounds(175, 11, 49, 14);
		contentPane.add(lblNewLabel);
		
		JLabel lblDate = new JLabel("Date");
		lblDate.setBounds(10, 48, 49, 14);
		contentPane.add(lblDate);
		
		JLabel lblFarmid = new JLabel("farmId");
		lblFarmid.setBounds(10, 73, 49, 14);
		contentPane.add(lblFarmid);
		
		JLabel lblAmount = new JLabel("Amount");
		lblAmount.setBounds(10, 98, 49, 14);
		contentPane.add(lblAmount);
		
		JLabel lblSeedid = new JLabel("SeedId");
		lblSeedid.setBounds(10, 133, 49, 14);
		contentPane.add(lblSeedid);
		
		JLabel lblPhone = new JLabel("phone");
		lblPhone.setBounds(10, 164, 49, 14);
		contentPane.add(lblPhone);
		
		textField = new JTextField();
		textField.setBounds(80, 45, 290, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(80, 73, 290, 20);
		contentPane.add(textField_1);
		
		textField_2 = new JTextField();
		textField_2.setColumns(10);
		textField_2.setBounds(80, 98, 290, 20);
		contentPane.add(textField_2);
		
		textField_3 = new JTextField();
		textField_3.setColumns(10);
		textField_3.setBounds(80, 130, 290, 20);
		contentPane.add(textField_3);
		
		textField_4 = new JTextField();
		textField_4.setColumns(10);
		textField_4.setBounds(80, 161, 290, 20);
		contentPane.add(textField_4);
		
		JButton btnNewButton = new JButton("INSERT");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
	                //Creating Connection Object
	                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/seeds_management_system","root","");
	               
	                //Prepared Statement
	                PreparedStatement pet=con.prepareStatement("insert into payment(Date,farmId,Amount,SeedId,Phone) values(?,?,?,?,?)");
	                //Specifying the values of it's parameter
	                pet.setString(1,textField.getText());
	                pet.setString(2,textField_1.getText());
	                pet.setString(3,textField_2.getText());
	                pet.setString(4,textField_3.getText());
	                pet.setString(5,textField.getText());
	                
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
		btnNewButton.setBounds(52, 206, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("DELETE");
		btnNewButton_1.setBounds(143, 206, 89, 23);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("UPDATE");
		btnNewButton_2.setBounds(242, 206, 89, 23);
		contentPane.add(btnNewButton_2);
		
		JButton btnNewButton_3 = new JButton("SELECT");
		btnNewButton_3.setBounds(337, 206, 89, 23);
		contentPane.add(btnNewButton_3);
	}
}
