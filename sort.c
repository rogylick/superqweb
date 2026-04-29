void sort(int n , int A[n][n] ){
    // Сортування головної діагоналі методом вставки
    for (int i = 1; i < n; i++) {
        int key = A[i][i];
        int j = i - 1;

        while (j >= 0 && A[j][j] > key) {
            A[j + 1][j + 1] = A[j][j];
            j--;
        }
        A[j + 1][j + 1] = key;
    }
}