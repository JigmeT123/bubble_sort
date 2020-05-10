float arr[];
int i = 0;
int j = 0;

public void setup()
{
   fullScreen();
   arr = new float[width];
   for(int i =0; i < arr.length; i++)
   {
     arr[i] = noise(i/100.0)*height;
   }
   
}

public void draw()
{
background(0);
  
  for(int i =0; i < arr.length; i++)
  {
    line(i, height, i, height - arr[i]);
    stroke(255);
    strokeWeight(4);
  }
  if(i < arr.length){
    for(int j = 0; j < arr.length- i -1; j++)
    {
      float x = arr[j];
      float y = arr[j+1];
      if(x>y){
        swap(arr, j, j+1);
      }
      
    }
  }
}

public void swap(float []arr, int a, int b)
{
  float temp = arr[a];
  arr[a] =arr[b];
  arr[b] = temp;
}
