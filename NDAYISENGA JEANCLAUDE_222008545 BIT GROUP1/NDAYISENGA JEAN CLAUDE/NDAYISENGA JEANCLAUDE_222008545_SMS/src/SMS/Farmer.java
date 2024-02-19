package SMS;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JTextField;

public class Farmer extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField textField;
	private JTextField textField_1;
	private JTextField textField_2;
	private JTextField textField_3;
	private JTextField textField_4;
	private JTextField textField_5;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Farmer frame = new Farmer();
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
	public Farmer() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNames = new JLabel("Names");
		lblNames.setBounds(32, 55, 49, 14);
		contentPane.add(lblNames);
		
		JLabel lblNewLabel = new JLabel("Farmer");
		lblNewLabel.setBounds(189, 27, 49, 14);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("location");
		lblNewLabel_1.setBounds(32, 80, 49, 14);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_1_1 = new JLabel("size");
		lblNewLabel_1_1.setBounds(32, 105, 49, 14);
		contentPane.add(lblNewLabel_1_1);
		
		JLabel lblNewLabel_1_2 = new JLabel("employeeId");
		lblNewLabel_1_2.setBounds(32, 130, 49, 14);
		contentPane.add(lblNewLabel_1_2);
		
		JLabel lblNewLabel_1_3 = new JLabel("soiltype");
		lblNewLabel_1_3.setBounds(32, 155, 49, 14);
		contentPane.add(lblNewLabel_1_3);
		
		JButton btnNewButton = new JButton("INSERT");
		btnNewButton.setBounds(32, 211, 89, 23);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("DELETE");
		btnNewButton_1.setBounds(129, 211, 89, 23);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("UPDATE");
		btnNewButton_2.setBounds(228, 211, 89, 23);
		contentPane.add(btnNewButton_2);
		
		textField = new JTextField();
		textField.setBounds(91, 52, 281, 20);
		contentPane.add(textField);
		textField.setColumns(10);
		
		textField_1 = new JTextField();
		textField_1.setColumns(10);
		textField_1.setBounds(91, 77, 281, 20);
		contentPane.add(textField_1);
		
		textField_2 = new JTextField();
		textField_2.setColumns(10);
		textField_2.setBounds(91, 102, 281, 20);
		contentPane.add(textField_2);
		
		textField_3 = new JTextField();
		textField_3.setColumns(10);
		textField_3.setBounds(91, 127, 281, 20);
		contentPane.add(textField_3);
		
		textField_4 = new JTextField();
		textField_4.setColumns(10);
		textField_4.setBounds(91, 152, 281, 20);
		contentPane.add(textField_4);
		
		JLabel lblNewLabel_2 = new JLabel("phone");
		lblNewLabel_2.setBounds(32, 180, 49, 14);
		contentPane.add(lblNewLabel_2);
		
		textField_5 = new JTextField();
		textField_5.setColumns(10);
		textField_5.setBounds(91, 177, 281, 20);
		contentPane.add(textField_5);
		
		JButton btnNewButton_3 = new JButton("SELECT");
		btnNewButton_3.setBounds(321, 211, 89, 23);
		contentPane.add(btnNewButton_3);
	}

}
