#!/bin/bash

# Saudação
echo "***** Bem-vindo à calculadora digital! *****"

while true; do
    echo ""
    # Entrada dos números
    read -p "Digite o primeiro número: " numero1
    read -p "Digite o segundo número: " numero2

    # Escolha da operação
    echo -e "\nDigite o número da operação:"
    echo " 1 - Adição"
    echo " 2 - Subtração"
    echo " 3 - Multiplicação"
    echo " 4 - Divisão"
    echo " 5 - Potenciação"
    echo " 6 - Raiz"
    read -p "Opção: " operacao
    echo ""

    # Adição
    if [ "$operacao" -eq 1 ]; then
        soma=$((numero1 + numero2))
        echo "O resultado da adição é: $soma"

    # Subtração
    elif [ "$operacao" -eq 2 ]; then
        sub=$((numero1 - numero2))
        echo "O resultado da subtração é: $sub"

    # Multiplicação
    elif [ "$operacao" -eq 3 ]; then
        mult=$((numero1 * numero2))
        echo "O resultado da multiplicação é: $mult"

    # Divisão
    elif [ "$operacao" -eq 4 ]; then
        if [ "$numero2" -eq 0 ]; then
            echo "Erro: Não é possível dividir por 0!"
        else
            div=$(echo "scale=2; $numero1 / $numero2" | bc)
            echo "O resultado da divisão é: $div"
        fi

    # Potenciação
    elif [ "$operacao" -eq 5 ]; then
        pot=$((numero1 ** numero2))
        echo "O resultado da potenciação é: $pot"

    # Raiz Enésima
    elif [ "$operacao" -eq 6 ]; then
        if [ "$numero2" -eq 0 ]; then
            echo "Erro: Não existe raiz de índice 0!"
        else
            raiz=$(echo "scale=2; $numero1 ^ (1 / $numero2)" | bc -l)
            echo "A raiz ${numero2}ª de $numero1 é: $raiz"
        fi

    else
        echo "Opção inválida!"
    fi

    # Parar ou continuar
    echo ""
    read -p "Deseja continuar? SIM(S) ou NÃO(N): " continuar

    if [ "$continuar" = "S" ] || [ "$continuar" = "s" ]; then
        echo -e "\n----------------------------------------------\n"
    else
        echo "Obrigado por calcular conosco. Até a próxima!"
        break
    fi
done