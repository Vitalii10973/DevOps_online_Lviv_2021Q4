    def validate_param(int):

      for x in range(0, 3):
          try:
             a = int(input("a = : "))
             b = int(input("b = : "))
             c = int(input("c = : "))
         except:
              print("Error, enter a numeric value")
             continue
          break
      return a, b, c


    def discriminant():
    """"""
      a, b, c = validate_param(int)
      d = b ** 2 - 4 * a * c
      print("Discriminant:", d)
      return d, a, b

    def roots():
      d, a, b = discriminant()
      korin = d ** 0.5
      return korin, a, b, d

    def solv_square():
      korin, a, b, d = roots()
      if d > 0:
          x1 = (-b + korin) / (2 * a)
          x2 = (-b - korin) / (2 * a)
          return x1, x2
      elif d == 0:
          x = -b / (2 * a)
          return x
      else:
          x3 = "No roots"
          return x3

    def square_print():
      print(solv_square())

    def main():
      square_print()

    main()
  
unit_test :

    import unittest
    import task

    class MyTestCase(unittest.TestCase):
        def test_something(self):
            self.assertEqual(task.discriminant(1, 26, 120), 196)  # add assertion here
            self.assertEqual(task.discriminant(1, 1, 1, -3))
            self.assertEqual(task.discriminant(1, -6, 9, 0))


    if __name__ == '__main__':
        unittest.main()
