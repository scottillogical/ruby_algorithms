public class Percolation {
  public Percolation(int N) {              // create N-by-N grid, with all sites blocked
    count = N;
    id = new int[N];
    for (int i = 0; i < N; i++)
      id[i] = i;
  }
  //public void open(int i, int j) {         // open site (row i, column j) if it is not already
  //}
  //public boolean isOpen(int i, int j){    // is site (row i, column j) open?
  //}
  //public boolean isFull(int i, int j){    // is site (row i, column j) full?
  //}
  public void percolates(){    // does the system percolate?
    System.out.println("no, shithead");
  }
  public static void main(String[] args) { 
    System.out.println("Hello, World");
    Percolation p = new Percolation(1);
    p.percolates();
  }
}

