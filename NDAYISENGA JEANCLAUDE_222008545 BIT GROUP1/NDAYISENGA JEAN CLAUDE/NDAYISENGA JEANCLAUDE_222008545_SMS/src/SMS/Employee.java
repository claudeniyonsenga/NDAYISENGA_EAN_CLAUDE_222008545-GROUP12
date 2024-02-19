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

public class Employee extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;
	private JTextField textField_5;
	private JTextField textField_6;
	private JTextField textField_7;
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
					Employee frame = new Employee();
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
	public Employee() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Employee");
		lblNewLabel.setBounds(178, 0, 49, 14);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Firstname");
		lblNewLabel_1.setBounds(37, 28, 49, 14);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_1_1 = new JLabel("Lastname");
		lblNewLabel_1_1.setBounds(37, 53, 49, 14);
		contentPane.add(lblNewLabel_1_1);
		
		JLabel lblNewLabel_1_2 = new JLabel("Jobtitle");
		lblNewLabel_1_2.setBounds(37, 78, 49, 14);
		contentPane.add(lblNewLabel_1_2);
		
		JLabel lblNewLabel_1_3 = new JLabel("Phone");
		lblNewLabel_1_3.setBounds(37, 103, 49, 14);
		contentPane.add(lblNewLabel_1_3);
		
		JLabel lblNewLabel_1_4 = new JLabel("email");
		lblNewLabel_1_4.setBounds(37, 128, 49, 14);
		contentPane.add(lblNewLabel_1_4);
		
		textField = new JTextField();
		textField.setBounds(104, 25, 284, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(104, 50, 284, 20);
		contentPane.add(textField_1);
		
		textField_2 = new JTextField();
		textField_2.setColumns(10);
		textField_2.setBounds(104, 75, 284, 20);
		contentPane.add(textField_2);
		
		textField_3 = new JTextField();
		textField_3.setColumns(10);
		textField_3.setBounds(104, 96, 284, 20);
		contentPane.add(textField_3);
		
		textField_4 = new JTextField();
		textField_4.setColumns(10);
		textField_4.setBounds(104, 122, 284, 20);
		contentPane.add(textField_4);
		
		textField_5 = new JTextField();
		textField_5.setColumns(10);
		textField_5.setBounds(104, 151, 284, 20);
		contentPane.add(textField_5);
		
		JButton btnNewButton = new JButton("INSERT");
		btnNewButton.addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent e) {
			
			try {
                //Creating Connection Object
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/seeds_management_system","root","");
               
                //Prepared Statement
                PreparedStatement pet=con.prepareStatement("insert into Employee(Firstname,lastname,jobtitle,Phone,email,province,district,sector) values(?,?,?,?,?,?,?,?,)");
                //Specifying the values of it's parameter
                pet.setString(1,textField.getText());
                pet.setString(2,textField_1.getText());
                pet.setString(3,textField_2.getText());
                pet.setString(4,textField_3.getText());
                pet.setString(5,textField_4.getText());
                pet.setString(6,textField_5.getText());
                pet.setString(7,textField_6.getText());
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
		btnNewButton.setBounds(40, 240, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("DELETE");
		btnNewButton_1.setBounds(125, 240, 89, 23);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("UPDATE");
		btnNewButton_2.setBounds(212, 240, 89, 23);
		contentPane.add(btnNewButton_2);
		
		textField_6 = new JTextField();
		textField_6.setBounds(104, 179, 284, 20);
		contentPane.add(textField_6);
		textField_6.setColumns(10);
		
		textField_7 = new JTextField();
		textField_7.setColumns(10);
		textField_7.setBounds(104, 210, 284, 20);
		contentPane.add(textField_7);
		
		JLabel lblNewLabel_2 = new JLabel("province");
		lblNewLabel_2.setBounds(37, 154, 49, 14);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("district");
		lblNewLabel_3.setBounds(37, 185, 49, 14);
		contentPane.add(lblNewLabel_3);
		
		JLabel lblNewLabel_4 = new JLabel("sector");
		lblNewLabel_4.setBounds(37, 213, 49, 14);
		contentPane.add(lblNewLabel_4);
		
		JButton btnNewButton_3 = new JButton("SELECT");
		btnNewButton_3.setBounds(299, 240, 89, 23);
		contentPane.add(btnNewButton_3);
	}
}
