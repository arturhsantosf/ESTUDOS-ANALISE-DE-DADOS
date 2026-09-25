import math

# Saudação
print("***** Bem-vindo à calculadora digital! *****\n")

while True:
    # Tratamento de exceção para entradas inválidas (letras/símbolos)
    try:
        # Inserção dos números
        numero1 = float(input("Digite o primeiro número:\n"))
        numero2 = float(input("Digite o segundo número:\n"))

        # Escolha de operação matemática
        operacao = int(input("Digite o número da operação:\n 1-Adição\n 2-Subtração\n 3-Multiplicação\n 4-Divisão\n 5-Potenciação\n 6-Raiz\n"))
    
    except ValueError:
        print("\n[Erro] Entrada inválida! Por favor, digite apenas números.")
        print("\n" + "-"*30 + "\n")
        continue  # Recomeça o ciclo a partir do início

    # Realizando operações

    # Adição
    if operacao == 1:
        adicao = numero1 + numero2
        print(f"O resultado da adição é: {adicao}")
        
    # Subtração
    elif operacao == 2:
        subtracao = numero1 - numero2
        print(f"O resultado da subtração é: {subtracao}")

    # Multiplicação
    elif operacao == 3: 
        multiplicacao = numero1 * numero2
        print(f"O resultado da multiplicação é: {multiplicacao}")

    # Divisão
    elif operacao == 4:
        if numero2 == 0:
            print("Erro: Não é possível dividir por 0!")
        else:
            divisao = numero1 / numero2
            print(f"O resultado da divisão é: {divisao}")

    # Potenciação    
    elif operacao == 5:
        potenciacao = math.pow(numero1, numero2)
        print(f"O resultado da potenciação é: {potenciacao}")
 
    # Raiz Enésima    
    elif operacao == 6:
        if numero2 == 0:
            print("Erro: Não existe raiz de índice 0!")
        elif numero1 < 0:
            print("Erro: Não é possível calcular raiz real de número negativo!")
        else:   
            raiz = numero1 ** (1 / numero2)
            print(f"A raiz {numero2}ª de {numero1} é: {raiz}")
    
    else:
        print("Opção de operação inválida!")
  
    # Parar ou continuar    
    continuar = input("\nDeseja continuar? SIM(S) ou NÃO(N): ").strip().upper()
    if continuar == 'S':
        print("\n" + "-"*30 + "\n")
    else:
        print("Obrigado por calcular conosco. Até à próxima!!")    
        break