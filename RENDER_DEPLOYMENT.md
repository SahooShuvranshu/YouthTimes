# Youth Times - Render Deployment Configuration

## Environment Variables Required

The following environment variables must be set in your Render dashboard:

### Database
- `DATABASE_URL` - PostgreSQL database URL (automatically provided by Render)

### Security
- `SECRET_KEY` - Flask secret key for sessions (generate a random string)

### Email Configuration (Optional)
- `MAIL_SERVER` - SMTP server (e.g., smtp.gmail.com)
- `MAIL_PORT` - SMTP port (587)
- `MAIL_USERNAME` - Email username
- `MAIL_PASSWORD` - Email password/app password
- `MAIL_USE_TLS` - Set to 'True'

### Weather API (Optional)
- `OPENWEATHER_API_KEY` - OpenWeatherMap API key

### File Upload (Optional)
- `CLOUDINARY_URL` - Cloudinary URL for image uploads

### Production Settings
- `FLASK_ENV` - Set to 'production'

## Deployment Steps

1. **Prepare Your Repository:**
   - Ensure all files are committed to your Git repository
   - Verify requirements.txt contains all dependencies

2. **Create Render Web Service:**
   - Connect your GitHub repository
   - Set build command: `pip install -r requirements.txt`
   - Set start command: `python run.py`
   - Set environment to Python 3

3. **Database Setup:**
   - Create a PostgreSQL database on Render
   - Copy the DATABASE_URL to your web service environment

4. **Environment Variables:**
   - Add all required environment variables in Render dashboard
   - Generate a secure SECRET_KEY

5. **Deploy:**
   - Render will automatically deploy when you push to your main branch

## Post-Deployment

1. **Database Initialization:**
   - The app will automatically create tables on first run
   - Admin user will be created with default credentials

2. **Testing:**
   - Verify all features work correctly
   - Test visitor counting functionality
   - Check weather integration

3. **Security:**
   - Change default admin password
   - Update any hardcoded secrets

## Performance Optimization for Render

- Visitor stats are optimized for database efficiency
- Real-time updates use AJAX to reduce server load
- Images are compressed and cached
- Database queries are optimized for performance
