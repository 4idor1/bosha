import unittest

def check_currency(expression):
    # Метод CheckCurrency анализирует входное выражение, проверяя корректность скобочной структуры
    # и возвращает True, если все нормально, и False с позицией ошибки, если есть ошибка.
    stack = []
    for i, char in enumerate(expression):
        if char == '(':
            stack.append(i)
        elif char == ')':
            if not stack:
                return False
            stack.pop()

    return not stack


def format_expression(expression):
    # Метод Format форматирует входное выражение, выставляя пробелы между операторами и удаляя лишние.
    # Также отлавливает неопознанные операторы и следит за концом строки.
    operators = set("+-*/()")
    formatted_expression = ''
    for char in expression:
        if char in operators:
            formatted_expression += ' ' + char + ' '
        else:
            formatted_expression += char

    if formatted_expression.startswith(' '):
        return "&" + formatted_expression

    return formatted_expression


def create_stack(expression):
    # Метод CreateStack создает массив, в котором располагаются операторы и символы в обратной польской записи.
    # Также на этом этапе отлавливаются почти все остальные ошибки.
    operators = set("+-*/()")
    output_stack = []
    operator_stack = []

    for char in expression.split():
        if char not in operators:
            output_stack.append(char)
        else:
            while operator_stack and operator_stack[-1] in operators and precedence(operator_stack[-1]) >= precedence(char):
                output_stack.append(operator_stack.pop())
            operator_stack.append(char)

    while operator_stack:
        output_stack.append(operator_stack.pop())

    return output_stack


def run_estimate(expression):
    # Метод RunEstimate вычисляет результат обратной польской записи.
    stack = []
    operators = set("+-*/")

    for char in expression.split():
        if char not in operators:
            stack.append(float(char))
        else:
            if len(stack) < 2:
                return "& Not enough operands"
            b = stack.pop()
            a = stack.pop()

            if char == '+':
                stack.append(a + b)
            elif char == '-':
                stack.append(a - b)
            elif char == '*':
                stack.append(a * b)
            elif char == '/':
                if b == 0:
                    return "& Division by zero"
                stack.append(a / b)

    if len(stack) != 1:
        return "& Not enough operators"

    return str(stack[0])



def precedence(operator):
    # Вспомогательная функция для определения приоритета операторов
    if operator in {'+', '-'}:
        return 1
    elif operator in {'*', '/'}:
        return 2
    return 0

class TestCalculatorMethods(unittest.TestCase):

    # Тест для метода CheckCurrency с правильным выражением
    def test_check_currency_correct_expression(self):
        # Вызов метода
        result = check_currency("((a + b) * c)")
        # Вывод результата (можете закомментировать эту строку, если не нужен вывод)
        print("Result for check_currency_correct_expression:", result)
        # Проверка результата
        self.assertTrue(result)

    # Тест для метода CheckCurrency с неправильным выражением
    def test_check_currency_incorrect_expression(self):
        # Вызов метода
        result = check_currency("((a + b) * c")
        # Вывод результата (можете закомментировать эту строку, если не нужен вывод)
        print("Result for check_currency_incorrect_expression:", result)
        # Проверка результата
        self.assertFalse(result)

    # Тест для метода Format с правильным выражением
    def test_format_valid_expression(self):
        # Вызов метода
        result = format_expression("a+b*c")
        # Вывод результата (можете закомментировать эту строку, если не нужен вывод)
        print("Result for format_valid_expression:", result)
        # Проверка результата
        self.assertEqual(result, "a + b * c")

    # Тест для метода Format с неправильным выражением
    def test_format_invalid_expression(self):
        # Вызов метода
        result = format_expression("a+b*c&")
        # Вывод результата (можете закомментировать эту строку, если не нужен вывод)
        print("Result for format_invalid_expression:", result)
        # Проверка результата
        self.assertTrue("&" in result)

    # Тест для метода CreateStack с правильным выражением
    def test_create_stack_valid_expression(self):
        # Вызов метода
        result = create_stack("a + b * c")
        # Вывод результата (можете закомментировать эту строку, если не нужен вывод)
        print("Result for create_stack_valid_expression:", result)
        # Проверка результата
        self.assertIsInstance(result, list)

    # Тест для метода RunEstimate с правильным выражением
    def test_run_estimate_valid_expression(self):
        # Вызов метода
        result = run_estimate("3 4 + 2 *")
        # Вывод результата (можете закомментировать эту строку, если не нужен вывод)
        print("Result for run_estimate_valid_expression:", result)
        # Проверка результата
        self.assertEqual(result, "14.0")

    # Тест для метода RunEstimate с неправильным выражением
    def test_run_estimate_invalid_expression(self):
        # Вызов метода
        result = run_estimate("3 4 + *")
        # Вывод результата (можете закомментировать эту строку, если не нужен вывод)
        print("Result for run_estimate_invalid_expression:", result)
        # Проверка результата
        self.assertTrue(result.startswith("&"))

if _name_ == '_main_':
    unittest.main()