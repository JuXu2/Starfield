public class Starfield
{
	public static void main(String[] args)
	{
	    // Create an ArrayList that can hold Star objects
		ArrayList<Star> stars = new ArrayList<Star>();
		
		// Animation loop
		while (true)
		{
			// Create a new star at every time step and add it to the ArrayList
			Star newStar = new Star();
			stars.add(newStar);
			
			// Black background of space
			StdDraw.setPenColor(StdDraw.BLACK);
			StdDraw.filledRectangle(0.5, 0.5, 1.0, 1.0);
			
			// Draw the stars in white
			StdDraw.setPenColor(StdDraw.WHITE);

			// Loop backwards since we may delete stars that
			// have left the drawing window.
			for (int i = stars.size() - 1; i >= 0; i--)
			{
				// Obtain a reference to the Star object at position i
				Star star = stars.get(i);
				
				if (star.gone())
				{
					// This star has left the building, remove it from the ArrayList
					stars.remove(i);
				}
				else
				{				
				    // Star is still onscreen, update position and draw
					star.update();
					star.draw();
				}
			}
			StdDraw.show(40);
		}	
	}
}
