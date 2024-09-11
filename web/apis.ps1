# Make a GET request to a public API (OpenWeatherMap API for example)
$response = Invoke-RestMethod -Uri "http://api.openweathermap.org/data/2.5/weather?q=London&appid=YOUR_API_KEY"
# Extract and display the temperature from the response
$response.main.temp

