import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  TextEditingController cardNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.white,
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text(
            'Adicione um novo cartão',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF027353),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                      CardNumberInputFormatter(),
                    ],
                    decoration: const InputDecoration(
                      hintText: 'Numero do Cartão Challenge',
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Icon(Icons.credit_card),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Nome Completo',
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Icon(Icons.person),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
                          ],
                          decoration: const InputDecoration(
                            hintText: 'CVV',
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(4),
                            CardMonthFormatter(),
                          ],
                          decoration: const InputDecoration(
                            hintText: 'MM/AA',
                            prefixIcon: Icon(Icons.calendar_today),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(flex: 2),
            OutlinedButton.icon(
              icon: const Icon(Icons.camera_enhance_rounded),
              label: const Text(
                'Para facilitar, escaneie seu cartão',
                style: TextStyle(
                  color: Color(0xFF027353),
                  fontSize: 16, // Ajuste o tamanho da fonte conforme necessário
                  fontWeight: FontWeight.w600, // Adiciona negrito
                ),
              ),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF027353),
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF027353),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  'Adicione seu cartão',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:
                        16, // Ajuste o tamanho da fonte conforme necessário
                    fontWeight: FontWeight.w600, // Adiciona negrito
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index % 4 == 0 && inputData.length != index) {
        buffer.write("  ");
      }
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length),
    );
  }
}

class CardMonthFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index == 2 && inputData.length != index) {
        buffer.write("/");
      }
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length),
    );
  }
}
