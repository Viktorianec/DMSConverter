-(NSString *)nicePosition{
  
	double latitude = self.mapView.userLocation.coordinate.latitude;
	double longitude = self.mapView.userLocation.coordinate.longitude;
	
	int latSeconds = abs(round(latitude * 3600));
	int latDegrees = latSeconds / 3600;
	latSeconds = latSeconds % 3600;
	int latMinutes = latSeconds / 60;
	latSeconds %= 60;
	
	int longSeconds = abs(round(longitude * 3600));
	int longDegrees = longSeconds / 3600;
	longSeconds = longSeconds % 3600;
	int longMinutes = longSeconds / 60;
	longSeconds %= 60;
	
	char latDirection = (latitude >= 0) ? 'N' : 'S';
	char longDirection = (longitude >= 0) ? 'E' : 'W';
	
	return [NSString stringWithFormat:@"%i° %i' %i\" %c     %i° %i' %i\" %c", latDegrees, latMinutes, latSeconds, latDirection, longDegrees, longMinutes, longSeconds, longDirection];
}
