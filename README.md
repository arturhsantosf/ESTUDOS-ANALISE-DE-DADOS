# 🧮 Calculadora Digital (Python & Shell Script)

Projeto desenvolvido para criar uma calculadora interativa em **Python** e em **Shell Script (.sh)**, com suporte a operações aritméticas básicas, avançadas e tratamento de erros.

---

## 🐍 Explicação do Código em Python (`calculadora.py`)

O script em Python foi estruturado com foco na prevenção de falhas (*crash*) e facilidade de utilização:

1. **Laço Principal (`while True`):** Mantém o programa em execução contínua até que o utilizador decida sair digitando `N`.
2. **Tratamento de Erros (`try-except ValueError`):** Captura entradas inválidas (ex: quando o utilizador digita letras em vez de números), exibindo um aviso amigável sem interromper a aplicação.
3. **Validações Matemáticas:**
   - **Divisão por zero:** Impede a execução de divisões com divisor igual a `0`.
   - **Raiz Enésima:** Calcula qualquer índice de raiz ($n^{\frac{1}{\text{índice}}}$) com validações contra índice `0` e raízes reais de números negativos.
4. **Formatação de Resposta (`.strip().upper()`):** Sanitiza a confirmação de continuação, convertendo letras minúsculas e ignorando espaços extras.

---

## 🐚 Como Executar o Shell Script (`calculadora.sh`)

Para executar a versão em Shell Script no Linux, macOS ou via Git Bash no Windows:

1. Abra o terminal na pasta do projeto e dê permissão de execução:
   ```bash
   chmod +x calculadora.sh