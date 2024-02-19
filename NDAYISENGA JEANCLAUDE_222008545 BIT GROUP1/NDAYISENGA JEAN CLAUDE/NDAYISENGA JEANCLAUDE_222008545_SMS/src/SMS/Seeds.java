package SMS;

import java.awt.EventQueue;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JTextField;

public class Seeds extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;
	private JTextField textField_5;
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
					Seeds frame = new Seeds();
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
	public Seeds() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnNewButton = new JButton("INSERT");
		btnNewButton.setBounds(34, 226, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("DELETE");
		btnNewButton_1.setBounds(133, 226, 89, 23);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("UPDATE");
		btnNewButton_2.setBounds(232, 226, 89, 23);
		contentPane.add(btnNewButton_2);
		
		textField = new JTextField();
		textField.setBounds(93, 39, 314, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		JPanel contentPane_1 = new JPanel();
		contentPane_1.setLayout(null);
		contentPane_1.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane_1.setBounds(0, 0, 436, 263);
		contentPane.add(contentPane_1);
		
		JLabel lblNewLabel_7 = new JLabel("Seeds");
		lblNewLabel_7.setBounds(193, 10, 49, 14);
		contentPane_1.add(lblNewLabel_7);
		
		JLabel lblNewLabel_1_1 = new JLabel("Name");
		lblNewLabel_1_1.setBounds(34, 42, 49, 14);
		contentPane_1.add(lblNewLabel_1_1);
		
		JLabel lblNewLabel_2_1 = new JLabel("farmId");
		lblNewLabel_2_1.setBounds(34, 71, 49, 14);
		contentPane_1.add(lblNewLabel_2_1);
		
		JLabel lblNewLabel_3_1 = new JLabel("qwantity");
		lblNewLabel_3_1.setBounds(34, 107, 49, 14);
		contentPane_1.add(lblNewLabel_3_1);
		
		JLabel lblNewLabel_4_1 = new JLabel("Plantingdate");
		lblNewLabel_4_1.setBounds(10, 140, 73, 14);
		contentPane_1.add(lblNewLabel_4_1);
		
		JLabel lblNewLabel_5_1 = new JLabel("HarvestingDate");
		lblNewLabel_5_1.setBounds(10, 177, 73, 14);
		contentPane_1.add(lblNewLabel_5_1);
		
		JButton btnNewButton_3 = new JButton("New button");
		btnNewButton_3.setBounds(34, 226, 89, 23);
		contentPane_1.add(btnNewButton_3);
		
		JButton btnNewButton_1_1 = new JButton("New button");
		btnNewButton_1_1.setBounds(133, 226, 89, 23);
		contentPane_1.add(btnNewButton_1_1);
		
		JButton btnNewButton_2_1 = new JButton("New button");
		btnNewButton_2_1.setBounds(232, 226, 89, 23);
		contentPane_1.add(btnNewButton_2_1);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(93, 39, 314, 20);
		contentPane_1.add(textField_1);
		
		textField_2 = new JTextField();
		textField_2.setColumns(10);
		textField_2.setBounds(93, 68, 314, 20);
		contentPane_1.add(textField_2);
		
		textField_3 = new JTextField();
		textField_3.setColumns(10);
		textField_3.setBounds(93, 137, 314, 20);
		contentPane_1.add(textField_3);
		
		textField_4 = new JTextField();
		textField_4.setColumns(10);
		textField_4.setBounds(93, 107, 314, 20);
		contentPane_1.add(textField_4);
		
		textField_5 = new JTextField();
		textField_5.setColumns(10);
		textField_5.setBounds(93, 174, 314, 20);
		contentPane_1.add(textField_5);
		
		JButton btnNewButton_4 = new JButton("SELECT");
		btnNewButton_4.setBounds(331, 226, 89, 23);
		contentPane_1.add(btnNewButton_4);
	}
}
