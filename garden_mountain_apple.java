//1
public class ShapingTheFuture
{
  //2
  public static void main(String args[])
  {
    //3
    System.out.println("Shaping the Future:\nLet's get started!");
    
    //4
    int a = 2;
    int b = 3;
    int c = a + b;
    System.out.println("The answer is " + c);
    
    //5
    int[] numbers = {1,2,3,4,5};
    int total = 0;
    for (int i : numbers)
    {
      total+=i;
    }
    System.out.println("The total of the array is " + total);
    
    //6
    int[][] grid = new int[3][3];
    int num = 0;
    for (int i=0; i<grid.length; i++)
    {
      for (int j=0; j<grid[i].length; j++)
      {
        num++;
        grid[i][j] = num;
      }
    }
    for (int i=0; i<grid.length; i++)
    {
      for (int j=0; j<grid[i].length; j++)
      {
        System.out.print(grid[i][j] + " ");
      }
      System.out.println();
    }
    
    //7
    String[] words = {"Java", "is", "fun"};
    String sentence = "";
    for (String word : words)
    {
      sentence+=word + " ";
    }
    System.out.println("The sentence is: " + sentence);
    
    //8
    int sum = 0;
    int counter = 0;
    while (counter<10)
    {
      counter++;
      sum+= counter;
    }
    System.out.println("The sum of 1 to 10 is " + sum);
    
    //9
    for (int i=1; i<=10; i++)
    {
      System.out.print(i + " ");
      if (i%3==0)
        System.out.print("Fizz");
      if (i%5==0)
        System.out.print("Buzz");
      System.out.println();
    }
    
    //10
    int n = 5;
    for (int i=1; i<=n; i++)
    {
      for (int j=1; j<=i; j++)
      {
        System.out.print("*");
      }
      System.out.println();
    }
    
    //11
    int[] array = {2,4,6,8,10};
    int max = 0;
    for (int i=0; i<array.length; i++)
    {
      if (array[i] > max)
      {
        max = array[i];
      }
    }
    System.out.println("The maximum element in the array is " + max);
    
    //12
    int[] arr = {1,2,3};
    int sum1 = 0;
    for (int i=0; i<arr.length; i++)
    {
      sum1+=arr[i];
    }
    System.out.println("The sum of the elements in the array is " + sum1);
    
    //13
    String[] str = {"I","love","coding"};
    String str1 = "";
    for (String word : str)
    {
      str1 += word + " ";
    }
    System.out.println("The sentence is: " + str1);
    
    //14
    int[][] matrix = new int[2][3];
    int num1 = 0;
    for (int i=0; i<matrix.length; i++)
    {
      for (int j=0; j<matrix[i].length; j++)
      {
        num1++;
        matrix[i][j] = num1;
      }
    }
    for (int i=0; i<matrix.length; i++)
    {
      for (int j=0; j<matrix[i].length; j++)
      {
        System.out.print(matrix[i][j] + " ");
      }
      System.out.println();
    }
    
    //15
    int number = 8;
    int factorial = 1;
    for (int i=number; i>0; i--)
    {
      factorial *= i;
    }
    System.out.println("The factorial of " + number + " is " + factorial);
    
    //16
    for (int i=1; i<=10; i++)
    {
      System.out.print(i + " ");
      if (i%2==0)
        System.out.print("Even");
      if (i%2==1)
        System.out.print("Odd");
      System.out.println();
    }
    
    //17
    int[] arr1 = {1,2,3,4,5};
    int total1 = 1;
    for (int i : arr1)
    {
      total1*=i;
    }
    System.out.println("The product of the elements in the array is " + total1);
    
    //18
    int a1 = 3;
    int b1 = 4;
    int c1 = a1 * b1;
    System.out.println("The product of " + a1 + " and " + b1 + " is " + c1);
    
    //19
    int[][] grid1 = new int[5][5];
    int number1 = 0;
    for (int i=0; i<grid1.length; i++)
    {
      for (int j=0; j<grid1[i].length; j++)
      {
        number1++;
        grid1[i][j] = number1;
      }
    }
    for (int i=0; i<grid1.length; i++)
    {
      for (int j=0; j<grid1[i].length; j++)
      {
        System.out.print(grid1[i][j] + " ");
      }
      System.out.println();
    }
    
    //20
    int n1 = 10;
    for (int i=1; i<=n1; i++)
    {
      for (int j=1; j<=i; j++)
      {
        System.out.print("*");
      }
      System.out.println();
    }
    
    //21
    int[] array1 = {2,4,6,8,10};
    int min = Integer.MAX_VALUE;
    for (int i=0; i<array1.length; i++)
    {
      if (array1[i] < min)
      {
        min = array1[i];
      }
    }
    System.out.println("The minimum element in the array is " + min);
    
    //22
    String[] words1 = {"Coding","is","fun!"};
    String sentence1 = "";
    for (String word : words1)
    {
      sentence1+=word + " ";
    }
    System.out.println("The sentence is: " + sentence1);
    
    //23
    int sum2 = 0;
    int counter1 = 0;
    do
    {
      counter1++;
      sum2+= counter1;
    } while (counter1<10);
    System.out.println("The sum of 1 to 10 is " + sum2);
    
    //24
    for (int i=1; i<=10; i++)
    {
      System.out.print(i + " ");
      if (i%4==0)
        System.out.print("Foo");
      if (i%7==0)
        System.out.print("Bar");
      System.out.println();
    }
    
    //25
    int[][] matrix1 = new int[3][4];
    int num2 = 0;
    for (int i=0; i<matrix1.length; i++)
    {
      for (int j=0; j<matrix1[i].length; j++)
      {
        num2++;
        matrix1[i][j] = num2;
      }
    }
    for (int i=0; i<matrix1.length; i++)
    {
      for (int j=0; j<matrix1[i].length; j++)
      {
        System.out.print(matrix1[i][j] + " ");
      }
      System.out.println();
    }
    
    //26
    int[] arr2 = {1,2,3};
    int sum3 = 0;
    for (int i=0; i<arr2.length; i++)
    {
      sum3+=arr2[i];
    }
    System.out.println("The sum of the elements in the array is " + sum3);
    
    //27
    int number2 = 6;
    int factorial1 = 1;
    for (int i=number2; i>0; i--)
    {
      factorial1 *= i;
    }
    System.out.println("The factorial of " + number2 + " is " + factorial1);
    
    //28
    for (int i=1; i<=10; i++)
    {
      System.out.print(i + " ");
      if (i%3==0)
        System.out.print("Foo");
      if (i%5==0)
        System.out.print("Bar");
      System.out.println();
    }
    
    //29
    int[] arr3 = {1,2,3,4,5};
    int total2 = 0;
    for (int i : arr3)
    {
      total2+=i;
    }
    System.out.println("The total of the elements in the array is " + total2);
    
    //30
    int a2 = 7;
    int b2 = 9;
    int c2 = a2 * b2;
    System.out.println("The product of " + a2 + " and " + b2 + " is " + c2);
    
    //31
    int[][] grid2 = new int[4][4];
    int num3 = 0;
    for (int i=0; i<grid2.length; i++)
    {
      for (int j=0; j<grid2[i].length; j++)
      {
        num3++;
        grid2[i][j] = num3;
      }
    }
    for (int i=0; i<grid2.length; i++)
    {
      for (int j=0; j<grid2[i].length; j++)
      {
        System.out.print(grid2[i][j] + " ");
      }
      System.out.println();
    }
    
    //32
    int n2 = 8;
    for (int i=1; i<=n2; i++)
    {
      for (int j=1; j<=i; j++)
      {
        System.out.print("#");
      }
      System.out.println();
    }
    
    //33
    int[] array2 = {4,6,8,10};
    int max1 = 0;
    for (int i=0; i<array2.length; i++)
    {
      if (array2[i] > max1)
      {
        max1 = array2[i];
      }
    }
    System.out.println("The maximum element in the array is " + max1);
    
    //34
    String[] words2 = {"Java","rocks!"};
    String sentence2 = "";
    for (String word : words2)
    {
      sentence2+=word + " ";
    }
    System.out.println("The sentence is: " + sentence2);
    
    //35
    int sum4 = 0;
    int counter2 = 0;
    while (counter2<10)
    {
      counter2++;
      sum4+= counter2;
    }
    System.out.println("The sum of 1 to 10 is " + sum4);
    
    //36
    for (int i=1; i<=10; i++)
    {
      System.out.print(i + " ");
      if (i%2==0)
        System.out.print("Foo");
      if (i%3==0)
        System.out.print("Bar");
      System.out.println();
    }
    
    //37
    int[] arr4 = {1,2,3,4,5};
    int total3 = 1;
    for (int i : arr4)
    {
      total3*=i;
    }
    System.out.println("The product of the elements in the array is " + total3);
    
    //38
    int a3 = 4;
    int b3 = 6;
    int c3 = a3 + b3;
    System.out.println("The sum of " + a3 + " and " + b3 + " is " + c3);
    
    //39
    int[][] matrix2 = new int[3][3];
    int number4 = 0;
    for (int i=0; i<matrix2.length; i++)
    {
      for (int j=0; j<matrix2[i].length; j++)
      {
        number4++;
        matrix2[i][j] = number4;
      }
    }
    for (int i=0; i<matrix2.length; i++)
    {
      for (int j=0; j<matrix2[i].length; j++)
      {
        System.out.print(matrix2[i][j] + " ");
      }
      System.out.println();
    }
    
    //40
    int[] arr5 = {1,2,3};
    int sum5 = 0;
    for (int i=0; i<arr5.length; i++)
    {
      sum5+=arr5[i];
    }
    System.out.