# Lagrange Interpolation
Lagrange interpolation is one of polynomial interpolation methods.
# How this program works?
Given `data_lagrange.txt` file. This data consist a number of data that can be used to identification an unknown value between these data through interpolation process. For an example, the first column of `data_lagrange.txt` is the X and second column is the Y. We have data of X that are 2, 6, and 8 where the data of Y that are 4, 8, and 12 for each pair data respectively. So, what is the value in Y variabel when X is equal to 3? To solve this problem, We can use lagrange interpolation through this program.

Inside the porgam, You can replace the variable of XU by 3. You then compile the program by using following command:
```
gfortran -c lagrange.f95
gfortran -o lagrange lagrange.o
```
if you use the `gfortran` compiler.

Then, We get the result Y(X=3) = 5.

# Reference
[Julan Hernadi,2012, Matematika Numerik dengan Implementasi Matlab, Penerbit Andi](https://andipublisher.com/produk-1012004497-matematika-numerik-dengan-implementasi-m.html)
