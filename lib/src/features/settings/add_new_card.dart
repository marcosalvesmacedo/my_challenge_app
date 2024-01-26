import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/card_month_formatter.dart';
import '../../widgets/card_number_input_formatter.dart';

class AddNewCardForm extends StatelessWidget {
  final TextEditingController cardNumberController = TextEditingController();

  AddNewCardForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
