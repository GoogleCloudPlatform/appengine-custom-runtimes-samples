# Use the base image provided by Google
FROM gcr.io/google_appengine/ruby

# Copy the application files.
COPY . /app/

# Install required gems 
RUN bundle install --deployment --without="development test"

# Set up environment variables used in production
ENV RACK_ENV=production \
    RAILS_ENV=production \
    RAILS_SERVE_STATIC_FILES=true    

CMD ["bundle", "exec", "ruby", "app.rb"]

